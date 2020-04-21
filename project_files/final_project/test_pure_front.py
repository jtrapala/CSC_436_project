# for gui
import tkinter
import tkinter.font
from tkinter import *
from tkinter.ttk import *
import mysql.connection as mysql
# from
import dtb_mysql_backend as db
import PINCode_1 as fdraft

global users, number, code, nm, sql_name, conn, c


class records():
    #class created to see records that have been previously inputted#
    def __init__(self, master):
        self.master = master
        self.master.geometry('250x200+100+200')
        self.master.title('Records')
        self.connection = mysql.connect('bloodbank.db')
        self.cur = self.connection.cursor()
        self.dateLabel = Label(self.master, text="Date", width=10)
        self.dateLabel.grid(row=0, column=0)
        self.BMILabel = Label(self.master, text="BMI", width=10)
        self.BMILabel.grid(row=0, column=1)
        self.stateLabel = Label(self.master, text="Status", width=10)
        self.stateLabel.grid(row=0, column=2)
        self.showallrecords()

    def showallrecords(self):
        data = self.readfromdatabase()
        for index, dat in enumerate(data):
            Label(self.master, text=dat[0]).grid(row=index+1, column=0)
            Label(self.master, text=dat[1]).grid(row=index+1, column=1)
            Label(self.master, text=dat[2]).grid(row=index+1, column=2)


def readfromdatabase(self, table_from):
    self.cur.execute("SELECT * FROM %s", table_from)
    return self.cur.fetchall()
