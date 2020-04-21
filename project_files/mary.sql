CREATE DATABASE BloodBank;
USE BloodBank;

CREATE TABLE b_bank (
  bb_ID int(9) NOT NULL primary key,
  bb_name varchar(25) NOT NULL,
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone varchar(14),
  admin_Name varchar(25),
  unique(bb_ID)
);

CREATE TABLE blood_drive (
  bdrive_ID int(9) NOT NULL primary key,
  bd_name varchar(25) NOT NULL,
  Address varchar(20),
  City varchar(20),
  State varchar(15),
  Phone varchar(14),
  bank_ID int(9),
  unique(bdrive_ID),
  foreign Key (bank_id)
	references b_bank(bb_ID)
    	on update cascade on delete cascade
);

CREATE TABLE staff (
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
	references b_bank(bb_ID)
    	on update cascade on delete cascade
);

CREATE TABLE donor (
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
	references b_bank(bb_ID)
	on update cascade on delete cascade
);

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
);

CREATE TABLE recipient (
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
);


INSERT INTO b_bank (bb_ID, bb_name, address, city, state, phone, admin_name)
VALUES ( 100001, 'RIC Blood Bank', '11 Sohier Rd', 'Wakefield', 'RI', '401-572-9128', 'Amy Volchire');

INSERT INTO b_bank (bb_ID, bb_name, address, city, state, phone, admin_name)
VALUES ( 100002, 'URI Blood Bank', '4 Ocean Blvd', 'Kingston', 'RI', '401-572-8891', 'Sam Crocher');

INSERT INTO b_bank (bb_ID, bb_name, address, city, state, phone, admin_name)
VALUES ( 100003, 'CCC Blood Bank', '213 Benchmark St', 'Westchester', 'CT', '421-774-0081', 'Jonesy West');

INSERT INTO b_bank (bb_ID, bb_name, address, city, state, phone, admin_name)
VALUES ( 100004, 'Reds Blood Bank', '100 Darling St', 'Crowsville', 'NY', '515-819-1741', 'Pam Locus');

INSERT INTO b_bank (bb_ID, bb_name, address, city, state, phone, admin_name)
VALUES ( 100005, 'Cooperstown Blood Bank', '77 Leapord Rd', 'Cooperstown', 'VT', '912-902-1142', 'Harper Smith');

INSERT INTO blood_drive (bdrive_ID, bd_name, address, city, state, phone, Description, bank_id)
VALUES ( 10, 'GetSome Blood', '14 Redrover Ln', 'Johnson', 'CT', '421-774-0082', 'Getting Peoples Blood', 100003);

INSERT INTO blood_drive (bdrive_ID, bd_name, address, city, state, phone, Description, bank_id)
VALUES ( 11, 'GetMore Blood', '7 Loop St', 'Johnson', 'CT', '421-774-0082', 'Getting More of Peoples Blood', 100003);

INSERT INTO blood_drive (bdrive_ID, bd_name, address, city, state, phone, Description, bank_id)
VALUES ( 12, 'Sucking Blood', '119 Taylor Ln', 'Cranston', 'RI', '401-572-9129', 'The more blood the better', 100001);

INSERT INTO blood_drive (bdrive_ID, bd_name, address, city, state, phone, Description, bank_id)
VALUES ( 13, 'URI Blood Drive', '50 Uppercollege Rd', 'Kingston', 'RI', '401-572-8892', 'College Kids Blood', 100002);

INSERT INTO staff (Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143140, 'Susan Crocker', NULL, '172-132-1121', 'Night', 'F', '11/09/77', 100005);

INSERT INTO staff (Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143141, 'Tammy Shrook', NULL, '172-132-8171', 'Night', 'F', '10/20/81', 100005);

INSERT INTO staff (Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143142, 'Craig Rem', NULL, '172-132-7622', 'Morning', 'M', '04/11/80', 100005);

INSERT INTO staff (Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143143, 'Ralph Copey', NULL, '917-991-5563', 'Morning', 'M', '02/08/96', 100003);

INSERT INTO staff (Staff_ID, sname, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143144, 'Betty Jones', NULL, '701-334-6684', 'Night', 'F', '12/27/84', 100001);

INSERT INTO Donor (Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178211, 'James Judy', NULL, '231-919-4447', NULL, 'M', '12/02/61', 'A+', 100003);

INSERT INTO Donor (Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178212, 'Lucy Smallz', NULL, '231-866-1717', NULL, 'F', '06/17/70', 'AB-', 100003);

INSERT INTO Donor (Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178213, 'Jep Potter', NULL, '333-7182-9007', NULL, 'M', '08/21/76', 'O-', 100003);

INSERT INTO Donor (Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178214, 'Casey Prince', NULL, '901-4321-1615', NULL, 'F', '10/31/94','A+', 100002);

INSERT INTO Donor (Donor_ID, dname, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178215, 'Jim Shrump', NULL, '110-2226-7818', NULL, 'M', '03/10/99', 'B-', 100001);

INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)
VALUES (1, 'A+', '470 mL', '15', 'No', 178211);

INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)
VALUES (2, 'AB-', '470 mL', '12.7', 'No', 178212);

INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)
VALUES (3, 'O-', '470 mL', '15.5', 'No', 178213);

INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)
VALUES (4, 'A+', '470 mL', '13.4', 'Yes', 178214);

INSERT INTO Blood (Bloodbag_number, blood_type, Blood_Amount, Haemoglobin_Content, Double_Red, donor_ID)
VALUES (5, 'B-', '470 mL', '17.1', 'Yes', 178215);

INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (100, 'Jasper Wisk', NULL, '966-451-7831', 'Liver Disease', 'M', '11/08/66', 5, 'AB-', 178212);

INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (101, 'Nick Mop', NULL, '966-917-1653', 'Lung Disease', 'M', '07/18/45', 6, 'A+', 178211);

INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (102, 'Sally Sampson', NULL, '111-902-3356', 'Corona Virus', 'F', '03/04/55', 9, 'O-', 178213);

INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (103, 'Christopher Markus', NULL, '818-445-9088', 'Unkown Disease', 'M', '12/10/82', 10, 'A+', 178214);

INSERT INTO recipient (recip_ID, rname, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (104, 'Lance Jockerson', NULL, '912-556-8819', 'Ringworm', 'M', '06/20/85', 3, 'B-', 178215);

Select *
From b_bank; 

Select *
From Blood_Drive; 

Select *
From Staff; 

Select *
From Donor; 

Select *
From Blood;

Select *
From Recipient;  

Select name 
from recipient
where Urgency_status > 5;

Create View BBB as  
Select bb_id, bb_name
from b_bank
where bb_id >= 100002;

Select *
From BBB;

Update staff
Set Phone = '955-712-4163'
Where Staff_Id = 143141;

Update recipient
Set Medical_Condition = NULL
Where Medical_Condition = 'Corona Virus';

Select * 
From Donor Natural Join Blood;

Delete from b_bank where bb_ID = 100005;

Select Staff.Staff_ID, b_bank.bb_id
From Staff
LEFT OUTER JOIN b_bank
ON staff.Bank_ID = b_bank.bb_id;

Select Recipient.rname as R_Name, Donor.dname as D_Name
From Recipient, Donor
Where Recipient.donor_ID = Donor.Donor_ID;

Delete From Staff
Where Staff_ID = 143142;
