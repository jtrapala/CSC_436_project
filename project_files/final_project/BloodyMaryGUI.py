import mysql.connector as mysql
from tkinter import *
import tkinter.font
from test_pure_front import records
import dtb_mysql_backend as db

global conn, c

'''BMDB = mysql.connector.connect(
    host="localhost",
    user="root",
    # passwd = "URIallinone2020!",
    # database = "testdb",
    passwd="rexoatie45",
    database="BloodBank",
)'''

new_entry1 = Entry
new_entry2 = Entry


# Get connection going
# conn = lite.connect('pin_dtb.db', timeout=120)
conn = db.start_c1()

# Get cursor
c = db.start_c2(conn)

#db.see_donors(c)

# gets called when the quit button is hit on the gui


def destroy():
    db.db_close(conn)
    root.destroy()


def buttonHandler(arg1):

    # Use enter function
    print("Add entry: ", arg1)
    # print number
    if arg1 == "blood_drive":
        e = add_blood_drive_entry.get()
        print("Entry:",e)
        new_entry1=list(e.split(', '))
        print(len(new_entry1))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry1) != 8:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.bdrive_add(new_entry1, c, conn)
            db.see_bbanks(c)
        # Deletes the number array on an ENTER
        del new_entry1[:]

    if arg1 == "donor":
        e = add_donor_entry.get()
        print("Entry:",e)
        new_entry2=list(e.split(', '))
        #print(new_entry2)
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry2) != 9:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            #db.donor_add(new_entry2, c, conn)
            db.see_donors(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry2[:]
    if arg1 == "recipient":
        e = add_recipient_entry.get()
        print("Entry:",e)
        new_entry3=list(e.split(', '))
        print(len(new_entry3))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry3) != 10:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            #db.donor_add(new_entry2, c, conn)
            db.see_donors(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry2[:]
    if arg1 == "staff":
        e = add_staff_entry.get()
        print("Entry:",e)
        new_entry4=list(e.split(', '))
        print(len(new_entry4))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry4) != 8:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            #db.donor_add(new_entry2, c, conn)
            db.see_donors(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry2[:]
    

def buttonHandler_a(event, argument1):
    print(event)
    buttonHandler(argument1)
    # adminSubmit(argument1)

# on change dropdown value


def change_dropdown(*args):
    print(variable.get())


root = Tk()
root.title("Bloody Mary's Blood Bank")
root.geometry("900x900")



# Formating Materials
# Underlying (Blood) Frame
blood_frame = Frame(root, bg='dark red', bd=3)
blood_frame.place(relx=0.5, relwidth=1, relheight=1, anchor='n')

# Data Entry Frame
data_entry_frame = Frame(blood_frame, bg='light grey', bd=5)
data_entry_frame.place(relx=0.5, rely=0.04, relwidth=0.75,
                       relheight=0.3, anchor='n')

'''
# Data Display Frame and Label
data_display_frame = Frame(blood_frame, bg='light grey', bd=5)
data_display_frame.place(
    relx=0.5, rely=0.48, relwidth=0.9, relheight=0.45, anchor='n')

data_display_label = Label(
    data_display_frame)
data_display_label.place(relwidth=1, relheight=1)


# Display Label Function
def format_data_display():
    try:
        # Use data minipulation function calls to display through label

        data = 'Something. The more I think about this the more complicated it gets.'
        # My thoughts are converging on to this function to display
        # the data we are asking for via the queries we are putting through
        # I'm having a hard time getting this to work with out the back end
        # being connected so lets revisit this once it is connected.

    except:
        data = 'There was a problem retrieving that information'

    return data

'''
# Data Manipulation Functions
def fake_command():
    pass


def INSERT_ONE():
    pass


def INSERT_MANY():
    pass


def CREATE_TABLE():
    pass


def UPDATE_TABLE():
    pass


def VIEW_AS_ADMIN():
    pass

# Data Manipulation Formatting
# Blood Bank Section


bt_font = tkinter.font.Font(family='Arial', size=16, weight=tkinter.font.BOLD)
m_font = tkinter.font.Font(family='Arial', size=12, weight=tkinter.font.BOLD)
# Blood Drive Section
add_blood_drive_entry = Entry(data_entry_frame, width=40, font=("Times", 16))
add_blood_drive_entry.grid(row=1, column=1, padx=20, pady=10)

add_blood_drive_button = Button(data_entry_frame, text="Add Blood Drive",command=lambda arg1="blood_drive": buttonHandler("blood_drive"))
add_blood_drive_button.bind("<Return>", lambda event,
                            arg1="blood_drive": buttonHandler_a(event, arg1))
add_blood_drive_button.grid(row=1, column=2, sticky=W)

# Donor Section
add_donor_entry = Entry(data_entry_frame, width=40, font=("Times", 16))
add_donor_entry.grid(row=2, column=1, padx=20, pady=10)

add_donor_button = Button(data_entry_frame, text="Add Donor",
                          command=lambda arg1="donor": buttonHandler("donor"))
add_donor_button.bind("<Return>", lambda event,
                      arg1="donor": buttonHandler_a(event, arg1))
add_donor_button.grid(row=2, column=2, sticky=W)

# Recipient Section
add_recipient_entry = Entry(data_entry_frame, width=40, font=("Times", 16))

add_recipient_entry.grid(row=3, column=1, padx=20, pady=10)

add_recipient_button = Button(data_entry_frame, text="Add Recipient",command=lambda arg1="recipient": buttonHandler("recipient"))
add_recipient_button.bind("<Return>", lambda event,
                          arg1="recipient": buttonHandler_a(event, arg1))
add_recipient_button.grid(row=3, column=2, sticky=W)

# Staff Section
add_staff_entry = Entry(data_entry_frame, width=40, font=("Times", 16))
add_staff_entry.grid(row=4, column=1, padx=20, pady=10)

add_staff_button = Button(data_entry_frame, text="Add Staff",command=lambda arg1="staff": buttonHandler("staff"))
add_staff_button.bind("<Return>", lambda event,
                      arg1="staff": buttonHandler_a(event, arg1))
add_staff_button.grid(row=4, column=2, sticky=W)


# Blood Section


# Menu
blood_menu = Menu(root)
root.config(menu=blood_menu)

file_menu = Menu(blood_menu)
blood_menu.add_cascade(label="File", menu=file_menu)
file_menu.add_command(label="New", command=fake_command)
file_menu.add_separator()
file_menu.add_command(label="Exit", command=root.quit)

tables_menu = Menu(blood_menu)
blood_menu.add_cascade(label="Tables", menu=tables_menu)
# work out this command
tables_menu.add_command(label="Blood Banks", command=fake_command)
tables_menu.add_command(label="Blood Drives",
                        command=fake_command)  # and this one
tables_menu.add_command(
    label="Donors", command=fake_command)  # oh and this one
tables_menu.add_command(label="Recipients", command=fake_command)
tables_menu.add_command(label="Staff", command=fake_command)

# Status Bar
# current_status = StringVar()
# current_status.set("Waiting")

my_status = Label(root, text="Running", bd=2,
                  relief="sunken", width=56, anchor=E)
my_status.place(relx=0.5, rely=1, relwidth=1, anchor='s')

quitButton = tkinter.Button(root, text="QUIT", font=m_font,
                            bg="orange red", command=destroy)
quitButton.grid(row=7, column=0)

root.mainloop()
