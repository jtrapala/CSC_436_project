import mysql.connector as mysql
from tkinter import *
import tkinter.font
import os
from test_pure_front import table_actions
import dtb_mysql_backend as db
from PIL import Image, ImageTk

global conn, c


# For button images
pth = os.getcwd()


# Get connection going
conn = db.start_c1()

# Get cursor
c = db.start_c2(conn)

# db.see_donors(c)

# gets called when the quit button is hit on the gui


def destroy():
    db.db_close(conn)
    root.destroy()


def buttonHandler_table(arg1):
    print("Using table: ", arg1)
    if arg1 == "blood_drive":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Drive Window")
    elif arg1 == "blood":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Inventory Window")
    elif arg1 == "b_bank":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Blood Bank Window")
    elif arg1 == "donor":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Donor Window")
    elif arg1 == "recipient":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Recipient Window")
    elif arg1 == "staff":
        sub_win = Toplevel(root)
        table_actions(sub_win, conn, arg1)
        sub_win.title("Staff Window")


def buttonHandler_a(event, argument1):
    print(event)
    buttonHandler_table(argument1)


root = Tk()
root.title("Bloody Mary's Blood Bank")
root.geometry("900x400")


# Formatting Materials
# Underlying (Blood) Frame
blood_frame = Frame(root, bg='dark red', bd=3)
blood_frame.place(relx=0.5, relwidth=1, relheight=1, anchor='n')

# Data Entry Frame
data_entry_frame = Frame(blood_frame, bg='light grey', bd=5)
data_entry_frame.place(x=450, y=200, anchor='center')

# Fonts
bt_font = tkinter.font.Font(
    family='Chiller', size=40, weight=tkinter.font.BOLD)
m_font = tkinter.font.Font(family='Arial', size=12, weight=tkinter.font.BOLD)

# Front text
front_label = Label(blood_frame, bg='dark red',
                    text="Bloody Mary's Blood Bank", font=bt_font)
front_label.place(x=450, y=70, anchor='center')


# Blood Bank Section
im1 = Image.open(pth + '\\button_imgs\\blood_bank.jpg')
im1 = im1.resize((100, 100))
ph1 = ImageTk.PhotoImage(im1)
bb_label = Label(data_entry_frame,
                 text="Blood Bank Table Actions", bg='light grey')
bb_label.grid(row=4, column=1, sticky=S, padx=5)
blood_bank_button = Button(data_entry_frame, text="Blood Bank Table Actions", image=ph1,
                           command=lambda arg1="b_bank": buttonHandler_table("b_bank"))
blood_bank_button.image = ph1
blood_bank_button.bind("<Return>", lambda event,
                       arg1="b_bank": buttonHandler_table(event, arg1))
blood_bank_button.grid(row=3, column=1, sticky=S, padx=5)

# Blood Drive Section
im2 = Image.open(pth + '\\button_imgs\\blood_drive.jpg')
im2 = im2.resize((100, 100))
ph2 = ImageTk.PhotoImage(im2)
bd_label = Label(data_entry_frame,
                 text="Blood Drive Table Actions", bg='light grey')
bd_label.grid(row=4, column=2, sticky=S, padx=5)
blood_drive_button = Button(data_entry_frame, text="Blood Drive Table Actions", image=ph2,
                            command=lambda arg1="blood_drive": buttonHandler_table("blood_drive"))
blood_drive_button.image = ph2
blood_drive_button.bind("<Return>", lambda event,
                        arg1="blood_drive": buttonHandler_a(event, arg1))
blood_drive_button.grid(row=3, column=2, sticky=S, padx=5)

# Donor Section
im3 = Image.open(pth + '\\button_imgs\\donor.jpg')
im3 = im3.resize((100, 100))
ph3 = ImageTk.PhotoImage(im3)
donor_label = Label(
    data_entry_frame, text="Donor Table Actions", bg='light grey')
donor_label.grid(row=4, column=3, sticky=S, padx=5)
donor_button = Button(data_entry_frame, text="Donor Table Actions", image=ph3,
                      command=lambda arg1="donor": buttonHandler_table("donor"))
donor_button.image = ph3
donor_button.bind("<Return>", lambda event,
                  arg1="donor": buttonHandler_a(event, arg1))
donor_button.grid(row=3, column=3, sticky=S, padx=5)

# Recipient Section
im4 = Image.open(pth + '\\button_imgs\\recp.jpg')
im4 = im4.resize((100, 100))
ph4 = ImageTk.PhotoImage(im4)
r_label = Label(data_entry_frame,
                text="Recipient Table Actions", bg='light grey')
r_label.grid(row=4, column=4, sticky=S, padx=5)
recipient_button = Button(data_entry_frame, text="Recipient Table Actions", image=ph4,
                          command=lambda arg1="recipient": buttonHandler_table("recipient"))
recipient_button.image = ph4
recipient_button.bind("<Return>", lambda event,
                      arg1="recipient": buttonHandler_a(event, arg1))
recipient_button.grid(row=3, column=4, sticky=S, padx=5)

# Staff Section
im5 = Image.open(pth + '\\button_imgs\\staff.jpg')
im5 = im5.resize((100, 100))
ph5 = ImageTk.PhotoImage(im5)
s_label = Label(data_entry_frame, text="Staff Table Actions", bg='light grey')
s_label.grid(row=4, column=5, sticky=S, padx=5)
staff_button = Button(data_entry_frame, text="Staff Table Actions", image=ph5,
                      command=lambda arg1="staff": buttonHandler_table("staff"))
staff_button.image = ph5
staff_button.bind("<Return>", lambda event,
                  arg1="staff": buttonHandler_a(event, arg1))
staff_button.grid(row=3, column=5, sticky=W, padx=5)

# Blood Section
im6 = Image.open(pth + '\\button_imgs\\blood_inv.jpg')
im6 = im6.resize((100, 100))
ph6 = ImageTk.PhotoImage(im6)
bi_label = Label(data_entry_frame,
                 text="Blood Inventory Table Actions", bg='light grey')
bi_label.grid(row=4, column=6, sticky=S, padx=5)
blood_inv_button = Button(data_entry_frame, text="Blood Inventory Table Actions", image=ph6,
                          command=lambda arg1="blood": buttonHandler_table("blood"))
blood_inv_button.image = ph6
blood_inv_button.bind("<Return>", lambda event,
                      arg1="blood": buttonHandler_a(event, arg1))
blood_inv_button.grid(row=3, column=6, sticky=S, padx=5)


my_status = Label(root, text="Running", bd=2,
                  relief="sunken", width=56, anchor=E)
my_status.place(relx=0.5, rely=1, relwidth=1, anchor='s')


root.mainloop()
