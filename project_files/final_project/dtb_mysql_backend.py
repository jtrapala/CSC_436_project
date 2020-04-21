

'''This is a test for using sqLite 3 with PINCode
It creates a database for donors, recipients, staff, blood types, and ...
'''
# import flask
# import sqlite3 as lite
import mysql.connector as mysql
import datetime
# import os
# from sqlite3 import Error
# from os.path import join, dirname, realpath


global conn, c


def start_c1():
    conn = mysql.connect(host="localhost",
                         user="root",
                         passwd="rexoatie45",
                         database="BloodBank")
    return conn


def start_c2(conn):
    c = conn.cursor()
    return c
# Creates admin table


def get_bloodbanks(c):

    # get the count of tables with the name
    c.execute(
        '''SHOW TABLES LIKE 'b_bank'; ''')
    result = c.fetchone()
    if result == 0:
        {
            c.execute("""
		    CREATE TABLE b_bank (
  bb_ID int(9) NOT NULL primary key,
  bb_name varchar(25) NOT NULL,
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone varchar(14),
  admin_Name varchar(25),
  unique(bb_ID)
);""")
        }


def get_blood_drives(c):
    # get the count of tables with the name
    c.execute(
        ''' SHOW TABLES LIKE 'blood_drive'; ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""
		    CREATE TABLE blood_drive (
  bdrive_ID int(9) NOT NULL primary key,
  bd_name varchar(25) NOT NULL,
  Address varchar(20),
  City varchar(20),
  State varchar(15),
  Phone varchar(14),
  bd_desc varchar(40),
  bank_ID int(9),
  unique(bdrive_ID),
  foreign Key (bank_id)
	references b_bank(bb_ID)
    	on update cascade on delete cascade
);""")
        }


def get_blood_inv(c):
    # get the count of tables with the name
    c.execute(
        ''' SHOW TABLES LIKE 'blood'; ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""
		    CREATE TABLE Blood (
  Bloodbag_number char(6) NOT NULL primary key,
  blood_type char(6),
  Blood_Amount char(6),
  Haemoglobin_Content char(6),
  Double_Red char(6),
  donor_ID int(9),
  unique(Bloodbag_number),
  foreign key (donor_ID)
	references donor(Donor_ID)
    	on update cascade on delete cascade
);""")
        }


def get_staff(c):
    c.execute(
        '''SHOW TABLES LIKE 'staff'; ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""	CREATE TABLE staff (
     Staff_ID int(9) NOT NULL primary key,
    sname varchar(25) NOT NULL,
     Address varchar(20),
    Phone varchar(14),
  Shift varchar(20),
  Gender char(10),
  DOB varchar(10),
  Bank_ID int(9),
  unique(Staff_ID),
  foreign Key (Bank_ID)
	references blood_bank(bb_ID)
    	on update cascade on delete cascade
);""")
        }


def get_donors(c):

    c.execute(
        '''SHOW TABLES LIKE 'donor'; ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""CREATE TABLE donor (
  Donor_ID int(9) NOT NULL primary key,
  dname varchar(25) NOT NULL,
  Address varchar(20),
  Phone_Number varchar(14),
  Medical_Condition varchar(50),
  Gender char(10),
  DOB varchar(10),
  Blood_Type char(6),
  Bank_ID int(9),
  unique(Donor_ID),
  foreign key (Bank_ID)
	references blood_bank(bb_ID)
	on update cascade on delete cascade
);""")
        }


def get_recps(c):

    c.execute(
        '''SHOW TABLES LIKE 'recipient'; ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""CREATE TABLE recipient (
  recip_ID int(9) NOT NULL primary key,
  rname varchar(25) NOT NULL,
  Address varchar(20),
  Phone_Number varchar(14),
  Medical_Condition varchar(50),
  Gender char(10),
  DOB varchar(10),
  Urgency_Status int(1),
  Blood_Type char(6),
  donor_ID int(9),
  unique(recip_ID),
  foreign key (donor_ID)
	references donor(Donor_ID)
    	on update cascade on delete cascade 
);""")
        }


# def populate_dtb(c):


def donor_add(nm, users, c, conn):
    u = (nm, users[nm])
    c.execute('insert into donor values (?,?)', u)
    conn.commit()


def unk_pin(c, code, conn):
    unk = 'unknown'
    time = str(datetime.datetime.now())
    u = (unk, code, time)
    print(u)
    c.execute('insert into users_pin values (?,?,?)', u)
    conn.commit()


def see_bbanks(c):
    # from PINCode_1 import conn,c
    # Print USERS
    print("---------------BLOOD BANKS------------------------")
    for row in c.execute('SELECT * FROM b_bank'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")
	
def see_drives(c):
	# from PINCode_1 import conn,c
    # Print USERS
    print("---------------BLOOD DRIVES------------------------")
    for row in c.execute('SELECT * FROM blood_drive'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")


def see_inv(c):

    print("---------------BLOOD INVENTORY------------------------")
    for row in c.execute('SELECT * FROM blood'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")

def see_staff(c):

    print("---------------STAFF------------------------")
    for row in c.execute('SELECT * FROM staff'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")


def see_donors(c):

    print("---------------DONORS------------------------")
    for row in c.execute('SELECT * FROM donor'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")


def see_recps(c):

    print("---------------RECIPIENTS------------------------")
    for row in c.execute('SELECT * FROM recipients'):
        result = c.fetchone()
        if result:
            print(row)
        else:
            continue
    print("\n")


def db_close(conn):
    # from PINCode_1 import conn,c
    conn.close
    print("\nBlood Bank database is now closed")
    print("\n#####################################\n")


def dtb_del(conn, c):
    print("Blood bank database clearing")
    for row in c.execute('delete from bloodbank '):
        print("Deleting row...")
