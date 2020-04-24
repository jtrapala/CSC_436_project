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
new_entry3 = Entry
new_entry4 = Entry
new_entry5 = Entry
new_entry6 = Entry


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

def open_blood_window():
    blood_window = Toplevel()
    blood_window.mainloop()


def open_bbanks_window():
    bbank_window = Toplevel()
    bbank_window.mainloop()

def open_bdrives_window():
    bdrive_window = Toplevel()
    bdrive_window.mainloop()


def open_donor_window():
    donor_window = Toplevel()
    donor_window.mainloop()


def open_recps_window():
    recipients_window = Toplevel()
    recipients_window.mainloop()


def open_staff_window():
    staff_window = Toplevel()
    staff_window.mainloop()


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
            db.donor_add(new_entry2, c, conn)
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
            db.recp_add(new_entry3, c, conn)
            db.see_recps(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry3[:]


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
            db.staff_add(new_entry4, c, conn)
            db.see_staff(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry4[:]



    if arg1 == "blood":
        e = add_blood_entry.get()
        print("Entry:",e)
        new_entry5=list(e.split(', '))
        print(len(new_entry5))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry5) != 6:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.staff_add(new_entry5, c, conn)
            db.see_staff(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry5[:]


    if arg1 == "bbank":
        e = add_bbank_entry.get()
        print("Entry:",e)
        new_entry6=list(e.split(', '))
        print(len(new_entry6))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry6) != 7:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.staff_add(new_entry6, c, conn)
            db.see_staff(c)
            #records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry6[:]



    if arg1 == "view":
        print("Viewing all tables")
        db.see_bbanks(c)
        db.see_inv(c)
        text.insert(db.see_donors(c))
        db.see_recps(c)
        db.see_staff(c)


 #   if arg1 == "update":

    if arg1 == "delete":
        db.del_donor(c)


    

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
                       relheight=0.40, anchor='n')


# Data Display Frame and Label
data_display_frame = Frame(blood_frame, bg='light grey', bd=5)
data_display_frame.place(
    relx=0.5, rely=0.48, relwidth=0.9, relheight=0.45, anchor='n')

textbox = Text(data_display_frame)
textbox.place(relheight=1, relwidth=1)


# Data Manipulation Functions
def fake_command():
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


add_blood_entry = Entry(data_entry_frame, width=40, font=("Times", 16))
add_blood_entry.grid(row=5, column=1, padx=20, pady=10)

add_blood_button = Button(data_entry_frame, text="Add Blood Info.",command=lambda arg1="blood": buttonHandler("blood"))
add_blood_button.bind("<Return>", lambda event,
                      arg1="blood": buttonHandler_a(event, arg1))
add_blood_button.grid(row=5, column=2, sticky=W)


add_bbank_entry = Entry(data_entry_frame, width=40, font=("Times", 16))
add_bbank_entry.grid(row=6, column=1, padx=20, pady=10)

add_bbank_button = Button(data_entry_frame, text="Add Blood Bank",command=lambda arg1="bbank": buttonHandler("bbank"))
add_bbank_button.bind("<Return>", lambda event,
                      arg1="bbank": buttonHandler_a(event, arg1))
add_bbank_button.grid(row=6, column=2, sticky=W)






#Function Buttons
#add_button


update_table = Button(data_entry_frame, text = "Update", command=lambda arg1="update": buttonHandler("update"))
update_table.bind("<Return>", lambda event, arg1="update": buttonHandler_a(event,arg1))
update_table.grid(row=8, column=1)


add_view_all = Button(data_entry_frame, text="View Tables",command=lambda arg1="view": buttonHandler("view"))
add_view_all.bind("<Return>", lambda event,
                      arg1="view": buttonHandler_a(event, arg1))
add_view_all.grid(row=8, column=3)


delete_button = Button(data_entry_frame, text="Delete", command=lambda arg1="delete": buttonHandler("delete"))
delete_button.bind("<Return>", lambda event, arg1="delete": buttonHandler_a(event,arg1))
delete_button.grid(row=8,column=2)


# Blood Section


# Menu
blood_menu = Menu(root)
root.config(menu=blood_menu)

file_menu = Menu(blood_menu)
blood_menu.add_cascade(label="File", menu=file_menu)
file_menu.add_separator()
file_menu.add_command(label="Exit", command=root.quit)

tables_menu = Menu(blood_menu)
blood_menu.add_cascade(label="Tables", menu=tables_menu)
# work out this command
tables_menu.add_command(label="Blood", command=open_blood_window)
tables_menu.add_command(label="Blood Banks", command=open_bbanks_window)
tables_menu.add_command(label="Blood Drives",command=open_bdrives_window)  # and this one
tables_menu.add_command(label="Donors", command=open_donor_window)  # oh and this one
tables_menu.add_command(label="Recipients", command=open_recps_window)
tables_menu.add_command(label="Staff", command=open_staff_window)

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
