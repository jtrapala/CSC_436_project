
USE bloodBank;

INSERT INTO blood_bank (bb_ID, d_name, address, city, state, phone, admin_name)
VALUES ( 100001, 'RIC Blood Bank', '11 Sohier Rd', 'Wakefield', 'RI', '401-572-9128', 'Amy Volchire');

INSERT INTO blood_bank (bb_ID, d_name, address, city, state, phone, admin_name)
VALUES ( 100002, 'URI Blood Bank', '4 Ocean Blvd', 'Kingston', 'RI', '401-572-8891', 'Sam Crocher');

INSERT INTO blood_bank (bb_ID, d_name, address, city, state, phone, admin_name)
VALUES ( 100003, 'CCC Blood Bank', '213 Benchmark St', 'Westchester', 'CT', '421-774-0081', 'Jonesy West');

INSERT INTO blood_bank (bb_ID, d_name, address, city, state, phone, admin_name)
VALUES ( 100004, 'Reds Blood Bank', '100 Darling St', 'Crowsville', 'NY', '515-819-1741', 'Pam Locus');

INSERT INTO blood_bank (bb_ID, d_name, address, city, state, phone, admin_name)
VALUES ( 100005, 'Cooperstown Blood Bank', '77 Leapord Rd', 'Cooperstown', 'VT', '912-902-1142', 'Harper Smith');

INSERT INTO blood_drive (bdrive_ID, name, address, city, state, phone, Description, bank_id)
VALUES ( 10, 'GetSome Blood', '14 Redrover Ln', 'Johnson', 'CT', '421-774-0082', 'Getting Peoples Blood', 100003);

INSERT INTO blood_drive (bdrive_ID, name, address, city, state, phone, Description, bank_id)
VALUES ( 11, 'GetMore Blood', '7 Loop St', 'Johnson', 'CT', '421-774-0082', 'Getting More of Peoples Blood', 100003);

INSERT INTO blood_drive (bdrive_ID, name, address, city, state, phone, Description, bank_id)
VALUES ( 12, 'Sucking Blood', '119 Taylor Ln', 'Cranston', 'RI', '401-572-9129', 'The more blood the better', 100001);

INSERT INTO blood_drive (bdrive_ID, name, address, city, state, phone, Description, bank_id)
VALUES ( 13, 'URI Blood Drive', '50 Uppercollege Rd', 'Kingston', 'RI', '401-572-8892', 'College Kids Blood', 100002);

INSERT INTO staff (Staff_ID, Name, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143140, 'Susan Crocker', NULL, '172-132-1121', 'Night', 'F', '11/09/77', 100005);

INSERT INTO staff (Staff_ID, Name, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143141, 'Tammy Shrook', NULL, '172-132-8171', 'Night', 'F', '10/20/81', 100005);

INSERT INTO staff (Staff_ID, Name, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143142, 'Craig Rem', NULL, '172-132-7622', 'Morning', 'M', '04/11/80', 100005);

INSERT INTO staff (Staff_ID, Name, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143143, 'Ralph Copey', NULL, '917-991-5563', 'Morning', 'M', '02/08/96', 100003);

INSERT INTO staff (Staff_ID, Name, Address, Phone, Shift, Gender, DOB, Bank_ID)
VALUES ( 143144, 'Betty Jones', NULL, '701-334-6684', 'Night', 'F', '12/27/84', 100001);

INSERT INTO Donor (Donor_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178211, 'James Judy', NULL, '231-919-4447', NULL, 'M', '12/02/61', 'A+', 100003);

INSERT INTO Donor (Donor_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178212, 'Lucy Smallz', NULL, '231-866-1717', NULL, 'F', '06/17/70', 'AB-', 100003);

INSERT INTO Donor (Donor_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178213, 'Jep Potter', NULL, '333-7182-9007', NULL, 'M', '08/21/76', 'O-', 100003);

INSERT INTO Donor (Donor_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
VALUES ( 178214, 'Casey Prince', NULL, '901-4321-1615', NULL, 'F', '10/31/94','A+', 100002);

INSERT INTO Donor (Donor_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Blood_Type, Bank_ID)
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

INSERT INTO recipient (recip_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (100, 'Jasper Wisk', NULL, '966-451-7831', 'Liver Disease', 'M', '11/08/66', 5, 'AB-', 178212);

INSERT INTO recipient (recip_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (101, 'Nick Mop', NULL, '966-917-1653', 'Lung Disease', 'M', '07/18/45', 6, 'A+', 178211);

INSERT INTO recipient (recip_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (102, 'Sally Sampson', NULL, '111-902-3356', 'Corona Virus', 'F', '03/04/55', 9, 'O-', 178213);

INSERT INTO recipient (recip_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (103, 'Christopher Markus', NULL, '818-445-9088', 'Unkown Disease', 'M', '12/10/82', 10, 'A+', 178214);

INSERT INTO recipient (recip_ID, Name, Address, Phone_Number, Medical_Condition, Gender, DOB, Urgency_Status, Blood_Type, donor_ID)
VALUES (104, 'Lance Jockerson', NULL, '912-556-8819', 'Ringworm', 'M', '06/20/85', 3, 'B-', 178215);