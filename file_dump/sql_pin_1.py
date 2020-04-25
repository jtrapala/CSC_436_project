

'''This is a test for using sqLite 3 with PINCode
It creates a database for donors, recipients, staff, blood types, and ...
'''
import flask
import sqlite3 as lite
import datetime
import os
# from sqlite3 import Error
from os.path import join, dirname, realpath


global conn, c


def start_c1():
    conn = lite.connect('pin_dtb.db')
    return conn


def start_c2(conn):
    c = conn.cursor()
    return c
# Creates admin table


def adt(c):

    # get the count of tables with the name
    c.execute(
        ''' SELECT count(name) FROM sqlite_master WHERE type='table' AND name='admins' ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""
		    create table admins(
			user,
			pw);""")
        }


# Creates user/pin/time table


def upt(c):

    c.execute(
        ''' SELECT count(name) FROM sqlite_master WHERE type='table' AND name='users_pin' ''')
    if c.fetchone()[0] == 0:
        {
            c.execute("""create table users_pin(
			userN,
			userPin,
			time);""")
        }


def adm_add(nm, users, c, conn):

    u = (nm, users[nm])
    c.execute('insert into admins values (?,?)', u)
    conn.commit()


def unk_pin(c, code, conn):
    unk = 'unknown'
    time = str(datetime.datetime.now())
    u = (unk, code, time)
    print(u)
    c.execute('insert into users_pin values (?,?,?)', u)
    conn.commit()


def kn_pin(c, users, nm, conn):
    time = datetime.datetime.now()
    u = (nm, users[nm], time)
    c.execute('insert into users_pin values (?,?,?)', u)
    conn.commit()


def db_upr(c):
    # from PINCode_1 import conn,c
    # Print USERS
    print("---------------USERS------------------------")
    for row in c.execute('SELECT * FROM admins'):
        print(row)
    print("\n")


def db_ppr(c):
    # from PINCode_1 import conn,c
    # Print PIN_ENTRIES
    print("---------------PIN_ENTRIES------------------")
    for row in c.execute('SELECT * FROM users_pin ORDER BY userN'):
        print(row)


def db_close(conn):
    # from PINCode_1 import conn,c
    conn.close
    print("\nPIN Database is now closed")
    print("\n#####################################\n")


def dtb_del(conn, c):
    print("Database clearing")
    for row in c.execute('delete from users_pin '):
        print("Deleting row...")


'''	
UPLOADS_PATH = join(dirname(realpath(__file__)), 'C:/Users/aamim/Documents/GitHub/ele_408_final_project/templates')
app = Flask(__name__, template_folder=UPLOADS_PATH)


@app.route('/')
def web_p():
   con = lite.connect("pin_dtb.db")
   con.row_factory = lite.Row
   
   cur = con.cursor()
   cur.execute("SELECT * FROM users_pin ORDER BY time")
   
   rows = cur.fetchall();
   return render_template('templates\records.html',rows = rows)

if __name__ == '__main__':
   app.run(debug=True)



'''
