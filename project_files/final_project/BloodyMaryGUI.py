import mysql.connector
from tkinter import *

BMDB = mysql.connector.connect(
	host = "localhost",
	user = "root",
	#passwd = "URIallinone2020!",
	#database = "testdb",
	#passwd = "rexoatie45",
	#database = "BloodBank",
	)

root = Tk()
root.title("Bloody Mary's Blood Bank")
root.geometry("900x900")


#Formating Materials
#Underlying (Blood) Frame
blood_frame = Frame(root, bg='dark red', bd=3)
blood_frame.place(relx=0.5, relwidth=1, relheight=1, anchor='n')

#Data Entry Frame
data_entry_frame = Frame(blood_frame, bg='light grey', bd=5)
data_entry_frame.place(relx=0.5, rely=0.04, relwidth=0.75, relheight=0.4, anchor='n')


#Data Display Frame and Label
data_display_frame = Frame(blood_frame, bg='light grey', bd=5)
data_display_frame.place(relx=0.5, rely=0.48, relwidth=0.9, relheight=0.45, anchor='n')

data_display_label = Label(data_display_frame, text="Work In Progress. Will display data requested from queries!")
data_display_label.place(relwidth=1, relheight=1)


#Display Label Function
def format_data_display():
	try:
		#Use data minipulation function calls to display through label

		data = 'Something. The more I think about this the more complicated it gets.'
		#My thoughts are converging on to this function to display
		# the data we are asking for via the queries we are putting through
		# I'm having a hard time getting this to work with out the back end
		# being connected so lets revisit this once it is connected.

	except:
		data = 'There was a problem retrieving that information'

	return data


#Data Manipulation Functions
def fake_command():
	pass

def INSERT_ONE():
	pass


def INSERT_MANY():
	pass


def CREATE_TABLE():
	pass


def UPDATE_TABLE():
	pass


def VIEW_AS_ADMIN():
	pass



#Data Manipulation Formatting
#Blood Bank Section



#Blood Drive Section
add_blood_drive_entry = Entry(data_entry_frame, width=40, font=("Times",16))
add_blood_drive_entry.grid(row=1,column=1, padx=20, pady=10)

add_blood_drive_button = Button(data_entry_frame, text="Add Blood Drive")
add_blood_drive_button.grid(row=1,column=2, sticky=W)



#Donor Section
add_donor_entry = Entry(data_entry_frame, width=40, font=("Times",16))
add_donor_entry.grid(row=2,column=1, padx=20, pady=10)

add_donor_button = Button(data_entry_frame, text="Add Donor")
add_donor_button.grid(row=2,column=2, sticky=W)



#Recipient Section
add_recipient_entry = Entry(data_entry_frame, width=40, font=("Times",16))
add_recipient_entry.grid(row=3,column=1, padx=20, pady=10)

add_recipient_button = Button(data_entry_frame, text="Add Recipient")
add_recipient_button.grid(row=3,column=2, sticky=W)



#Staff Section
add_staff_entry = Entry(data_entry_frame, width=40, font=("Times",16))
add_staff_entry.grid(row=4,column=1, padx=20, pady=10)

add_staff_button = Button(data_entry_frame, text="Add Staff")
add_staff_button.grid(row=4,column=2, sticky=W)




#Blood Section





#Menu
blood_menu = Menu(root)
root.config(menu=blood_menu)

file_menu = Menu(blood_menu)
blood_menu.add_cascade(label="File", menu=file_menu)
file_menu.add_command(label="New",command=fake_command)
file_menu.add_separator()
file_menu.add_command(label="Exit", command=root.quit)

tables_menu = Menu(blood_menu)
blood_menu.add_cascade(label="Tables", menu=tables_menu)
tables_menu.add_command(label="Blood Banks", command=fake_command) #work out this command
tables_menu.add_command(label="Blood Drives", command=fake_command) #and this one
tables_menu.add_command(label="Donors", command=fake_command) #oh and this one
tables_menu.add_command(label="Recipients", command=fake_command)
tables_menu.add_command(label="Staff", command=fake_command)

#Status Bar
#current_status = StringVar()
#current_status.set("Waiting")

my_status = Label(root, text="Running", bd=2, relief="sunken", width=56, anchor=E)
my_status.place(relx=0.5, rely=1, relwidth=1, anchor='s')


root.mainloop()