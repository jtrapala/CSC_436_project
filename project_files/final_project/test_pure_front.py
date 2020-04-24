# for gui
import tkinter
import tkinter.font
from tkinter import *
from tkinter.ttk import *
import mysql.connector as mysql
# from
import dtb_mysql_backend as db
# import PINCode_1 as fdraft

global conn, c


class table_actions():
    #class created to see records that have been previously inputted#
    def __init__(self, master, conn, table_name):
        self.master = master
        self.master.geometry('1200x400')
        #self.master.title(table_name+' table actions')
        self.table_name = table_name
        self.connection = conn
        self.font = tkinter.font.Font(
            family='Arial', size=8, weight=tkinter.font.NORMAL)
        self.cur = self.connection.cursor()
        self.create_entries()
        self.show_attribs()
        self.showallrecords()
        self.create_action_buttons()

    def get_q1(self):
        if (self.table_name == "blood_drive"):
            return "DESCRIBE blood_drive;"
        elif (self.table_name == "blood_bank"):
            return "DESCRIBE b_bank;"
        elif (self.table_name == "blood_inv"):
            return "DESCRIBE blood;"
        elif (self.table_name == "donor"):
            return "DESCRIBE donor;"
        elif (self.table_name == "recipient"):
            return "DESCRIBE recipient;"
        elif (self.table_name == "staff"):
            return "DESCRIBE staff;"

    def get_q2(self):
        if (self.table_name == "blood_drive"):
            return "SELECT * FROM blood_drive;"
        elif (self.table_name == "blood_bank"):
            return "SELECT * FROM b_bank;"
        elif (self.table_name == "blood_inv"):
            return "SELECT * FROM blood;"
        elif (self.table_name == "donor"):
            return "SELECT * FROM donor;"
        elif (self.table_name == "recipient"):
            return "SELECT * FROM recipient;"
        elif (self.table_name == "staff"):
            return "SELECT * FROM staff;"

    def create_action_buttons(self):
        # ADD button
        add_bt = Button(self.master, text="ADD",
                        command=lambda arg1="ADD": self.table_Submit("ADD"))
        add_bt.bind("<Return>", lambda event,
                    arg1="ADD": self.buttonHandler_b(event, arg1))
        add_bt.grid(row=2, column=20)
        # Update Button

        # View Table button
        view_all = Button(self.master, text="View Table",
                          command=lambda arg1="view": self.table_Submit("view"))
        view_all.bind("<Return>", lambda event,
                      arg1="view": self.buttonHandler_b(event, arg1))
        view_all.grid(row=4, column=20)

    def create_entries(self):
        q1 = self.get_q1()
        self.cur.execute(q1)
        attr = list(self.cur.fetchall())
        # print(attr[0][0])
        for i in range(len(attr)):
            Entry(self.master, width=20).grid(row=10+i, column=20)

    def show_attribs(self):
        q1 = self.get_q1()
        self.cur.execute(q1)
        attr = list(self.cur.fetchall())
        # print(attr[0][0])
        for i in range(len(attr)):
            Label(self.master, text=attr[i][0], font=self.font, width=15,
                  anchor='w', justify=RIGHT).grid(row=0, column=i)

    def showallrecords(self):
        q1 = self.get_q1()
        q2 = self.get_q2()
        self.cur.execute(q1)
        attr = list(self.cur.fetchall())
        self.cur.execute(q2)
        dat = list(self.cur.fetchall())
        # print(dat)
        for i in range(len(attr)):
            for index in range(len(dat)):
                Label(self.master, text=dat[index][i], font=self.font, width=20, anchor='w', justify=RIGHT).grid(
                    row=index + 1, column=i)

    def table_Submit(self, arg1):
        if arg1 == "view":
            print("Viewing table")
            self.showallrecords()

    def buttonHandler_b(self, event, argument1):
        # print event
        self.table_Submit(argument1)
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
