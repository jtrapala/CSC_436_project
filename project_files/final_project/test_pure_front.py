# for gui
import tkinter
import tkinter.font
from tkinter import *
from tkinter.ttk import *
import mysql.connector as mysql
# from
import dtb_mysql_backend as db
#import PINCode_1 as fdraft

global users, number, code, nm, sql_name, conn, c


class records():
    #class created to see records that have been previously inputted#
    def __init__(self, master, conn):
        self.master = master
        self.master.geometry('900x900')
        self.master.title('Records')
        self.connection = conn
        self.cur = self.connection.cursor()
        self.dateLabel = Label(self.master, text="DonorID", width=10)
        self.dateLabel.grid(row=1000, column=0)
        self.BMILabel = Label(self.master, text="Donor Name", width=10)
        self.BMILabel.grid(row=1000, column=1)
        self.stateLabel = Label(self.master, text="Address", width=10)
        self.stateLabel.grid(row=1000, column=2)
        self.stateLabel2 = Label(self.master, text="Phone", width=10)
        self.stateLabel2.grid(row=1000, column=3)
        self.stateLabel3 = Label(self.master, text="Medical Condition", width=10)
        self.stateLabel3.grid(row=1000, column=4)
        self.stateLabel4 = Label(self.master, text="Gender", width=10)
        self.stateLabel4.grid(row=1000, column=5)
        self.stateLabel5 = Label(self.master, text="DoB", width=10)
        self.stateLabel5.grid(row=1000, column=6)
        self.stateLabel6 = Label(self.master, text="Blood Type", width=10)
        self.stateLabel6.grid(row=1000, column=7)
        self.stateLabel7 = Label(self.master, text="Bank ID", width=10)
        self.stateLabel7.grid(row=1000, column=8)
        self.showallrecords()

    def showallrecords(self):
        data = self.readfromdatabase()
        for index, dat in enumerate(data):
            Label(self.master, text=dat[0]).grid(row=index+1, column=0)
            Label(self.master, text=dat[1]).grid(row=index+1, column=1)
            Label(self.master, text=dat[2]).grid(row=index+1, column=2)
            Label(self.master, text=dat[3]).grid(row=index+1, column=3)
            Label(self.master, text=dat[4]).grid(row=index+1, column=4)
            Label(self.master, text=dat[5]).grid(row=index+1, column=5)
            Label(self.master, text=dat[6]).grid(row=index+1, column=6)
            Label(self.master, text=dat[7]).grid(row=index+1, column=7)
            Label(self.master, text=dat[8]).grid(row=index+1, column=8)


def readfromdatabase(self):
    self.cur.execute("SELECT * FROM donor")
    return self.cur.fetchall()
