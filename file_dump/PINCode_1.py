#############################################################
#		   BLOOD BANK SYSTEM			    #
#		 GRAPHICAL USER INTERFACE		    #
#  AND FUNCTIONAL BLOOD BANK OPERATIONS	    #
#							    #
#	     BY: Jane Trapala	    #
#############################################################

# for gui
import tkinter
import tkinter.font
from tkinter import *
from tkinter.ttk import *
# For hashing pass codes
import hashlib
#import sqlite3 as lite
# from
import sql_pin_1 as sp

global users, number, code, nm, sql_name, conn, c

# Get connection going
#conn = lite.connect('pin_dtb.db', timeout=120)
conn = sp.start_c1()

# Get cursor
c = sp.start_c2(conn)

# Blank number array for code
number = []

# Blank dictionary for users/pass
users = {}
pas = '1234'
nm = 'admin'
users[nm] = pas
e1 = Entry
e2 = Entry


# KNOWN PINS
#sp.kn_pin(c, code, conn)


print("PIN Database is now open for use\n")

sp.adt(c)
sp.upt(c)
#sp.adm_add(nm, users, c, conn)

# Print admin table
sp.db_upr(c)
# Print pin entry table
sp.db_ppr(c)


# gets called when the quit button is hit on the gui
def destroy():
    sp.db_close(conn)
    master.destroy()


# Joins the integer array into a singular string
def joinNums(list):
    s = [str(i) for i in list]
    code = str("".join(s))
    print(code)
    return(code)

# Handles button actions such as a number press and the enter function


def buttonHandler(arg1):
    if arg1 is "ENTER":
        # Use enter function
        print("Pin Command: ", arg1)
        # print number

        # Checks if the number length is <4, if it is, tell the user
        if len(number) is not 4:
            print("Incorrect Password Size")
            del number[:]
        else:
            # Gets the code from the number array
            code = joinNums(number)
            # print code
            # Hashes the code to check w/ the hashed stored password
            hashCode = hashlib.md5(code).hexdigest()
            # print hashCode
            check = 0
            for i in range(4):
                # Checks if the hash matches the stored hash
                if hashCode in users.values():
                    # Sets a check to 1 if the hashes matched
                    check = 1
                    # Finds associated name

                else:
                    # print users['Greg']
                    # Otherwise, set the check to zero
                    check = 0
                # Prints the number array in a text box above the numpad
                text.insert(END, number[i])

            # If the check passes then it is correct
            if check == 1:
                print("Correct")

            # If it doesn't, then it is obviously incorrect
            else:
                print("Incorrect")
                #
                sp.unk_pin(c, code, conn)

                # Add pin entry to record database

        # Deletes the number array on an ENTER
        del number[:]

    # If the key pressed isnt ENTER,
    # then it will append the number to the end of the number array
    else:
        number.append(arg1)
        print("Received argument:", arg1)

    # If the button pressed is CLEAR then clear the array and text
    if arg1 == "CLEAR":
        text.delete('1.0', END)
        del number[:]

    # If the settings button is pressed, then have username
    # and password prompt appear

    if arg1 == "SET":
        u_pw = Toplevel(master)
        u_pw.title("Admin Settings Login Window")
        Label(u_pw, text="Username").grid(row=0, column=1)
        Label(u_pw, text="Password").grid(row=1, column=1)
        e1 = Entry(u_pw)
        e2 = Entry(u_pw)
        e1.grid(row=0, column=3, rowspan=1)
        e2.grid(row=1, column=3, rowspan=1)
    # User/Pass Submit
        u_bt = Button(u_pw, text="SUBMIT",
                      command=lambda arg1="SUBMIT": adminSubmit("SUBMIT"))
        u_bt.bind("<Return>", lambda event,
                  arg1="SUBMIT": buttonHandler_b(event, arg1))
        u_bt.grid(row=2, column=1)

        def buttonHandler_b(event, argument1):
            # print event
            adminSubmit(argument1)

# Stores the entered username and hashed password in a dictionary in
# another window, clears on submit
        def adminSubmit(arg1):
            if arg1 is "SUBMIT":
                user = e1.get()
                pas = e2.get()
                users[user] = hashlib.md5(pas).hexdigest()
                print(users)
                sp.dtb_del(conn, c)
                print("Database cleared")

                del number[:]
            u_pw.destroy()  # Exit the admin window


# Handles the button click event and argument passed
def buttonHandler_a(event, argument1):
    print(event)
    buttonHandler(argument1)
    # adminSubmit(argument1)

# on change dropdown value
def change_dropdown(*args):
    print( variable.get() )
# sp.web_p()


master = tkinter.Tk()
style=tkinter.ttk.Style()
style.configure("BW.TLabel", foreground="black", background="white")
master.title("Enter the 4 digit PIN")
variable = tkinter.StringVar(master)
variable.set("Donor")
# Dropdown
person={'Donor','Recipient'}
popupMenu = tkinter.ttk.OptionMenu(master,variable, *person)
popupMenu.grid(row = 2, column =15)


# link function to change dropdown
variable.trace('w', change_dropdown)

#########    Fonts for buttons    ##########
bt_font = tkinter.font.Font(family='Arial', size=16, weight=tkinter.font.BOLD)
m_font = tkinter.font.Font(family='Arial', size=12, weight=tkinter.font.BOLD)
# SO MANY BUTTONS    ###########################################First Row
button = tkinter.Button(master, text="1", font=bt_font,
                command=lambda arg1="1": buttonHandler(1))
button.bind("<Return>", lambda event, arg1="1": buttonHandler_a(event, arg1))
button.grid(row=2, column=0)

button2 = tkinter.Button(master, text="2", font=bt_font,
                 command=lambda arg1="2": buttonHandler(2))
button2.bind("<Return>", lambda event, arg1="2": buttonHandler_a(event, arg1))
button2.grid(row=2, column=1)

button3 = tkinter.Button(master, text="3", font=bt_font,
                 command=lambda arg1="3": buttonHandler(3))
button3.bind("<Return>", lambda event, arg1="3": buttonHandler_a(event, arg1))
button3.grid(row=2, column=2)


# Function Keys
button9 = tkinter.Button(master, text="Add", font=m_font, bg="green",
                 command=lambda arg1="ENTER": buttonHandler("ENTER"))
button9.bind("<Return>", lambda event,
             arg1="ENTER": buttonHandler_a(event, arg1))
button9.grid(row=5, column=0, columnspan=3)

button10 = tkinter.Button(master, text="Delete", font=m_font, bg="gold",
                  command=lambda arg1="CLEAR": buttonHandler("CLEAR"))
button10.bind("<Return>", lambda event,
              arg1="CLEAR": buttonHandler_a(event, arg1))
button10.grid(row=6, column=0, columnspan=3)

quitButton = tkinter.Button(master, text="QUIT", font=m_font,
                    bg="orange red", command=destroy)
quitButton.grid(row=7, column=0, columnspan=3)

##################################################For accessing settings###
s_button = tkinter.Button(master, text="Staff Login",
                  command=lambda arg1="ADMIN": buttonHandler("SET"))
s_button.bind("<Return>", lambda event,
              arg1="ADMIN": buttonHandler_a(event, arg1))
s_button.grid(row=8, column=0, columnspan=3, pady=15)

# For displaying PIN in the window
text = tkinter.Text(master, height=2, width=12)
text.grid(row=1, column=0, columnspan=3)

tkinter.mainloop()
