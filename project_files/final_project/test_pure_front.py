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
        self.cur = self.connection.cursor()
        self.show_attribs()
        self.showallrecords()

    def show_attribs(self):
        print(self.table_name)
        self.cur.execute('''DESCRIBE blood_drive;''')
        attr = list(self.cur.fetchall())
        print(attr[0][0])
        for i in range(len(attr)):
            Label(self.master, text=attr[i][0], width=20,
                  anchor='s').grid(row=0, column=i)

    def showallrecords(self):
        self.cur.execute('''DESCRIBE blood_drive;''')
        attr = list(self.cur.fetchall())
        self.cur.execute("SELECT * FROM blood_drive;")
        dat = list(self.cur.fetchall())
        print(dat)
        for i in range(len(attr)):
            for index in range(len(dat)):
                Label(self.master, text=dat[index][i], width=20).grid(
                    row=index+1, column=i)
