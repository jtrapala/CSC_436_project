import mysql.connector as mysql
from tkinter import *
import tkinter.font
import os
from test_pure_front import table_actions
import dtb_mysql_backend as db
from PIL import Image, ImageTk

global conn, c

'''BMDB = mysql.connector.connect(
    host="localhost",
    user="root",
    # passwd = "URIallinone2020!",
    # database = "testdb",
    passwd="rexoatie45",
    database="BloodBank",
)'''

pth = os.getcwd()

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

# db.see_donors(c)

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


def buttonHandler_table(arg1):

    # Use enter function
    print("Add entry: ", arg1)
    # print number
    if arg1 == "blood_drive":
        e = blood_drive_entry.get()
        print("Entry:", e)
        u_pw = Toplevel(root)
        table_actions(u_pw, conn, 'blood_drive')
        u_pw.title("Blood Drive Window")

    # User/Pass Submit
        u_bt = Button(u_pw, text="ADD",
                      command=lambda arg1="SUBMIT": adminSubmit("SUBMIT"))
        u_bt.bind("<Return>", lambda event,
                  arg1="SUBMIT": buttonHandler_b(event, arg1))
        u_bt.grid(row=2, column=20)

        '''new_entry1=list(e.split(', '))
        # print(len(new_entry1))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry1) != 8:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.bdrive_add(new_entry1, c, conn)
            db.see_bbanks(c)
        # Deletes the number array on an ENTER
        del new_entry1[:]
'''
    if arg1 == "donor":
        e = donor_entry.get()
        print("Entry:", e)
        '''new_entry2 = list(e.split(', '))
        # print(new_entry2)
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry2) != 9:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.donor_add(new_entry2, c, conn)
            db.see_donors(c)
            # records(root,conn)
        # Deletes the number array on an ENTER
          del new_entry2[:]'''
    if arg1 == "recipient":
        e = recipient_entry.get()
        print("Entry:", e)
        ''' new_entry3 = list(e.split(', '))
        print(len(new_entry3))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry3) != 10:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.recp_add(new_entry3, c, conn)
            db.see_recps(c)
            # records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry3[:]'''
    if arg1 == "staff":
        e = staff_entry.get()
        print("Entry:", e)
        '''new_entry4 = list(e.split(', '))
        print(len(new_entry4))
        # Checks if the number length is <4, if it is, tell the user
        if len(new_entry4) != 8:
            print("Incorrect attribute size")
        else:
            # Add pin entry to record database
            db.staff_add(new_entry4, c, conn)
            db.see_staff(c)
            # records(root,conn)
        # Deletes the number array on an ENTER
            del new_entry4[:]'''
    if arg1 == "view":
        print("Viewing all tables")
        db.see_bbanks(c)
        db.see_inv(c)
        text.insert(db.see_donors(c))
        db.see_recps(c)
        db.see_staff(c)


def buttonHandler_a(event, argument1):
    print(event)
    buttonHandler_table(argument1)

# Stores the entered username and hashed password in a dictionary in
# another window, clears on submit


def adminSubmit(arg1):
    if arg1 is "SUBMIT":
        print("Database cleared")


def buttonHandler_b(event, argument1):
   # print event
    adminSubmit(argument1)


def fake_command():
    pass


root = Tk()
root.title("Bloody Mary's Blood Bank")
root.geometry("900x900")


# Formatting Materials
# Underlying (Blood) Frame
blood_frame = Frame(root, bg='dark red', bd=3)
blood_frame.place(relx=0.5, relwidth=1, relheight=1, anchor='n')

# Data Entry Frame
data_entry_frame = Frame(blood_frame, bg='light grey', bd=5)
data_entry_frame.place(relx=0.5, rely=0.04, relwidth=0.75,
                       relheight=0.40, anchor='n')


# Fonts
bt_font = tkinter.font.Font(family='Arial', size=16, weight=tkinter.font.BOLD)
m_font = tkinter.font.Font(family='Arial', size=12, weight=tkinter.font.BOLD)


# Blood Bank Section
blood_bank_entry = Entry(data_entry_frame, width=40, font=bt_font)
blood_bank_entry.grid(row=1, column=1, padx=20, pady=10)

blood_bank_button = Button(data_entry_frame, text="Blood Bank Table Actions", image=ImageTk.PhotoImage(pth+'\\button_imgs\\blood_bank.jpg'),
                           command=lambda arg1="blood_bank": buttonHandler_table("blood_bank"))
blood_bank_button.bind("<Return>", lambda event,
                       arg1="blood_bank": buttonHandler_a(event, arg1))
blood_bank_button.grid(row=1, column=2, sticky=W)
# Blood Drive Section
blood_drive_entry = Entry(data_entry_frame, width=40, font=bt_font)
blood_drive_entry.grid(row=2, column=1, padx=20, pady=10)

blood_drive_button = Button(data_entry_frame, text="Blood Drive Table Actions", image=pth+'\\button_imgs\\blood_drive.jpg',
                            command=lambda arg1="blood_drive": buttonHandler_table("blood_drive"))
blood_drive_button.bind("<Return>", lambda event,
                        arg1="blood_drive": buttonHandler_a(event, arg1))
blood_drive_button.grid(row=2, column=2, sticky=W)

# Donor Section
donor_entry = Entry(data_entry_frame, width=40, font=bt_font)
donor_entry.grid(row=3, column=1, padx=20, pady=10)

donor_button = Button(data_entry_frame, text="Donor Table Actions", image=pth+'\\button_imgs\\donor.jpg',
                      command=lambda arg1="donor": buttonHandler_table("donor"))
donor_button.bind("<Return>", lambda event,
                  arg1="donor": buttonHandler_a(event, arg1))
donor_button.grid(row=3, column=2, sticky=W)

# Recipient Section
recipient_entry = Entry(data_entry_frame, width=40, font=bt_font)

recipient_entry.grid(row=4, column=1, padx=20, pady=10)

recipient_button = Button(data_entry_frame, text="Recipient Table Actions", image=pth+'\\button_imgs\\recp.jpg',
                          command=lambda arg1="recipient": buttonHandler_table("recipient"))
recipient_button.bind("<Return>", lambda event,
                      arg1="recipient": buttonHandler_a(event, arg1))
recipient_button.grid(row=4, column=2, sticky=W)

# Staff Section
staff_entry = Entry(data_entry_frame, width=40, font=bt_font)
staff_entry.grid(row=5, column=1, padx=20, pady=10)

staff_button = Button(data_entry_frame, text="Staff Table Actions", image=pth+'\\button_imgs\\staff.jpg',
                      command=lambda arg1="staff": buttonHandler_table("staff"))
staff_button.bind("<Return>", lambda event,
                  arg1="staff": buttonHandler_a(event, arg1))
staff_button.grid(row=5, column=2, sticky=W)
# Blood Section
blood_inv_entry = Entry(data_entry_frame, width=40, font=bt_font)
blood_inv_entry.grid(row=6, column=1, padx=20, pady=10)

blood_inv_button = Button(data_entry_frame, text="Blood Inventory Table Actions", image=pth+'\\button_imgs\\blood_inv.jpg',
                          command=lambda arg1="blood_inv": buttonHandler_table("blood_inv"))
blood_inv_button.bind("<Return>", lambda event,
                      arg1="blood_inv": buttonHandler_a(event, arg1))
blood_inv_button.grid(row=6, column=2, sticky=W)

# View All Tables button
view_all = Button(data_entry_frame, text="View Tables",
                  command=lambda arg1="view": buttonHandler_table("view"))
view_all.bind("<Return>", lambda event,
              arg1="view": buttonHandler_a(event, arg1))
view_all.grid(row=7, column=4)


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
tables_menu.add_command(label="Blood Drives",
                        command=open_bdrives_window)  # and this one
tables_menu.add_command(
    label="Donors", command=open_donor_window)  # oh and this one
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
