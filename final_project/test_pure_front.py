# for gui
# import tkinter
import tkinter.font
from tkinter import *
import tkinter.ttk
# from tkinter.ttk import *
import mysql.connector as mysql
from scroll import ScrollFrame
import dtb_mysql_backend as db
# import PINCode_1 as fdraft


class table_actions():
    #class created to see records that have been previously inputted#
    def __init__(self, master, conn, table_name):
        self.master = master
        self.master.geometry('1200x400')
        # self.master.title(table_name+' table actions')
        self.table_name = table_name
        self.connection = conn
        # self.frame1 = Frame(self.master, bg='dark grey', bd=3)
        # self.frame1.place(relx=0.5, relwidth=1, relheight=1, anchor='n')
        self.s = ScrollFrame(self.master)
        self.frame2 = Frame(self.master, bg='light grey', bd=3)
        self.frame2.place(relx=1, relwidth=0.5, relheight=1, anchor='n')
        self.font1 = tkinter.font.Font(
            family='Arial', size=7, weight=tkinter.font.NORMAL)
        self.font2 = tkinter.font.Font(
            family='Arial', size=8, weight=tkinter.font.BOLD)
        self.cur = self.connection.cursor()
        self.attrib_names = self.get_attrib_names()
        self.entries = []
        self.create_entries()
        self.show_attribs()
        self.showallrecords()
        self.create_action_buttons()

    def get_table_name(self):
        if (self.table_name == "blood_drive"):
            return 'blood_drive'
        elif (self.table_name == "b_bank"):
            return 'b_bank'
        elif (self.table_name == "blood"):
            return 'blood'
        elif (self.table_name == "donor"):
            return 'donor'
        elif (self.table_name == "recipient"):
            return 'recipient'
        elif (self.table_name == "staff"):
            return 'staff'

    # DELETE

    def get_q3(self):
        if (self.table_name == "blood_drive"):
            return "DELETE FROM blood_drive WHERE bdrive_ID = %s;"
        elif (self.table_name == "b_bank"):
            return "DELETE FROM b_bank WHERE bb_ID = %s;"
        elif (self.table_name == "blood"):
            return "DELETE FROM blood WHERE Bloodbag_number = %s;"
        elif (self.table_name == "donor"):
            return "DELETE FROM donor WHERE Donor_ID = %s;"
        elif (self.table_name == "recipient"):
            return "DELETE FROM recipient WHERE recip_ID = %s;"
        elif (self.table_name == "staff"):
            return "DELETE FROM staff WHERE Staff_ID = %s;"

    # INSERT
    def get_q4(self):
        if (self.table_name == "blood_drive"):
            return "INSERT INTO blood_drive (bdrive_ID, bd_name, Address, City, State, Phone, bd_desc, bank_id)VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"
        elif (self.table_name == "b_bank"):
            return "INSERT INTO b_bank(bb_ID, bb_name, Address, City, State, Phone, admin_name)VALUES (%s,%s,%s,%s,%s,%s,%s)"
        elif (self.table_name == "blood"):
            return "INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)VALUES ( % s, % s, % s, % s, % s, % s, % s, % s, % s)"
        elif (self.table_name == "donor"):
            return "INSERT INTO donor(Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        elif (self.table_name == "recipient"):
            return "INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        elif (self.table_name == "staff"):
            return "INSERT INTO staff(Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)VALUES (%s,%s,%s,%s,%s,%s,%s,%s)"

    # UPDATE
    def get_q5(self):
        if (self.table_name == "blood_drive"):
            return "UPDATE blood_drive SET {} = %s WHERE bdrive_ID=%s;"
        elif (self.table_name == "b_bank"):
            return "UPDATE b_bank SET {} = %s WHERE bb_ID=%s"
        elif (self.table_name == "blood"):
            return "UPDATE Blood SET {} = %s WHERE Bloodbag_number=%s;"
        elif (self.table_name == "donor"):
            return "UPDATE donor SET {} = %s WHERE Donor_ID=%s;"
        elif (self.table_name == "recipient"):
            return "UPDATE recipient {} %s = %s WHERE recip_ID=%s;"
        elif (self.table_name == "staff"):
            return "UPDATE staff SET {} = %s WHERE Staff_ID=%s;"

    def create_action_buttons(self):
        # ADD button
        add_bt = Button(self.frame2, text="ADD",
                        command=lambda arg1="ADD": self.table_Submit("ADD"))
        add_bt.bind("<Return>", lambda event,
                    arg1="ADD": self.buttonHandler_b(event, arg1))
        add_bt.grid(row=4, column=40)
        # Update Button
        up_bt = Button(self.frame2, text="UPDATE",
                       command=lambda arg1="UPDATE": self.table_Submit("UPDATE"))
        up_bt.bind("<Return>", lambda event,
                   arg1="UPDATE": self.buttonHandler_b(event, arg1))
        up_bt.grid(row=5, column=40)
        # Delete Button
        d_bt = Button(self.frame2, text="DELETE",
                      command=lambda arg1="DELETE": self.table_Submit("DELETE"))
        d_bt.bind("<Return>", lambda event,
                  arg1="DELETE": self.buttonHandler_b(event, arg1))
        d_bt.grid(row=6, column=40)
        # View Table button
        view_all = Button(self.frame2, text="Refresh Table",
                          command=lambda arg1="view": self.table_Submit("view"))
        view_all.bind("<Return>", lambda event,
                      arg1="view": self.buttonHandler_b(event, arg1))
        view_all.grid(row=7, column=40)

    def create_entries(self):
        self.cur.execute("DESCRIBE {}".format(self.table_name))
        attr = list(self.cur.fetchall())
        # print(attr[0][0])
        for i in range(len(attr)):
            Label(self.frame2, text=attr[i][0], bg='light grey', font=self.font2).grid(
                row=5 + i, column=27)
            self.entries.append(Entry(self.frame2, width=20))
            self.entries[i].grid(row=5 + i, column=30)
            self.entries[i].bind()

    def get_attrib_names(self):
        attrib_names = []
        self.cur.execute("DESCRIBE {}".format(self.table_name))
        attr = list(self.cur.fetchall())
        for x in range(len(attr)):
            attrib_names.append(attr[x][0])
        return attrib_names

    def show_attribs(self):
        self.cur.execute("DESCRIBE {}".format(self.table_name))
        attr = list(self.cur.fetchall())
        # print(attr[0][0])
        for i in range(len(attr)):
            Label(self.s.viewPort, text=attr[i][0], bg='dark grey', font=self.font2, width=15,
                  anchor='w', justify=RIGHT).grid(row=0, column=i)
        self.s.pack(side="top", fill="both", expand=True)

    def showallrecords(self):
        self.cur.execute("DESCRIBE {}".format(self.table_name))
        attr = list(self.cur.fetchall())
        self.cur.execute("SELECT * FROM {}".format(self.table_name))
        dat = list(self.cur.fetchall())
        # print(dat)
        for i in range(len(attr)):
            for index in range(len(dat)):
                Label(self.s.viewPort, text=dat[index][i], bg='white',
                      font=self.font1, width=20, anchor='w', justify=RIGHT).grid(row=index + 1, column=i, pady=2)
        self.s.pack(side="top", fill="both", expand=True)

    def add_recs(self):
        e = []
        for i in range(len(self.entries)):
            # print(self.entries[i].get())
            e.append(self.entries[i].get())
        # print(e)
        if (e[0] == ''):
            Label(self.frame2, text="No Primary Key", fg='red', bg='light grey', font=self.font2).grid(
                row=13, column=27)
            print("No primary key")
        if ('' in e):
            Label(self.frame2, text="Need to fill in all attributes", fg='red', bg='light grey', font=self.font2).grid(
                row=13, column=27)
        else:
            q = self.get_q4()
            val = tuple(e)
            self.cur.execute(q, val)
            self.connection.commit()

    def del_recs(self):
        e = []
        for i in range(len(self.entries)):
            # print(self.entries[i].get())
            e.append(self.entries[i].get())
        # print(e)
        if (e[0] == ''):
            Label(self.frame2, text="No Primary Key", fg='red', bg='light grey', font=self.font2).grid(
                row=13, column=27)
            print("No primary key")
        else:
            q = self.get_q3()
            print(q)
            val = tuple(e[0])
            self.cur.execute(q, val)
            self.connection.commit()

    def update_recs(self):
        e = []
        for i in range(len(self.entries)):
            # print(self.entries[i].get())
            e.append(self.entries[i].get())
        # print(e)
        if (e[0] == ''):
            Label(self.frame2, text="No Primary Key", fg='red', bg='light grey', font=self.font2).grid(
                row=13, column=27)
            print("No primary key")
        else:
            pair = {self.attrib_names[i]: e[i]
                    for i in range(len(self.attrib_names))}
            # print(pair)
            ext = {key: value for key, value in pair.items()
                   if value != ''}
            ext2 = list(ext.keys())
            # print(ext2)
            ext3 = list(ext.values())
            # print(ext3)
            if (len(ext2) > 2):
                Label(self.frame2, text="Can only update 1 attribute at a time", fg='red', bg='light grey', font=self.font2).grid(
                    row=13, column=27)
            else:
                q = self.get_q5()
                p = [ext3[1], ext3[0]]
                val = tuple(p)
                # print(val)
                self.cur.execute(q.format(ext2[1]), val)
                self.connection.commit()

    def table_Submit(self, arg1):
        if arg1 == "view":
            print("Viewing table")
            self.showallrecords()
        elif arg1 == "UPDATE":
            print("Updating table")
            self.update_recs()
        elif arg1 == "ADD":
            print("Inserting into table")
            self.add_recs()
        elif arg1 == "DELETE":
            self.del_recs()

    def buttonHandler_b(self, event, argument1):
        # print event
        self.table_Submit(argument1)
