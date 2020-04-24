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
        # e = blood_drive_entry.get()
        # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Drive Window")
    elif arg1 == "blood_inv":
        # e = blood_drive_entry.get()
        # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Drive Window")
    elif arg1 == "blood_bank":
            # e = blood_drive_entry.get()
            # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Bank Window")
    elif arg1 == "donor":
        # e = donor_entry.get()
        # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Donor Window")
    elif arg1 == "recipient":
        # e = recipient_entry.get()
        # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Recipient Window")
    elif arg1 == "staff":
        # e = staff_entry.get()
        # print("Entry:", e)
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Staff Window")


def buttonHandler_a(event, argument1):
    print(event)
    buttonHandler_table(argument1)

# Stores the entered username and hashed password in a dictionary in
# another window, clears on submit


def fake_command():
    pass


root = Tk()
root.title("Bloody Mary's Blood Bank")
root.geometry("900x400")


# Formatting Materials
# Underlying (Blood) Frame
blood_frame = Frame(root, bg='dark red', bd=3)
blood_frame.place(relx=0.5, relwidth=1, relheight=1, anchor='n')

# Data Entry Frame
# data_entry_frame = Frame(blood_frame, bg='light grey', bd=5)
# data_entry_frame.place(relx=0.5, rely=0.04, relwidth=0.75,
#                      relheight=0.40, anchor='n')


# Fonts
bt_font = tkinter.font.Font(family='Arial', size=16, weight=tkinter.font.BOLD)
m_font = tkinter.font.Font(family='Arial', size=12, weight=tkinter.font.BOLD)


# Blood Bank Section
# blood_bank_entry = Entry(blood_frame, width=40, font=bt_font)
# blood_bank_entry.grid(row=1, column=1, padx=20, pady=10)
im1 = Image.open(pth + '\\button_imgs\\blood_bank.jpg')
im1 = im1.resize((100, 100))
ph1 = ImageTk.PhotoImage(im1)
blood_bank_button = Button(blood_frame, text="Blood Bank Table Actions", image=ph1,
                           command=lambda arg1="blood_bank": buttonHandler_table("blood_bank"))
blood_bank_button.image = ph1
blood_bank_button.bind("<Return>", lambda event,
                       arg1="blood_bank": buttonHandler_table(event, arg1))
blood_bank_button.grid(row=3, column=1, sticky=S)
# Blood Drive Section
# blood_drive_entry = Entry(blood_frame, width=40, font=bt_font)
# blood_drive_entry.grid(row=2, column=1, padx=20, pady=10)
im2 = Image.open(pth + '\\button_imgs\\blood_drive.jpg')
im2 = im2.resize((100, 100))
ph2 = ImageTk.PhotoImage(im2)
blood_drive_button = Button(blood_frame, text="Blood Drive Table Actions", image=ph2,
                            command=lambda arg1="blood_drive": buttonHandler_table("blood_drive"))
blood_drive_button.image = ph2
blood_drive_button.bind("<Return>", lambda event,
                        arg1="blood_drive": buttonHandler_a(event, arg1))
blood_drive_button.grid(row=3, column=2, sticky=S)

# Donor Section
# donor_entry = Entry(blood_frame, width=40, font=bt_font)
# donor_entry.grid(row=3, column=1, padx=20, pady=10)
im3 = Image.open(pth + '\\button_imgs\\donor.jpg')
im3 = im3.resize((100, 100))
ph3 = ImageTk.PhotoImage(im3)
donor_button = Button(blood_frame, text="Donor Table Actions", image=ph3,
                      command=lambda arg1="donor": buttonHandler_table("donor"))
donor_button.image = ph3
donor_button.bind("<Return>", lambda event,
                  arg1="donor": buttonHandler_a(event, arg1))
donor_button.grid(row=3, column=3, sticky=S)

# Recipient Section
# recipient_entry = Entry(blood_frame, width=40, font=bt_font)
# recipient_entry.grid(row=4, column=1, padx=20, pady=10)
im4 = Image.open(pth + '\\button_imgs\\recp.jpg')
im4 = im4.resize((100, 100))
ph4 = ImageTk.PhotoImage(im4)
recipient_button = Button(blood_frame, text="Recipient Table Actions", image=ph4,
                          command=lambda arg1="recipient": buttonHandler_table("recipient"))
recipient_button.image = ph4
recipient_button.bind("<Return>", lambda event,
                      arg1="recipient": buttonHandler_a(event, arg1))
recipient_button.grid(row=3, column=4, sticky=S)

# Staff Section
# staff_entry = Entry(blood_frame, width=40, font=bt_font)
# staff_entry.grid(row=5, column=1, padx=20, pady=10)
im5 = Image.open(pth + '\\button_imgs\\staff.jpg')
im5 = im5.resize((100, 100))
ph5 = ImageTk.PhotoImage(im5)
staff_button = Button(blood_frame, text="Staff Table Actions", image=ph5,
                      command=lambda arg1="staff": buttonHandler_table("staff"))
staff_button.image = ph5
staff_button.bind("<Return>", lambda event,
                  arg1="staff": buttonHandler_a(event, arg1))
staff_button.grid(row=3, column=5, sticky=W)
# Blood Section
# blood_inv_entry = Entry(blood_frame, width=40, font=bt_font)
# blood_inv_entry.grid(row=6, column=1, padx=20, pady=10)
im6 = Image.open(pth + '\\button_imgs\\blood_inv.jpg')
im6 = im6.resize((100, 100))
ph6 = ImageTk.PhotoImage(im6)
blood_inv_button = Button(blood_frame, text="Blood Inventory Table Actions", image=ph6,
                          command=lambda arg1="blood_inv": buttonHandler_table("blood_inv"))
blood_inv_button.image = ph6
blood_inv_button.bind("<Return>", lambda event,
                      arg1="blood_inv": buttonHandler_a(event, arg1))
blood_inv_button.grid(row=3, column=6, sticky=S)


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

# quitButton = tkinter.Button(root, text="QUIT", font=m_font,
#                           bg = "orange red", command = destroy)
# quitButton.grid(row=7, column=20)


root.mainloop()
