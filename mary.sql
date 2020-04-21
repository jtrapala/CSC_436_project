CREATE DATABASE BloodBank;
USE BloodBank;

CREATE TABLE blood_bank (
  bb_ID int(9) NOT NULL primary key,
  d_name varchar(25) NOT NULL,
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone varchar(14),
  admin_Name varchar(25),
  unique(bb_ID)
);

CREATE TABLE blood_drive (
  bdrive_ID int(9) NOT NULL primary key,
  Name varchar(25) NOT NULL,
  Address varchar(20),
  City varchar(20),
  State varchar(15),
  Phone varchar(14),
  bank_ID int(9),
  unique(bdrive_ID),
  foreign Key (bank_ID)
	references blood_bank(bb_ID)
    on update cascade on delete cascade
);

CREATE TABLE staff (
  Staff_ID int(9) NOT NULL primary key,
  Name varchar(25) NOT NULL,
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
);

CREATE TABLE donor (
  Donor_ID int(9) NOT NULL primary key,
  Name varchar(25) NOT NULL,
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
);

CREATE TABLE Blood (
  Bloodbag_number varchar(15) NOT NULL primary key,
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
  Name varchar(25) NOT NULL,
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

INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (0, 'aliquid', '3804 Dibbert Brook S', 'Eleanoreshire', 'Indiana', '(425)272-2769', 'Prof. Ansley Bashirian');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (4, 'et', '6807 Kory Turnpike S', 'Gleichnershire', 'Idaho', '1-076-720-0625', 'Dr. Joana Kulas IV');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (8, 'dignissimos', '2520 Ruecker Bypass ', 'Hilllview', 'Alabama', '1-186-500-1063', 'Brenda Simonis');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (38, 'ea', '32888 Misty Fields A', 'Port Ulicesland', 'Indiana', '835-414-2242', 'Miss Hattie Johnson Jr.');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (46, 'nihil', '33528 Watsica Strave', 'North Reina', 'Louisiana', '1-923-982-6369', 'Prof. Camylle Turner II');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (56, 'nulla', '4312 Vincenza Unions', 'Alanischester', 'Florida', '(688)539-2593', 'Mr. Agustin Stoltenberg');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (7953, 'totam', '9464 Beer Creek Apt.', 'Port Donato', 'Nebraska', '1-048-078-7569', 'Waylon Kshlerin');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (8205, 'qui', '7942 Della Lane Apt.', 'Kelsieburgh', 'Alabama', '195-181-0425', 'Dr. Colleen Cole DDS');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (9187, 'odit', '36521 Fahey Divide S', 'West Marcelina', 'Utah', '576.362.6994', 'Addison Hills Sr.');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (359532, 'et', '55445 Runolfsdottir ', 'Lake Jarrett', 'SouthDakota', '065.459.4926', 'Miss Jodie Spencer');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (762722, 'dolorem', '404 Lang Spurs Suite', 'Douglasfort', 'NorthDakota', '936-059-6254', 'Daisy Davis');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (9033940, 'qui', '125 Aryanna Harbor S', 'Lucindaland', 'Alabama', '+89(0)14936642', 'June Hilll Sr.');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (54932289, 'quasi', '168 Feest Spur\nLake ', 'West Clementina', 'Kansas', '1-325-643-4085', 'Oda Purdy');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (76959982, 'molestiae', '6324 O\'Connell Cause', 'South Amely', 'Oklahoma', '255-451-0228', 'Myrl Keeling');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (87651216, 'enim', '3794 Stoltenberg Por', 'Mistyview', 'Alaska', '744.945.8224x6', 'Dr. Jessie Larson IV');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (309675013, 'ut', '9069 Fern Course Sui', 'Schillerstad', 'Washington', '400.431.9115', 'Chaz Ritchie Jr.');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (394927219, 'corporis', '00107 Angelo Spring ', 'New Griffinshire', 'Florida', '347.302.0096', 'Marlon Hauck IV');
INSERT INTO `blood_bank` (`bb_ID`, `d_name`, `address`, `city`, `state`, `phone`, `admin_Name`) VALUES (866067274, 'maxime', '83980 Fadel Meadow A', 'New Easton', 'Massachusetts', '+84(0)17237214', 'Angelina Muller');

INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (0, 'voluptatem', '09311 McClure Throug', 'North Crystal', 'Arizona', '1-511-351-3617', 0);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (6, 'laborum', '442 Fabian Estate Ap', 'Lake Savanahfort', 'NorthDakota', '+45(4)48490026', 76959982);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (18, 'consectetur', '719 McKenzie Groves ', 'New Cortezberg', 'Connecticut', '873-912-9104x1', 87651216);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (40, 'autem', '134 Cathryn Common A', 'East Rosalyn', 'Hawaii', '1-872-397-7238', 4);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (90, 'modi', '459 Ed Gardens Apt. ', 'Crooksburgh', 'NewMexico', '1-639-992-5235', 54932289);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (91, 'odio', '2250 Feeney Roads Su', 'Jaredmouth', 'Kansas', '382-480-8031', 38);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (242, 'id', '49933 Rose Hill Apt.', 'Langworthfurt', 'Illinois', '208.520.5791x8', 9187);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (354, 'sit', '96588 Harry Lock\nSou', 'Susanhaven', 'Delaware', '(188)836-4177x', 8);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (360, 'quis', '83103 Farrell Street', 'South Verla', 'Hawaii', '(077)130-2278x', 309675013);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (882, 'vitae', '8093 Enrico Well\nSou', 'North Noah', 'Texas', '(796)444-6016x', 4);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (956, 'quo', '62552 Daisy Mission\n', 'Veumton', 'Tennessee', '658.040.5977x1', 359532);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (1206, 'ratione', '8348 Jairo Springs\nR', 'Kadenborough', 'Colorado', '824.461.6995x4', 0);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (1344, 'perferendis', '259 Dorian Fords\nBos', 'Port Araceliport', 'Tennessee', '404.919.8852x4', 762722);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (1651, 'in', '073 Casper Field\nWes', 'South Timothy', 'NewJersey', '00647400935', 8);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (6926, 'similique', '774 Carolyn Fort Apt', 'South Montetown', 'Louisiana', '08780281111', 8205);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (7660, 'et', '315 Ricardo Branch S', 'Lake Aubree', 'Utah', '(353)519-4813', 866067274);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (8962, 'qui', '1897 Jovan Crossroad', 'Kohlershire', 'NewYork', '300-910-3843x7', 38);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (28786, 'maxime', '25811 Melyna Point S', 'East Kaela', 'Illinois', '300.170.2569x4', 359532);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (76172, 'iste', '92170 Sierra Lakes A', 'Hoppebury', 'Arkansas', '+97(5)04097859', 762722);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (191839, 'quis', '08854 Carmine Curve ', 'Gerardport', 'RhodeIsland', '904.602.0790x0', 9033940);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (445677, 'aut', '086 Marks Station\nPo', 'Juniorstad', 'Missouri', '493.148.6892x2', 7953);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (763490, 'est', '2453 Hirthe Valleys ', 'Walkerport', 'RhodeIsland', '(513)756-7496x', 9187);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (1185252, 'quae', '45966 Ora Rapid Apt.', 'Kylamouth', 'Kansas', '543.177.4635x7', 54932289);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (6456915, 'consequatur', '25650 Lindgren River', 'Ashlynntown', 'Vermont', '228.897.3623', 56);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (7825519, 'perspiciatis', '29594 Streich Square', 'Reichelville', 'Wyoming', '01659984868', 56);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (8400050, 'nesciunt', '011 Runolfsson Pass ', 'Erichport', 'Connecticut', '1-558-673-8499', 9033940);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (17311223, 'inventore', '95365 Pacocha Circle', 'Lake Hilmaburgh', 'California', '974-096-6786x2', 46);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (50966707, 'blanditiis', '4529 Dickens Estates', 'West Jerel', 'NewJersey', '915.221.0774x7', 8205);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (59770179, 'ut', '92598 Gorczany Cours', 'Schusterchester', 'Vermont', '1-737-241-9445', 87651216);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (63358518, 'quia', '3460 Cameron Crossin', 'New Destany', 'Nebraska', '1-656-507-3603', 7953);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (65236359, 'eos', '1701 O\'Hara Mountain', 'East Jacemouth', 'Iowa', '471.277.0711x6', 394927219);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (208513487, 'pariatur', '81568 Desmond Ranch ', 'North Annamarieside', 'WestVirginia', '334-071-2719', 46);
INSERT INTO `blood_drive` (`bdrive_ID`, `Name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (620591175, 'iste', '0639 Roy Knolls\nKoel', 'North Lysanne', 'Arizona', '070.874.5946', 76959982);

INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (0, 'Ms. Neha Runolfsson IV', '74811 Erdman Burgs A', '267.898.2815x6', 'Asthma', 'f', '1970-06-21', 'A+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1, 'Alvena Daniel', '4064 Gerry Trafficwa', '044.911.8416x0', 'Blood Pressure', 'm', '2011-11-22', ' AB+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2, 'Mr. Billy Zulauf I', '09258 Runolfsson Sta', '550-466-6280x0', 'Diabetes', 'f', '1987-03-06', 'A+', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3, 'Isabella Johnston', '64629 Kris Inlet\nNor', '1-491-376-6557', 'Blood Pressure', 'f', '2004-02-08', ' AB+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4, 'Prof. Aryanna Grant IV', '4330 Parisian Vista ', '1-442-340-6465', 'Blood Pressure', 'f', '1983-02-09', 'AB-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (5, 'Dr. Laverna O\'Hara III', '432 June Gardens Apt', '540-984-3967', 'Diabetes', 'f', '1994-04-04', ' AB+', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (6, 'Hillard Flatley III', '13649 Daugherty Pike', '896-748-5281x0', 'Heart Disease', 'f', '2008-02-19', ' B-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7, 'Solon Leannon', '47255 Esperanza Vall', '(556)378-6550', 'Lung Disease', 'f', '2016-03-29', 'B+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9, 'Theodora Gerlach', '006 Maud View\nMohamm', '709-118-1469x1', 'Diabetes', 'm', '1993-06-14', ' B-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (16, 'Derick Huel', '3316 Rau Station\nLak', '1-049-611-6643', 'Blood Pressure', 'f', '1976-07-30', 'O-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (17, 'Garth Wuckert', '53870 Francisco View', '381-873-3323', 'Lung Disease', 'm', '1999-12-24', ' AB+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (19, 'Miss Kiera Parker', '2231 Bogisich Mounta', '885-551-7563x9', 'NULL', 'm', '1996-06-08', ' A-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (23, 'Leopold Sauer II', '3168 Crawford Trail ', '952.015.4174x6', 'Lung Disease', 'f', '2013-04-17', ' B-', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (26, 'Wilhelm Reilly', '962 Sterling Hills S', '1-764-115-5099', 'Blood Pressure', 'm', '1992-07-19', ' AB+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (27, 'Geovany Thiel', '02422 Denesik Crest ', '522.751.2459x0', 'Heart Disease', 'm', '2015-01-17', 'O-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (30, 'Bernita Johnston', '597 Hyatt Park\nNorth', '603-263-6185x6', 'Diabetes', 'f', '1994-09-30', ' A-', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (33, 'Scarlett Bednar', '44429 Bauch Spur Apt', '516-233-9474x4', 'Heart Disease', 'm', '2001-10-29', 'O+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (40, 'Miracle Pfannerstill', '21052 Robyn Meadows ', '(328)077-2805', 'NULL', 'f', '1972-10-18', 'AB-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (50, 'Ozella Hettinger', '23063 Zoila Inlet\nEa', '912.413.6595', 'Lung Disease', 'f', '1994-08-14', 'AB-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (53, 'Mr. Christian Torp PhD', '868 Stoltenberg Ridg', '(962)313-5433', 'Asthma', 'f', '1977-06-11', ' B-', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (54, 'Blaise Block', '3365 Erdman Manor Ap', '1-412-600-3207', 'Heart Disease', 'm', '2006-10-13', ' AB+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (58, 'Carissa Bashirian', '2451 Tommie Lights A', '1-485-495-0128', 'Heart Disease', 'm', '1989-02-23', ' A-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (61, 'Eleanore Cole Sr.', '578 Demetris Express', '255-494-5433x1', 'Diabetes', 'f', '2008-02-12', ' AB+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (62, 'Bethel Lakin', '702 Schmeler Street\n', '713-816-0883', 'Blood Pressure', 'f', '1976-06-23', ' A-', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (68, 'Delmer Beahan', '3745 Kamron Cove Sui', '+54(3)17086432', 'Blood Pressure', 'f', '1971-10-01', ' A-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (70, 'Dr. Makenzie McCullough', '951 Feil Run\nRemingt', '1-400-532-8269', 'NULL', 'm', '1979-04-04', 'O-', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (72, 'Miss Cordia Buckridge DDS', '5139 Bradley Turnpik', '612-570-4703x4', 'Lung Disease', 'm', '2006-04-18', ' A-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (75, 'Donald Reilly', '917 Kamille Spurs Su', '(084)040-3239x', 'Blood Pressure', 'm', '2003-04-02', ' AB+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (76, 'Prof. Deon Cole', '644 Carolyne Overpas', '882.751.8279', 'Asthma', 'm', '1995-08-15', 'AB-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (79, 'Ms. Iva Breitenberg MD', '1929 Aidan Prairie S', '1-305-065-7506', 'Heart Disease', 'f', '1984-02-02', 'AB-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (81, 'Brenna Emmerich', '96147 Schimmel Hill ', '06873888730', 'NULL', 'f', '1972-07-11', ' AB+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (84, 'Dina Mann', '848 Hodkiewicz Pines', '1-052-669-5374', 'Diabetes', 'm', '2010-02-28', ' AB+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (85, 'Michale Yost', '77423 Alysa Summit A', '(015)332-0271x', 'Blood Pressure', 'f', '1987-01-03', 'AB-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (86, 'Kolby Cormier', '98423 Ophelia Trace ', '221.424.9754', 'NULL', 'f', '2001-10-09', ' B-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (87, 'Yasmeen Herzog', '87334 Lon Bridge Apt', '04585164578', 'Diabetes', 'f', '2000-04-15', 'B+', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (88, 'Antonetta O\'Conner', '981 Ernestine Walk\nS', '(028)664-8130x', 'Blood Pressure', 'm', '1989-04-27', 'O+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (116, 'Prof. Bethel Blanda', '819 Schaden Valley S', '(160)444-1114', 'Blood Pressure', 'm', '2010-09-28', 'B+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (118, 'Mr. Charley Ernser', '35241 Jaydon Drive A', '255.536.2806', 'Asthma', 'm', '2018-12-01', ' A-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (139, 'Dr. Brady Koelpin', '811 Nicola Hill\nNata', '846-146-6677x6', 'Lung Disease', 'm', '1983-08-17', ' AB+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (141, 'Kenyatta Schinner', '1979 Connelly Isle\nL', '139-238-6572', 'NULL', 'm', '1985-12-24', 'B+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (151, 'Dr. Aleen Feil Sr.', '112 McGlynn Inlet Su', '268.918.8335', 'NULL', 'f', '2015-11-20', 'B+', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (158, 'Jordon Kozey V', '32216 Horacio Villag', '1-691-942-7377', 'Lung Disease', 'f', '2000-10-31', 'A+', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (259, 'Einar Koch', '03542 Von Coves Suit', '(808)990-5475x', 'Asthma', 'f', '2003-10-04', ' B-', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (311, 'Ashly Roberts', '69112 Candida Square', '(358)544-5799', 'Asthma', 'f', '1979-08-02', ' B-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (321, 'Daphne Berge', '1711 Jefferey Haven\n', '687-075-1934', 'Blood Pressure', 'm', '1980-03-26', 'O+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (327, 'Mrs. Alfreda Connelly V', '830 Blanda Junctions', '414-680-3781x6', 'Asthma', 'm', '1975-09-13', ' B-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (376, 'Pierce Deckow', '8873 Bernier Causewa', '(441)563-2629', 'Diabetes', 'f', '1988-10-07', ' A-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (396, 'Lawson Haley', '4247 Homenick Roads\n', '03095699480', 'Lung Disease', 'm', '2014-07-01', 'O+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (431, 'Prof. Rebeka Brekke DDS', '398 Elody Well\nNew I', '+21(7)41599987', 'Asthma', 'f', '1977-12-09', ' AB+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (446, 'Hailey Hudson', '17486 Will Freeway\nD', '1-737-653-4310', 'Heart Disease', 'm', '1994-08-16', ' A-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (479, 'Florida Bechtelar Sr.', '726 Armstrong Pines\n', '04168252029', 'Asthma', 'm', '2016-04-18', 'B+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (493, 'Clare Lowe', '05314 Feeney Isle Ap', '554-857-6529', 'Asthma', 'f', '1973-03-19', 'AB-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (516, 'Mrs. Elaina Cremin II', '144 Jamel Valley Sui', '238-939-6627', 'NULL', 'm', '1979-02-22', 'O-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (517, 'Lloyd Kertzmann', '04222 Rohan Streets\n', '(171)605-0838', 'Heart Disease', 'm', '1986-06-13', 'B+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (624, 'Marcus Homenick', '27339 Kobe Canyon\nNe', '608-760-2717x0', 'Blood Pressure', 'f', '1979-12-24', 'B+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (682, 'Khalid Reichert', '928 Graciela Plaza\nK', '(708)046-6292', 'NULL', 'm', '2007-06-02', 'O+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (715, 'Conor Wilkinson', '688 Schinner Orchard', '972.985.9394', 'Diabetes', 'f', '2018-02-03', ' AB+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (750, 'Linnie Stoltenberg', '41418 Mollie Bridge ', '1-565-046-3835', 'Diabetes', 'f', '1991-11-26', 'B+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (756, 'Yadira Macejkovic', '9539 Beaulah Plains ', '(827)466-1725', 'Diabetes', 'm', '2016-03-08', 'O+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (796, 'Leslie Purdy', '7219 Kaitlin Brooks ', '954-158-5903', 'NULL', 'm', '1986-05-08', ' AB+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (824, 'Ms. Mara Altenwerth II', '7748 Mitchell Turnpi', '1-595-684-8480', 'Diabetes', 'f', '1986-06-05', 'A+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (839, 'Dr. Kurt Dare', '487 Ted Mews Apt. 47', '603-940-9746', 'Heart Disease', 'f', '1982-03-08', 'O-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (880, 'Mrs. Rossie Schuster', '233 Nico Forks Suite', '587-030-8555', 'Heart Disease', 'f', '1982-02-18', 'A+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (968, 'Prof. Tomas Rohan MD', '47253 Jace Gardens\nN', '1-734-122-5384', 'Diabetes', 'm', '1989-05-03', 'O+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1089, 'Prof. Andre Boyer', '68545 Jacobson Mount', '203.789.1712x9', 'Blood Pressure', 'f', '1978-10-29', 'AB-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1093, 'Theo Douglas PhD', '500 Hilpert Inlet Su', '1-102-688-7950', 'NULL', 'm', '1999-10-21', 'O-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1389, 'Hermina Lind Jr.', '562 Louie Creek\nRuth', '182.041.6129x0', 'NULL', 'm', '1992-11-06', ' B-', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1732, 'Ronaldo Funk', '773 Gerhold Corner A', '051.262.3871x6', 'NULL', 'f', '1981-03-25', 'O-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1759, 'Ms. Tanya Dooley I', '2864 Dortha Bridge A', '1-094-439-7949', 'Heart Disease', 'm', '2009-02-16', ' A-', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2070, 'Miss Gia Kohler III', '65962 Roscoe Lock Ap', '1-904-067-7838', 'NULL', 'm', '2007-02-27', 'B+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2077, 'Ms. Sarina Reichel I', '573 Onie Loop Suite ', '(718)100-8546', 'Blood Pressure', 'm', '1993-10-01', 'AB-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2380, 'Prof. Rusty Raynor', '02406 Hosea Meadows ', '104.565.3969', 'NULL', 'm', '1987-06-03', 'O-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2999, 'Roel Schaden I', '95927 Renner Neck Ap', '(476)928-8220', 'Lung Disease', 'f', '2008-01-08', 'B+', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3208, 'Noah Jaskolski Jr.', '138 Legros Ports\nSou', '1-888-830-9852', 'Blood Pressure', 'm', '2014-11-19', 'A+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3902, 'Ms. Stefanie Veum DDS', '6479 Etha Branch Apt', '(137)802-2733', 'Blood Pressure', 'f', '1988-09-28', ' A-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3929, 'Emie Klein', '271 Durgan Estate\nNo', '198-633-4843x1', 'Heart Disease', 'f', '1995-11-03', ' A-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4194, 'Dr. Kaylee Ruecker', '58036 Rolfson Isle\nL', '+48(3)20670177', 'Asthma', 'm', '1983-12-01', 'O-', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4853, 'Miss Romaine Veum', '387 Aufderhar Extens', '(145)289-9093', 'Asthma', 'm', '2009-03-15', 'O-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (5853, 'Dr. Emiliano Goodwin', '717 Beahan Fort Suit', '708.015.4928', 'Lung Disease', 'm', '2008-11-09', 'O-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (6649, 'Chasity Pollich', '577 Keebler Lodge\nEb', '1-091-975-3777', 'Diabetes', 'm', '2015-04-16', ' AB+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7274, 'Cecelia Emmerich DVM', '20780 Smitham Plain ', '944-443-2687x0', 'Heart Disease', 'm', '2004-09-05', 'A+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7352, 'Dewayne Turner', '206 Kohler Junctions', '115-337-1046', 'Heart Disease', 'f', '1979-07-10', ' AB+', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7452, 'Lenny Hauck', '30091 Cary Causeway\n', '907-417-9692', 'Heart Disease', 'm', '1984-10-05', ' B-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7591, 'Uriah Dietrich V', '814 Mante Station\nKo', '(374)401-4218', 'Lung Disease', 'f', '1995-01-17', 'O-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7711, 'Donavon Kassulke', '010 Upton Highway Ap', '874-964-1746x1', 'NULL', 'f', '1994-07-03', 'A+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7939, 'Franco Jenkins', '888 Kunde Springs\nSt', '833-634-6931', 'Blood Pressure', 'f', '1977-03-09', 'O-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9137, 'Lysanne Morar', '75474 Jillian Fall A', '1-426-396-8459', 'Heart Disease', 'f', '1972-08-08', 'B+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9292, 'Neha Hyatt', '64852 Hauck Valleys\n', '1-756-028-1206', 'Blood Pressure', 'f', '1993-02-14', 'O+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9510, 'Kirstin Grimes III', '183 Keebler Trail\nPo', '739-273-1860', 'Diabetes', 'f', '1978-03-06', 'O-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9530, 'Louvenia Fadel III', '921 Bednar Hills Sui', '(023)293-5618x', 'Lung Disease', 'm', '1990-05-30', 'O+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9661, 'Miss Freida Lynch', '691 Sabryna Glens\nAl', '+27(5)42120228', 'Heart Disease', 'm', '1982-05-10', 'O+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9738, 'Mathilde Heller', '1035 Johnson Skyway ', '012-916-8172x2', 'Heart Disease', 'f', '2019-10-08', ' AB+', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9778, 'Kayla Will', '046 Anderson Roads S', '(027)618-7777', 'Diabetes', 'f', '1991-07-27', ' B-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9945, 'Prof. Gianni Wiegand', '94223 Hyman Shoal Su', '(805)693-9346x', 'Blood Pressure', 'f', '1994-01-23', ' A-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (14135, 'Dr. Jayme Sipes DVM', '13284 Wilkinson Inle', '+24(1)61156759', 'Heart Disease', 'm', '1972-05-29', 'B+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (20429, 'Ms. Else Swift', '857 Nader Mountain\nS', '1-817-904-1530', 'Asthma', 'm', '1997-01-15', 'AB-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (21344, 'Freeda Zieme', '51988 Eliza Place Ap', '1-316-592-6324', 'Diabetes', 'f', '2002-08-28', ' A-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (23263, 'Dr. Jessie Zieme IV', '74585 Daija Spurs\nEl', '829-701-5928x2', 'Lung Disease', 'm', '2010-07-21', 'AB-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (23649, 'Reyes Wiegand', '291 Valentin Points ', '1-543-428-0878', 'Heart Disease', 'm', '1992-02-18', ' B-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (25599, 'Missouri Doyle', '931 Hegmann Haven\nSo', '1-058-162-4863', 'Heart Disease', 'f', '2009-09-18', 'O-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (28607, 'Kira Heathcote', '8088 Klocko Mountain', '599.319.4870x2', 'Diabetes', 'f', '2011-01-30', ' A-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (29048, 'Prof. Raphael Stoltenberg', '37916 Beth Gateway A', '(381)406-1478x', 'Diabetes', 'f', '2000-01-30', ' AB+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (30988, 'Miss Marlee Pacocha V', '7516 Hunter Neck\nPor', '750-369-3040x1', 'NULL', 'f', '2010-11-06', 'O+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (31389, 'Mrs. Tressie Howe', '589 Spencer Mill\nWes', '+59(7)13371591', 'Heart Disease', 'm', '1982-04-30', ' AB+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (33093, 'Lysanne Strosin', '6757 Beatty Hills Ap', '700.348.6405x6', 'Asthma', 'f', '2006-04-28', 'B+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (40697, 'Nikolas Hermiston', '208 Fadel Brooks Sui', '(331)025-6081x', 'Diabetes', 'f', '2015-08-15', 'A+', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (43419, 'Stanton Waters', '693 Shields Villages', '819.493.9235x8', 'Blood Pressure', 'f', '2008-04-09', 'AB-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (44694, 'Marilou Keebler', '500 Baumbach Pike Su', '168.254.4869x8', 'Heart Disease', 'm', '2016-02-17', 'O-', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (44877, 'Logan McCullough', '178 Trace Parkway\nPo', '135.043.5087', 'Asthma', 'm', '1985-07-23', ' AB+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (48506, 'Dane Farrell', '3186 Schiller Fort\nW', '09535963103', 'Blood Pressure', 'm', '1979-11-26', ' B-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (54830, 'Brendan Ankunding III', '99686 Betty Cliffs\nD', '575-029-8166', 'Blood Pressure', 'f', '1984-01-19', ' B-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (59461, 'Domenica Boehm', '719 Aric Locks\nEast ', '+91(2)24846297', 'Lung Disease', 'f', '2014-05-04', ' B-', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (63234, 'Rebekah Lowe', '60917 Holden Bridge ', '1-833-527-3918', 'Lung Disease', 'm', '1981-11-18', ' AB+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (69653, 'Dillan Gibson', '297 Marvin Orchard\nL', '1-898-382-2657', 'Diabetes', 'f', '2009-11-29', 'O-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (72278, 'Mr. Mitchell Thiel', '857 Alysa Gardens\nNo', '+45(4)56599752', 'NULL', 'f', '2012-09-19', ' A-', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (73691, 'Mr. Tommie Carroll DVM', '84685 Corwin Junctio', '05164016764', 'Heart Disease', 'm', '2008-03-24', 'B+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (75552, 'Dr. Elwyn Harris', '77054 Hauck Corner A', '606.499.7760', 'Heart Disease', 'f', '1989-06-14', 'O+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (78013, 'Mrs. Janelle Fadel', '395 Hyatt Lane\nWest ', '(780)910-0624x', 'Blood Pressure', 'f', '1970-12-18', ' AB+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (81781, 'Tiffany Gerlach Jr.', '3496 Clare Manor\nLak', '00246022853', 'Diabetes', 'm', '2002-04-15', 'B+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (85509, 'Prof. Lacy Thiel', '85443 Leonie Cape Su', '03749869987', 'NULL', 'm', '2004-02-27', 'O-', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (87691, 'Zoie Rau', '8500 Schowalter Trac', '(723)089-6931', 'Diabetes', 'f', '2011-04-07', 'B+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (87717, 'Garnet Murphy MD', '615 Brooklyn Straven', '1-707-937-0747', 'Heart Disease', 'f', '1990-08-12', ' AB+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (90967, 'Ms. Lilyan Koss', '394 Kathleen Crest\nH', '774.308.3303', 'Asthma', 'f', '1983-03-11', 'B+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (92705, 'Lenny Wolff', '90374 Schaefer Stati', '114.527.5100x7', 'Asthma', 'f', '1974-06-16', ' B-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (93186, 'Emily Corwin', '407 Gulgowski Locks ', '672.507.3781', 'NULL', 'm', '1985-08-03', 'AB-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (99086, 'Chyna Stanton', '26453 Myrl Trail\nLak', '(443)460-6273x', 'NULL', 'm', '1999-12-05', ' AB+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (140760, 'Christelle Bosco', '16969 Stephon Fort A', '(705)324-9694x', 'Blood Pressure', 'f', '2010-01-03', ' AB+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (182572, 'Anahi Leannon', '6838 Cortez Green Ap', '1-950-108-6088', 'Blood Pressure', 'f', '1987-05-08', 'O-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (200002, 'Serena Wintheiser DDS', '2906 Braden Extensio', '02740425680', 'Heart Disease', 'm', '1998-09-15', 'O+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (254265, 'Stefanie Rosenbaum', '70637 Daryl Port\nLoy', '412-256-1921x9', 'Asthma', 'f', '2015-02-12', ' A-', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (267439, 'Micheal Pacocha Sr.', '720 Aurelia Inlet\nWe', '302.313.2491x7', 'Heart Disease', 'f', '2016-07-19', 'A+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (290748, 'Sim Ritchie DDS', '930 Kirlin Drive Sui', '(619)568-5410x', 'Asthma', 'm', '1983-07-20', 'O-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (299496, 'Sarai Cruickshank', '1969 Rogahn Forest\nW', '1-193-740-9289', 'Diabetes', 'm', '1975-05-16', ' B-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (336722, 'Matilda Balistreri I', '8028 Parker Radial S', '039.754.4170x1', 'Diabetes', 'f', '1978-12-14', 'A+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (342993, 'Lester Emard', '7803 Jettie Court\nSo', '893.945.7346x9', 'Blood Pressure', 'f', '1972-10-09', 'O+', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (380916, 'Tevin Macejkovic PhD', '73826 Mariana Neck S', '(788)434-2872x', 'NULL', 'm', '1999-06-29', 'O+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (440634, 'Mckenzie Steuber', '21819 Andrew Turnpik', '027.451.9202x1', 'Heart Disease', 'm', '2012-09-13', 'A+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (456326, 'Jake Feil II', '12787 Keebler Extens', '888-941-8952', 'Asthma', 'm', '2018-03-26', 'O-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (495332, 'Mr. Blaise Kovacek', '561 Abigale Hill\nNor', '09141069797', 'NULL', 'm', '1991-08-09', 'AB-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (520646, 'Timmy Hettinger III', '813 Walsh Stream Apt', '604.484.8785', 'Asthma', 'f', '1988-01-03', ' B-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (564217, 'Javier Schaden', '076 Price Avenue Sui', '089.277.9553', 'Asthma', 'f', '1981-08-08', ' B-', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (588937, 'Elody Jacobs', '362 Monty Field Apt.', '1-179-435-2443', 'Blood Pressure', 'm', '1986-10-20', 'A+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (612081, 'Dr. Jammie Rice', '15273 Everardo Motor', '685.874.9552x5', 'Blood Pressure', 'm', '1991-08-23', 'AB-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (633234, 'Margarette Johnston', '122 Burdette River A', '548-696-9793x1', 'Blood Pressure', 'm', '2013-11-27', ' A-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (633822, 'Eugene Leuschke', '510 Hilpert Bypass\nC', '01279625975', 'Heart Disease', 'f', '1970-09-05', ' AB+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (636294, 'Brooks Cassin', '41243 Fabiola Missio', '403.681.1314', 'Lung Disease', 'm', '2010-09-16', 'A+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (723753, 'Kiara Wintheiser', '4355 Dahlia Manor\nRu', '(527)871-3903', 'Lung Disease', 'f', '1983-11-20', 'O-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (812156, 'Torey Mayer', '7896 Schaden Meadow\n', '1-606-387-7710', 'NULL', 'm', '1997-03-01', ' A-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (823269, 'Ernest Klocko', '6792 Marquardt Strea', '1-426-444-2335', 'Heart Disease', 'f', '2000-05-01', ' A-', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (859674, 'Miss Rebekah Dibbert', '39320 Ondricka Ridge', '1-632-821-1969', 'NULL', 'm', '1994-01-16', ' AB+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (868029, 'Maverick Rohan', '14333 Luettgen Cresc', '(919)730-0830', 'Blood Pressure', 'm', '1999-04-11', 'AB-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (882175, 'Dr. Oran Thiel MD', '632 Kiara Road Apt. ', '+82(7)59055893', 'NULL', 'm', '2006-01-24', ' A-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (905109, 'Jack Bergnaum', '45614 Bauch Islands\n', '302.122.1408', 'Heart Disease', 'm', '2013-11-26', 'AB-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (937639, 'Miss Lora Dickinson', '71576 Josefina Sprin', '1-832-763-2494', 'Blood Pressure', 'm', '1994-08-13', 'B+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (949663, 'Therese Hickle IV', '1151 Antonia Hill\nWa', '+92(4)82067061', 'Heart Disease', 'm', '2018-09-01', 'B+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (977336, 'Tressie Ruecker', '22702 Jude Motorway\n', '(201)866-4036x', 'Lung Disease', 'f', '2004-09-08', ' B-', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (984449, 'Leslie Wolf', '91531 Gregoria Mount', '043.762.5155', 'Diabetes', 'm', '1971-04-01', 'O-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1016929, 'Dr. Doris Ratke PhD', '40082 Grimes Mountai', '206.802.9819', 'Heart Disease', 'm', '1987-10-01', 'B+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1232384, 'Fatima Koepp', '366 Tessie Lakes\nNik', '1-453-157-4326', 'Heart Disease', 'f', '1997-11-11', ' A-', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (1871807, 'Elta Wisozk', '8202 Paula Tunnel Ap', '264.772.3583x9', 'Diabetes', 'm', '2005-10-02', 'B+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2531199, 'Odessa Jerde', '786 Halvorson Spring', '+83(5)04641359', 'Heart Disease', 'f', '1979-12-05', ' B-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (2660476, 'Citlalli Stiedemann', '224 Gabriel Rapid\nPa', '607.918.1690x5', 'Heart Disease', 'm', '1973-05-11', ' B-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3444897, 'Dr. Ezequiel Miller', '7692 Koepp Vista Apt', '(152)006-7431x', 'NULL', 'm', '2019-10-28', 'AB-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (3543342, 'Louie Nitzsche', '6952 Luciano Station', '205-015-5053', 'Blood Pressure', 'f', '1972-08-03', 'AB-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4069134, 'Dr. Gilbert Macejkovic', '78484 Hirthe Camp\nAl', '980-476-5175x0', 'Asthma', 'f', '2002-09-14', ' A-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4161746, 'Dr. Jerel Olson', '574 Corene Ridges\nNe', '180.757.9407', 'Heart Disease', 'm', '1973-04-04', 'B+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4363414, 'Marilie Connelly', '80722 Kuphal Inlet\nW', '869-680-7716x0', 'Blood Pressure', 'm', '1996-01-26', ' A-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4425092, 'Trystan Schmidt', '0719 Koepp Estate\nPr', '(858)534-5869x', 'NULL', 'm', '1990-05-28', 'O-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (4863296, 'Bettie Hauck', '7284 Makenzie Mounta', '(966)248-8793', 'Heart Disease', 'f', '2011-09-04', ' A-', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (5073864, 'Mia Armstrong', '356 O\'Conner Spur\nLa', '856-001-8655', 'NULL', 'm', '2003-06-11', 'B+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (5172437, 'Jaeden Sawayn', '06779 Hackett Alley\n', '222-176-3420x1', 'Asthma', 'm', '1994-10-14', 'B+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (5800148, 'Mrs. Alanna Gaylord III', '86361 Satterfield Lo', '125.852.3735x0', 'Heart Disease', 'm', '1988-09-28', ' A-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (6213026, 'German Conn', '84336 Norberto Mount', '660-474-8515', 'Diabetes', 'm', '2006-05-31', 'O-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (6332758, 'Prof. Maximilian Flatley ', '30980 Devon Ways Sui', '+38(4)40114012', 'Heart Disease', 'f', '2008-09-26', 'B+', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (6460555, 'Miss Claudie Maggio', '17005 Bashirian Way ', '(032)781-3809x', 'NULL', 'f', '1977-07-31', 'O+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7242467, 'Abigayle Murphy', '26576 Robyn Run\nPadb', '(563)708-5718x', 'Lung Disease', 'm', '2003-07-14', ' B-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7322921, 'Miss Sandy Kozey', '21386 Legros Fords A', '+41(4)69306667', 'Heart Disease', 'f', '1999-09-10', 'B+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7589946, 'Ryann Thompson', '10409 Royal Parkway\n', '09053306890', 'Diabetes', 'f', '1982-04-29', ' A-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7661305, 'Mr. Jerrod Auer Jr.', '7002 Lorenza Loaf Ap', '1-911-929-5252', 'Blood Pressure', 'm', '1973-06-02', ' AB+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (7953991, 'Kacey Blanda', '62077 Shanny Lane\nLa', '305-306-7457x0', 'NULL', 'f', '1976-06-18', 'AB-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (8688724, 'Trent Yundt', '636 Willms Mount\nWes', '469.926.6204', 'Diabetes', 'f', '1992-10-25', ' B-', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (8710503, 'Zelda Corwin', '502 Pacocha Court\nWe', '(809)256-0435', 'Asthma', 'm', '1992-07-10', 'B+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9183614, 'Shemar Eichmann Sr.', '86354 Cornelius Hill', '1-758-704-3324', 'Lung Disease', 'm', '1996-01-09', 'O+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (9950871, 'Mr. Dax Muller', '48414 Jaida Walk\nSch', '1-096-906-3107', 'Heart Disease', 'm', '1975-06-13', 'AB-', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (11383241, 'Prof. Carlos Weber', '55480 Lonny Shores S', '747.596.9003', 'Diabetes', 'm', '1980-04-07', ' B-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (13806943, 'Dr. Kolby Emmerich DDS', '457 Legros Radial Ap', '00298692785', 'NULL', 'f', '1990-11-16', 'O+', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (16456952, 'Kaylie Torphy Sr.', '2906 Bins Fords Apt.', '05813042947', 'Heart Disease', 'm', '1970-03-30', 'AB-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (22768136, 'Earlene Schamberger MD', '311 Rogahn Garden Ap', '002.777.5665x1', 'Blood Pressure', 'f', '1980-09-15', ' A-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (23198283, 'Darren O\'Connell', '543 Hermann Loaf Apt', '+54(1)08675310', 'Heart Disease', 'f', '2004-04-04', 'O-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (25936716, 'Prof. Kristian Hintz', '5933 Schoen Gateway\n', '+99(1)51180082', 'Heart Disease', 'f', '2017-05-31', ' B-', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (26486819, 'Abbigail Schaden V', '71866 Clotilde Wells', '1-981-499-1975', 'Asthma', 'f', '2004-12-06', 'O+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (37956497, 'Emmy Ledner III', '287 Alicia Corner\nFl', '817-359-0435x0', 'Heart Disease', 'm', '2010-05-27', ' AB+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (38026657, 'Miss Martina Gulgowski', '4086 Wehner Vista\nJu', '+14(9)24831377', 'NULL', 'f', '1990-05-16', ' A-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (42610774, 'Dr. Lilla Becker II', '2074 Morar Pass\nLake', '(169)244-3654', 'Blood Pressure', 'm', '1977-07-13', ' AB+', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (50150379, 'Miss Jammie Lesch', '2167 Quigley Forks A', '+32(5)20881665', 'Lung Disease', 'f', '1993-11-27', 'B+', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (55592124, 'Miss Missouri Heaney', '418 Rodriguez Locks\n', '(831)014-0345x', 'Blood Pressure', 'f', '2000-01-05', 'O+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (58920427, 'Tierra Kessler Sr.', '9980 Hirthe Drive Su', '919-395-4022', 'Heart Disease', 'm', '1978-01-19', ' AB+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (60745365, 'Chaim Kuvalis', '678 Charity Islands\n', '477.228.6153x7', 'Lung Disease', 'f', '1990-04-29', 'A+', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (61013714, 'Pat Frami', '10995 Fatima Lights ', '(351)480-0158', 'Diabetes', 'f', '2007-05-12', 'O+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (61600963, 'Garfield Nolan', '2867 Klocko Freeway ', '1-507-680-2303', 'Lung Disease', 'f', '2001-04-04', 'O+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (62652602, 'Lelah Mertz MD', '37880 Kenneth Ridge\n', '1-725-972-1398', 'Diabetes', 'm', '1978-12-28', 'AB-', 4);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (67660462, 'Mrs. Jacklyn Bernier', '4400 Marianne Island', '1-298-425-3189', 'Asthma', 'm', '2016-10-12', 'A+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (76121882, 'Prof. Deondre Pfeffer IV', '60990 Kuhic Lodge Ap', '(773)352-2835x', 'Diabetes', 'm', '1989-04-20', 'O-', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (77351411, 'Ms. Vivienne Marks IV', '5981 Dickens Manor\nW', '1-997-907-7482', 'Lung Disease', 'f', '1972-06-11', ' B-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (80309032, 'Casper Schuster', '1774 Meaghan Place\nD', '560.474.9297x7', 'Lung Disease', 'm', '2006-01-17', ' B-', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (81323721, 'Dr. Eriberto Spinka', '8888 Eichmann Circle', '211-304-5950', 'Blood Pressure', 'm', '1993-02-06', 'B+', 54932289);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (87547643, 'Isadore Dibbert', '0420 Sylvester Forks', '+95(2)20359641', 'Diabetes', 'f', '1983-10-18', 'AB-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (88809668, 'Genoveva Rosenbaum', '9982 Mike Radial\nNew', '04778941991', 'Diabetes', 'f', '1978-01-20', 'O-', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (93665980, 'Ms. Gina Hauck MD', '95059 Jacobson Shore', '(796)258-9009', 'Blood Pressure', 'f', '2008-04-08', 'AB-', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (98732091, 'Coleman Ryan', '330 Karlie Inlet Apt', '1-227-836-9706', 'Blood Pressure', 'm', '1970-02-21', ' AB+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (99810809, 'Delmer Feest', '2368 Feeney Heights ', '(224)690-5317x', 'Diabetes', 'm', '1989-09-29', 'B+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (105689825, 'Abelardo Jast Jr.', '9926 Kulas Forge Sui', '182.970.1509x5', 'Blood Pressure', 'm', '1981-08-31', 'A+', 394927219);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (133271822, 'Prof. Richard Ferry', '786 Cremin Forges Su', '256.570.0341', 'NULL', 'm', '2012-07-13', ' AB+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (145514791, 'Caden Cassin', '73313 Lynch Mission ', '1-263-984-8461', 'Asthma', 'm', '2003-08-09', 'AB-', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (151310487, 'Mr. Justice Okuneva', '0509 Eleanore Spur\nP', '815.415.1930x3', 'Heart Disease', 'f', '1999-05-22', 'O+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (174712543, 'Royal Lebsack IV', '4726 Twila Pike\nGrah', '264.651.0138', 'Asthma', 'f', '1979-03-18', 'AB-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (236386635, 'Curt Lesch', '28734 Stokes Cliff\nE', '103.263.2013x2', 'Heart Disease', 'm', '1990-02-01', 'AB-', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (294187949, 'Hermina Hyatt', '02676 Gislason Lodge', '643.724.7335x6', 'Asthma', 'm', '1973-01-02', 'B+', 8);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (304694608, 'Prof. Francisco Schoen Jr', '5425 Smitham Pine\nKu', '06802565580', 'Blood Pressure', 'm', '2015-09-05', 'AB-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (371426023, 'Prof. Johnathon Abshire', '0137 Ima Valley Suit', '733.993.3854x0', 'NULL', 'm', '2008-06-30', 'B+', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (389083475, 'May Lubowitz', '558 Jeff Causeway\nSo', '1-623-169-4758', 'Blood Pressure', 'f', '1997-12-19', 'O+', 7953);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (429492299, 'Paula Stoltenberg Jr.', '48749 Jameson Creek ', '115.953.5687x9', 'Lung Disease', 'f', '1996-01-23', 'AB-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (437217928, 'Dr. Maurice Strosin', '7304 Champlin Greens', '097.184.7129x9', 'Asthma', 'm', '1980-10-07', 'B+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (450419333, 'Eden Reichert', '23933 Schumm Overpas', '(886)898-6795x', 'Heart Disease', 'f', '1996-12-13', 'O-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (451683871, 'Everett Hayes', '2531 Eugenia Unions ', '834.288.4247x0', 'Lung Disease', 'f', '1996-10-15', 'O+', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (470809743, 'Geovanni Wolf', '7756 Ruben Ports Apt', '(950)704-6041', 'Asthma', 'f', '1971-11-25', 'B+', 762722);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (515460722, 'Keaton Prosacco', '457 Delfina Throughw', '766.643.9285', 'Heart Disease', 'f', '1998-09-08', 'O+', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (543957490, 'Javon Strosin', '0132 Wolf Throughway', '(418)926-3933x', 'Lung Disease', 'f', '2013-12-17', 'AB-', 46);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (591448986, 'Amari Douglas', '9659 Kuhic Club\nNeom', '+22(6)44991153', 'Asthma', 'f', '1990-06-20', 'AB-', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (629033064, 'Vada Keeling', '04212 Helmer Curve\nE', '149-826-4152', 'Blood Pressure', 'm', '2015-03-12', 'O+', 56);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (634844933, 'Dr. Wilford Weissnat Sr.', '77566 Euna Land\nMaya', '1-039-669-7223', 'Diabetes', 'm', '1979-06-17', 'B+', 87651216);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (661004980, 'Stewart Carroll', '499 Homenick Avenue\n', '06372760864', 'Heart Disease', 'm', '2014-10-06', 'O+', 309675013);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (701067613, 'Dr. Amya Jones', '296 Kozey Mission Su', '(638)456-0980x', 'Blood Pressure', 'm', '2012-06-04', ' AB+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (742408996, 'Mrs. Shania Wyman Jr.', '20615 Swaniawski Fal', '1-086-550-2943', 'Diabetes', 'm', '1999-07-20', ' B-', 359532);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (745542695, 'Osvaldo Olson', '95773 Arlene Vista A', '153.054.0973x1', 'Lung Disease', 'm', '1997-03-02', 'A+', 9187);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (752888022, 'Blake Stracke', '3243 Brown Ford\nLake', '790.794.4620', 'NULL', 'f', '1985-02-01', ' A-', 9033940);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (782521642, 'Maxine Rau MD', '81175 Nitzsche Squar', '07872291088', 'Lung Disease', 'f', '2015-01-02', 'O+', 76959982);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (797954976, 'Carol Bosco', '47681 Ulices Island ', '998.945.5752x7', 'Diabetes', 'f', '1981-03-14', 'AB-', 38);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (804560751, 'Mr. Wallace Sporer', '563 Christopher Port', '(104)920-2364x', 'Blood Pressure', 'f', '1999-10-23', 'O+', 8205);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (812258671, 'Lizeth Lemke', '863 Catherine Groves', '08917992205', 'Diabetes', 'f', '1993-07-28', ' AB+', 0);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (893041846, 'Nicola Johnson', '0219 Cassin Knoll Ap', '+01(9)11092597', 'Lung Disease', 'm', '1982-05-19', ' AB+', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (942409590, 'Wiley Deckow', '197 Prohaska Path Ap', '341-924-7339', 'Diabetes', 'm', '2006-10-06', 'O-', 866067274);
INSERT INTO `donor` (`Donor_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (968540844, 'Mr. Shad Schultz DVM', '721 Smith Locks Suit', '(587)682-3476x', 'Blood Pressure', 'f', '1973-04-08', 'B+', 359532);

INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (0, 'Liza Bogisich', '6615 Wolff Shore Sui', '(946)049-1190x', ' Stomach Disease', 'm', '1984-11-05', 10, ' B-', 8);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (1, 'Darien Rippin Sr.', '02467 Mertz Light\nEv', '(980)843-5381', ' Blood Disease', 'm', '1982-09-25', 3, 'A+', 4381);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (2, 'Piper Mills', '30122 Tillman Route\n', '632-149-9581', ' Ebola Virus', 'm', '2006-02-17', 8, 'AB-', 40);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (3, 'Fletcher Kulas II', '82915 Edgar Groves S', '(714)973-7646x', ' Stomach Disease', 'f', '1977-07-31', 2, 'AB-', 5);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (4, 'Kurtis Terry', '0048 Klein Alley Apt', '1-215-780-0383', ' Corona Virus', 'm', '1973-11-07', 6, 'O+', 46);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (5, 'Aiden Halvorson Jr.', '22986 Cristopher Sta', '1-180-305-3573', ' Cancer', 'm', '2016-01-21', 3, ' AB+', 1774);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (6, 'Miss Angela Brown', '84472 Oberbrunner Lo', '722.055.5982', ' Stomach Disease', 'm', '1971-06-15', 8, ' A-', 7292);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (7, 'Lazaro Sauer', '366 Cloyd Underpass ', '1-792-172-2474', ' Liver Disease', 'f', '2007-03-22', 1, 'B+', 56487);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (9, 'Candice Grimes', '715 Libbie Gardens\nS', '258-213-3790', ' Corona Virus', 'm', '1983-09-09', 10, 'AB-', 4);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (13, 'Dr. Arden Hansen V', '370 Thiel Manors\nPor', '997.985.7420', ' Hemophilia', 'm', '2006-09-26', 9, 'A+', 20);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (19, 'Jacinthe Donnelly', '6785 Steuber Mill Su', '02544933018', ' Cancer', 'm', '1977-02-25', 7, ' A-', 80);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (20, 'Lenna Jerde', '179 Pouros Lane\nStro', '(170)627-7774x', ' Cancer', 'f', '1976-11-20', 3, 'O-', 16);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (25, 'Prof. Isabella Barton', '176 Destin Lake Suit', '(811)083-7791', ' Blood Disease', 'f', '2005-07-15', 9, ' AB+', 6948);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (40, 'Erling Wintheiser', '3092 Kautzer Loop Su', '191-907-3270x9', ' Stomach Disease', 'f', '2004-07-23', 10, 'A+', 335560);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (42, 'Prof. Buddy Stracke', '2144 Nicolas Shores\n', '+65(9)41155476', ' Blood Disease', 'f', '1981-05-07', 5, 'AB-', 12619);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (45, 'Werner Hayes', '842 Martine Springs ', '1-480-363-5616', ' Hemophilia', 'm', '2002-04-14', 3, 'AB-', 211);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (52, 'Davion Grady Sr.', '46217 Ferry Drive Su', '(991)788-0939x', ' Liver Disease', 'f', '2016-02-07', 2, ' B-', 42);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (55, 'Baby Satterfield', '651 Nolan Extension\n', '(772)769-0681x', ' Blood Disease', 'm', '1993-01-08', 1, 'O+', 1184);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (56, 'Lindsey Wisozk', '3545 Leta Ports\nEast', '1-693-316-9171', ' Stomach Disease', 'm', '1994-05-20', 2, ' A-', 302377);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (60, 'Miss Francesca Nader', '317 Hahn Common\nNort', '1-790-187-7952', ' Ebola Virus', 'f', '1976-01-28', 5, 'A+', 8693);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (64, 'Savanna Heathcote', '4514 Josephine Point', '1-699-695-2587', ' Corona Virus', 'm', '1974-01-31', 2, 'AB-', 69839);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (66, 'Breanna O\'Hara', '6153 Vernie Row\nDelp', '944-643-1381x0', ' Hemophilia', 'f', '2009-11-07', 1, 'B+', 4082);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (75, 'Prof. Jacinthe Little DVM', '389 Mireille Road\nNe', '1-403-429-8903', 'Heart Disease', 'f', '2004-11-28', 9, 'B+', 47336);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (81, 'Dr. Felicia Klein', '203 Toy Ford Suite 6', '(432)813-0739x', ' Hemophilia', 'm', '2000-02-16', 4, 'O+', 64264);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (84, 'Annie Ratke', '37043 Louisa Plains ', '(637)011-5725x', ' Cancer', 'm', '2010-11-22', 4, ' B-', 6821);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (87, 'Elias Mraz', '055 Abby Springs\nMac', '1-291-135-3723', ' Ebola Virus', 'f', '1998-08-29', 3, ' A-', 4894);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (90, 'Estel Ferry', '92730 Ida Plain Apt.', '1-908-159-0327', ' Lung Disease', 'm', '1982-04-13', 3, 'O-', 84257);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (91, 'Prof. Mason Schaefer', '179 Ratke Motorway A', '(001)943-0420x', ' Ebola Virus', 'm', '1993-04-13', 8, 'O+', 61930);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (96, 'Nikko Kohler', '8920 Jaylan Court Su', '352.358.3784x6', ' Ebola Virus', 'f', '1987-07-27', 6, ' B-', 43842);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (143, 'Prof. Wilfredo Kling Jr.', '74831 Leannon Crossr', '395.487.5478', ' Lung Disease', 'm', '2007-01-02', 5, ' A-', 9690);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (151, 'Marianna Douglas', '685 Thora Skyway\nWes', '549-391-5759x2', ' Lung Disease', 'f', '2017-05-10', 10, 'AB-', 69);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (163, 'Prof. Clint Renner', '44237 Koss Islands A', '591.948.4830', ' Cancer', 'f', '2006-09-10', 2, 'B+', 3531);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (343, 'Clarissa Mitchell', '8676 Legros Mews\nSou', '1-419-292-9837', ' Corona Virus', 'f', '2004-09-05', 6, 'B+', 55644);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (388, 'Bonita Weimann', '82550 Kiehn Lake Apt', '586.441.7741', ' Liver Disease', 'f', '2003-10-17', 7, ' A-', 47);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (544, 'Hazle Predovic', '1162 Hamill Plaza Su', '335-178-0267', ' Cancer', 'm', '1985-02-24', 3, 'A+', 5037);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (580, 'Mrs. Roslyn Connelly', '621 Trey Forges Suit', '669.790.6559x2', ' Blood Disease', 'm', '2001-06-29', 10, 'B+', 7);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (593, 'Prof. Bernadine Senger IV', '56301 Ruby Knoll Apt', '965.225.6723', ' Liver Disease', 'm', '1990-04-27', 3, ' B-', 7325);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (642, 'Columbus Schuppe', '7789 Halvorson Divid', '+93(7)94428813', ' Corona Virus', 'm', '1973-03-02', 9, 'AB-', 9);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (676, 'Jared Durgan', '79135 Adeline Island', '1-368-015-6224', ' Liver Disease', 'f', '2015-02-27', 3, 'O+', 433418);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (824, 'Cleta Watsica', '151 Johathan Locks S', '492-089-3681x6', ' Lung Disease', 'f', '1973-02-05', 10, 'A+', 451);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (908, 'Mr. Ryder Spencer', '647 Rod Burg\nNew Ben', '00052766039', ' Stomach Disease', 'f', '1987-09-19', 9, ' A-', 53);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (951, 'Prof. Evert Bradtke', '2566 Steuber Radial ', '(505)801-2052', ' Liver Disease', 'm', '1999-08-20', 4, ' A-', 522535);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (980, 'Dr. Kendall Koch III', '40490 Kemmer Cape Su', '1-120-590-6631', ' Stomach Disease', 'f', '1983-03-11', 1, 'B+', 324020);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (1740, 'Kathlyn Fisher', '95752 Effertz Path S', '1-669-033-3502', 'Heart Disease', 'f', '1995-03-12', 6, ' B-', 336527);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (3328, 'Tressie Smith', '674 Theresa Trail\nWa', '767.491.5324x3', ' Hemophilia', 'f', '2016-11-15', 10, 'O-', 756);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (4381, 'Catherine Satterfield', '0116 Rau Burgs\nSouth', '789.158.0058', ' Liver Disease', 'f', '1994-03-18', 4, ' B-', 255);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (4422, 'Gertrude Hansen DVM', '7792 Enrique Shores\n', '(080)146-7820x', 'Heart Disease', 'm', '1971-03-23', 7, 'AB-', 2155);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (5344, 'Gavin Murray', '811 Treutel Greens\nS', '1-169-105-9579', ' Lung Disease', 'm', '1975-11-26', 3, ' A-', 94799);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (6446, 'Grayson Bosco DVM', '03424 Anna Crest Sui', '753-147-3087x0', ' Blood Disease', 'm', '2003-02-10', 3, ' AB+', 847);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (6740, 'Chadrick Kirlin', '80387 Collier Isle A', '691.579.5610', ' Stomach Disease', 'f', '1997-01-03', 6, ' B-', 3306);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (7751, 'Mr. Lorenza Heathcote', '4038 Thelma Lodge\nHe', '070-763-5497x6', ' Cancer', 'f', '1976-11-06', 8, 'B+', 2);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (8714, 'Mrs. Savannah Jerde Jr.', '583 Shayna Field\nEud', '(500)785-3962x', ' Liver Disease', 'f', '2004-10-18', 4, 'A+', 8230);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (8790, 'Ms. Tomasa Hahn IV', '879 Rippin Inlet\nPor', '899-526-2599x2', ' Cancer', 'f', '2010-03-26', 2, 'O-', 52951);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (8878, 'Efrain Collins', '6933 Mraz Islands Su', '1-567-839-3006', ' Stomach Disease', 'f', '2000-06-10', 9, ' A-', 208673);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (16048, 'Deanna Ward', '31157 Sylvan Pines\nM', '188-544-3154', ' Corona Virus', 'f', '2008-09-14', 5, 'O+', 449);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (20942, 'Mr. Luis Bayer', '06988 Ritchie Crossi', '918-191-6397x4', ' Lung Disease', 'm', '1991-06-26', 3, 'A+', 44);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (33155, 'Eldred Daugherty', '3696 Lubowitz Lane\nA', '(599)889-7579', ' Cancer', 'm', '2010-02-06', 2, ' A-', 6563);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (47206, 'Mrs. Margarette Goodwin D', '4788 Octavia Fall\nJa', '489-799-6981', ' Cancer', 'f', '1987-01-04', 1, ' B-', 1918);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (56848, 'Ellie O\'Kon', '6399 Vella Glen\nReyf', '645.882.0886', ' Corona Virus', 'f', '2004-12-04', 10, 'O-', 210158);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (62647, 'Hillard Lockman', '93349 Padberg Manors', '562.641.3753', ' Hemophilia', 'f', '1970-05-27', 1, ' B-', 120642);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (63395, 'Prof. Estevan McClure Sr.', '72408 Emory Streets ', '769-311-1555', ' Lung Disease', 'm', '2014-09-20', 4, 'A+', 98);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (67042, 'Miss Ciara Kris DVM', '53706 Elta Brook Apt', '192-975-1206x5', 'Heart Disease', 'f', '1971-05-06', 1, 'A+', 897);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (69951, 'Raphael Frami', '9281 Cayla Throughwa', '227.307.3625x1', 'Heart Disease', 'f', '2018-08-20', 3, ' AB+', 24516);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (82037, 'Pauline Smith', '473 Wintheiser Squar', '(856)884-6135x', ' Corona Virus', 'm', '2003-02-22', 1, ' AB+', 68);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (84188, 'Ramona Sporer', '7090 Moore Tunnel Su', '1-195-094-6500', 'Heart Disease', 'f', '1984-02-03', 9, 'A+', 305);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (89465, 'Mrs. Pearlie Mohr', '70307 Gaston Place\nL', '+11(8)27903726', ' Hemophilia', 'm', '1989-05-25', 2, 'AB-', 617298);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (94009, 'Charlene Parisian', '675 Lesley Turnpike ', '438.318.8217x0', ' Cancer', 'm', '1996-02-27', 2, 'B+', 143);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (155321, 'Keon Dare V', '36114 Bertram Run\nKe', '326.430.2637x0', ' Lung Disease', 'f', '2009-04-02', 2, ' B-', 49);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (179380, 'Prof. Silas Raynor', '24975 Eryn Key\nMitch', '+72(1)18506657', ' Liver Disease', 'f', '1993-05-06', 7, 'O+', 2597);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (193761, 'Magdalena Brekke', '366 Angelina Stream ', '02098916524', ' Lung Disease', 'm', '1999-03-07', 9, 'O+', 66);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (289043, 'Glenna Considine', '901 Rahul Terrace Ap', '069-577-6945x7', ' Blood Disease', 'm', '1978-04-08', 1, 'B+', 335503);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (293205, 'Esta Frami', '85171 Medhurst Prair', '376-384-5397x3', ' Blood Disease', 'f', '1993-10-14', 8, ' B-', 827);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (316858, 'Caesar Turner', '3515 Parisian Shoal\n', '119-952-5008x9', ' Blood Disease', 'f', '1985-01-07', 7, 'A+', 8598);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (343695, 'Mrs. Kaelyn Kshlerin V', '75804 Funk Orchard A', '(613)399-5120x', ' Stomach Disease', 'f', '1982-05-24', 10, 'O-', 335996);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (483092, 'Franco Sawayn Jr.', '06352 Alize Overpass', '+66(1)36597891', ' Stomach Disease', 'm', '1987-03-28', 5, ' AB+', 63954);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (505027, 'Elta Metz', '7173 Friesen Pike Su', '402-066-3131x2', ' Stomach Disease', 'm', '2017-12-19', 5, 'O-', 9095);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (587598, 'Ismael Krajcik', '2061 Viviane Burgs A', '(957)764-3726', ' Ebola Virus', 'f', '2015-01-10', 2, ' A-', 38);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (643848, 'Ms. Kathryn Heller Jr.', '753 Bailey Drive Apt', '068-365-2504x3', 'Heart Disease', 'm', '2010-01-21', 1, ' AB+', 79);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (827976, 'Jermain Zulauf DVM', '734 Bergnaum Vista\nA', '084.473.6908x1', 'Heart Disease', 'm', '2005-03-06', 4, 'O+', 185718);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (996998, 'Dr. Gail Bergstrom Jr.', '5257 Weimann Pass\nJa', '(052)198-6015x', ' Cancer', 'm', '2008-10-22', 9, 'A+', 78);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (1583570, 'Alfonso Ritchie', '748 Athena Station\nH', '1-634-897-3192', ' Cancer', 'f', '1974-06-28', 9, 'AB-', 21484);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (1610141, 'Dr. Jeanie Greenfelder', '553 Kuvalis Walks\nEa', '176-136-7986', ' Stomach Disease', 'm', '2016-12-11', 6, ' AB+', 16424);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (2855260, 'Andrew Kemmer III', '4556 Justen Vista Su', '04392856947', ' Stomach Disease', 'f', '1987-04-11', 7, ' AB+', 576625);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (3261737, 'Julie Cruickshank', '950 Jennifer Through', '+27(7)57526844', ' Blood Disease', 'm', '1978-07-13', 9, ' A-', 71);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (3570313, 'Mr. Keyon Hauck Jr.', '3818 Jeffrey Row Sui', '1-633-896-2715', ' Blood Disease', 'm', '1977-04-27', 8, 'AB-', 8205);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (5244348, 'Mafalda Koelpin', '0709 Sim Fords Apt. ', '(480)315-8217x', ' Liver Disease', 'f', '2018-12-03', 3, ' B-', 651);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (5322026, 'Prof. Della Fadel I', '939 Stark Viaduct Su', '273.086.3456', ' Blood Disease', 'f', '2001-02-02', 5, 'A+', 39);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (7696806, 'Gilberto Rippin', '84050 Emmerich Road ', '+19(0)06306020', ' Hemophilia', 'f', '1982-02-14', 9, ' AB+', 2704);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (7987077, 'Melany Abbott', '1515 Stoltenberg Uni', '(889)741-4248', 'Heart Disease', 'm', '2014-08-27', 8, 'B+', 23);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (8218067, 'Dr. Lilian Balistreri II', '027 Mann Canyon\nJess', '(554)524-3642x', ' Blood Disease', 'm', '1997-11-21', 9, ' B-', 529);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (8465666, 'Dr. Ahmed Medhurst PhD', '06066 Goldner Roads\n', '048.304.4725', ' Stomach Disease', 'f', '1977-06-07', 9, 'O+', 301296);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (9200850, 'Addison Beier', '6641 Leanna Crescent', '1-420-024-5606', ' Liver Disease', 'm', '1992-09-03', 9, 'O-', 33030);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (9630802, 'Sabrina Collier MD', '348 Christiansen Vie', '(179)455-9358', 'Heart Disease', 'f', '2019-06-07', 5, ' AB+', 5228);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (16120336, 'Mr. Avery Lebsack', '225 Ledner Walks\nNor', '264-229-1741', ' Lung Disease', 'm', '2013-06-01', 6, ' AB+', 2986);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (19451436, 'Prof. Pink Cole', '855 Breitenberg Walk', '770-368-5227x6', ' Cancer', 'f', '1976-07-19', 2, 'B+', 1583);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (26477886, 'Tremayne Durgan', '0611 Rita Knolls Apt', '836.241.6706x2', 'Heart Disease', 'f', '1976-12-23', 4, ' AB+', 2858);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (47030337, 'Dr. Elmira Buckridge', '820 McDermott Park\nL', '825.862.7497x4', ' Stomach Disease', 'm', '2013-05-30', 9, 'O+', 26);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (50303248, 'Wilburn Medhurst', '2783 Andrew Light Ap', '475-051-3525', 'Heart Disease', 'm', '2014-04-07', 8, ' B-', 37793);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (51162619, 'Dr. Skye Ebert', '257 Crystal Vista\nNe', '892-700-1284x0', 'Heart Disease', 'f', '2009-08-04', 4, ' B-', 14760);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (52448737, 'Jules Mosciski', '31512 Heathcote Driv', '1-791-477-6073', ' Corona Virus', 'f', '1987-04-02', 2, ' AB+', 1);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (67738460, 'Shanel Bednar', '35230 Hyatt Fords Su', '1-424-974-2526', ' Lung Disease', 'f', '2011-05-31', 9, 'B+', 635);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (76686098, 'Nedra Langworth', '14716 Dino Village S', '100-818-3312', ' Liver Disease', 'm', '2006-01-10', 3, 'O-', 967);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (79851428, 'Daphnee Cassin', '76910 Eichmann Avenu', '580-146-0271', ' Stomach Disease', 'm', '1987-11-03', 4, 'A+', 96);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (84593356, 'Annamarie Cummerata', '1576 Wanda Land Apt.', '(710)750-9967', ' Stomach Disease', 'm', '1996-07-21', 6, 'O+', 459);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (87175009, 'Rahsaan Halvorson', '2224 Jairo Greens\nLa', '802.312.8626', 'Heart Disease', 'm', '2000-03-09', 1, 'AB-', 955);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (94215962, 'Mark Frami', '5271 Crooks Pass Apt', '(052)004-8264', ' Corona Virus', 'f', '1996-08-22', 3, 'O+', 19699);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (99907311, 'Easton Koepp MD', '716 Liam Throughway\n', '+87(4)41541242', ' Cancer', 'm', '1997-01-23', 6, 'O+', 0);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (100601444, 'Prof. Abdul Casper Sr.', '04554 Harber Mountai', '1-370-801-4947', ' Stomach Disease', 'm', '1992-12-02', 5, 'O+', 8137);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (205460539, 'Kiera Connelly', '23558 Jayden Springs', '539.418.2388x8', ' Liver Disease', 'm', '2017-04-28', 3, 'A+', 7281);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (355687561, 'Prof. Destinee Gutkowski', '8751 Willms Vista Ap', '348-452-0022x8', ' Corona Virus', 'm', '1993-07-17', 4, 'A+', 4449);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (371925484, 'Mrs. Bernadette Ritchie', '09484 Bernhard Missi', '(308)858-5694', ' Stomach Disease', 'm', '1984-12-23', 4, 'O-', 4458);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (478640544, 'Kory Anderson', '20118 Maudie Burgs A', '439-724-7156x1', ' Cancer', 'f', '1996-11-06', 10, 'A+', 16500);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (548881580, 'Davonte Bode', '309 O\'Reilly Tunnel ', '00158900847', ' Blood Disease', 'm', '1987-05-31', 10, 'O+', 13435);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (622135033, 'Meredith Witting', '2952 Lowe Skyway\nWes', '347-271-4509x0', ' Lung Disease', 'f', '2007-08-27', 6, 'AB-', 448991);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (637057470, 'William Nikolaus', '184 Milton Gardens A', '683-983-4778x5', ' Liver Disease', 'f', '1976-06-11', 8, 'AB-', 32790);
INSERT INTO `recipient` (`recip_ID`, `Name`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (718263898, 'Dr. Darrell Cruickshank J', '20750 Abshire Port A', '1-328-178-7365', ' Cancer', 'f', '2006-09-23', 3, 'B+', 27);

INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('10021009', ' A-', '473', '18.07', 'No', 16);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('1', 'AB-', '472', '14.44', 'No', 342993);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('10', 'A+', '466', '17.05', 'Yes', 30988);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('101104', 'B+', '466', '14.29', 'Yes', 7953991);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('1028', 'O-', '471', '13.06', 'Yes', 50150379);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('10852', 'B+', '468', '12.34', 'Yes', 977336);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('110', 'A+', '475', '13.12', 'No', 28607);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('11755', ' AB+', '467', '17.65', 'Yes', 158);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('12', ' B-', '467', '16.3', 'Yes', 7274);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('123234', 'O-', '466', '16.43', 'Yes', 42610774);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('1355', 'AB-', '473', '15.77', 'Yes', 520646);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('140', 'O-', '468', '16.41', 'No', 13806943);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('142514', 'O-', '466', '17.67', 'Yes', 88809668);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('16', ' AB+', '465', '13.23', 'No', 839);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('160140', 'AB-', '466', '16.94', 'Yes', 92705);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('169135', 'B+', '466', '15.81', 'Yes', 4069134);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('17', 'O+', '471', '13.02', 'No', 661004980);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('170', ' B-', '470', '17.07', 'No', 6649);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('173', ' B-', '470', '16.28', 'Yes', 4194);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('1742', 'O-', '466', '19.07', 'Yes', 37956497);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('175707', ' A-', '465', '15.7', 'Yes', 19);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('184648', 'A+', '465', '15.11', 'No', 44877);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('185235', ' A-', '475', '13.69', 'Yes', 33);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('190552', 'O-', '470', '13.56', 'Yes', 26486819);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('1989', 'AB-', '468', '18.1', 'Yes', 72278);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2', ' AB+', '467', '17.02', 'No', 517);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('20', 'AB-', '466', '12.34', 'No', 564217);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('203334', 'B+', '465', '12.4', 'No', 812156);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('206506', ' A-', '471', '14.61', 'Yes', 54);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2085', 'B+', '471', '15.31', 'Yes', 2660476);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('209', ' A-', '468', '19.77', 'Yes', 0);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('21459', 'AB-', '473', '14.31', 'Yes', 636294);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('22177', 'O+', '472', '12.87', 'Yes', 591448986);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2269', 'AB-', '475', '16.33', 'Yes', 440634);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('228', 'B+', '470', '17.24', 'No', 882175);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('237478', 'B+', '469', '17.33', 'No', 7242467);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('240078', 'O-', '474', '12.98', 'No', 11383241);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2404', ' A-', '472', '13.96', 'No', 40);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2460', ' A-', '465', '17.32', 'No', 61);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('24758', ' B-', '473', '19.16', 'Yes', 7352);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('247661', 'A+', '472', '15.17', 'Yes', 59461);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('253', 'O+', '473', '14.14', 'No', 437217928);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('257215', 'B+', '473', '14.98', 'No', 2531199);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('259661', 'O-', '470', '12.94', 'Yes', 81323721);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('259706', ' AB+', '474', '18.85', 'Yes', 624);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('260139', 'AB-', '470', '19.96', 'No', 93186);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('260794', 'O-', '473', '19.66', 'Yes', 99810809);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('262849', 'O+', '469', '19.18', 'No', 543957490);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('27082', 'B+', '475', '17.94', 'No', 7661305);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('2722', 'O-', '475', '15.36', 'No', 60745365);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('28', 'AB-', '468', '19.74', 'No', 81781);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('28283', ' A-', '467', '13.83', 'No', 27);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('28344', ' B-', '469', '18.91', 'Yes', 9778);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('294251', 'O-', '475', '16.55', 'No', 87547643);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('297340', 'O-', '468', '13.69', 'Yes', 77351411);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('299424', 'AB-', '466', '16.67', 'No', 73691);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('3', ' A-', '469', '12.28', 'Yes', 68);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('301004', 'O-', '471', '14.04', 'No', 98732091);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('31', ' AB+', '469', '18.32', 'Yes', 479);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('312', ' A-', '473', '19.99', 'Yes', 3);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('321682', 'O+', '474', '18.95', 'Yes', 942409590);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('322', ' AB+', '470', '17.07', 'No', 86);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('33', 'O+', '474', '15.69', 'Yes', 893041846);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('34', 'O+', '468', '12.72', 'Yes', 236386635);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('340159', ' AB+', '468', '17.33', 'Yes', 750);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('348651', ' AB+', '465', '15.69', 'No', 1089);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('362315', ' AB+', '475', '16.77', 'Yes', 116);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('36465', 'O+', '469', '16.16', 'No', 804560751);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('37', 'B+', '474', '15.84', 'No', 7322921);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('371929', ' A-', '467', '19.75', 'Yes', 72);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('38', ' A-', '466', '17.65', 'Yes', 75);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('381116', 'AB-', '466', '19.88', 'No', 182572);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('382110', 'A+', '465', '15.21', 'Yes', 20429);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('387526', 'O-', '475', '16.31', 'No', 16456952);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('39523', 'B+', '471', '13.34', 'No', 6213026);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('39979', 'A+', '465', '12.05', 'Yes', 33093);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('4', ' B-', '465', '16.99', 'Yes', 2999);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('4018', ' A-', '475', '15.92', 'No', 53);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('404', ' B-', '470', '19.55', 'No', 7939);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('409166', ' B-', '470', '13.18', 'Yes', 4853);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('41', ' B-', '471', '17.68', 'Yes', 7452);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('413076', 'B+', '466', '15.45', 'No', 5800148);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('42', 'B+', '469', '18.33', 'No', 9183614);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('431882', ' B-', '470', '14.33', 'No', 7711);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('431973', ' A-', '471', '14.97', 'Yes', 7);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('432104', ' B-', '474', '18.53', 'Yes', 2070);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('432171', 'A+', '471', '14.66', 'No', 44694);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('434637', ' AB+', '465', '13.31', 'No', 376);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('436095', 'B+', '474', '15.44', 'No', 5172437);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('43901', 'O+', '474', '18.8', 'Yes', 304694608);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('449534', ' AB+', '474', '19.66', 'Yes', 88);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('450291', ' AB+', '469', '19.95', 'No', 84);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('4508', ' AB+', '474', '15.22', 'No', 824);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('45307', 'B+', '475', '17.2', 'Yes', 1871807);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('453326', 'A+', '467', '12.36', 'No', 23263);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('460924', ' B-', '472', '12.95', 'No', 9510);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('47', ' AB+', '472', '19.98', 'No', 516);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('470', ' B-', '469', '19.26', 'No', 2380);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('483618', 'AB-', '470', '15.61', 'Yes', 380916);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('48742', 'O-', '467', '17.63', 'No', 22768136);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('48970', ' B-', '467', '17.82', 'No', 9738);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('49', 'O-', '472', '16.81', 'No', 61600963);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('49119', ' A-', '470', '17.69', 'Yes', 6);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('5', ' A-', '475', '12.87', 'No', 26);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('511350', 'B+', '467', '19.4', 'No', 823269);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('51591', 'AB-', '468', '18.17', 'No', 87691);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('52', ' B-', '469', '18.25', 'Yes', 9661);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('523739', 'AB-', '470', '16.74', 'Yes', 75552);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('530381', 'O+', '469', '14.41', 'No', 470809743);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('536340', ' AB+', '466', '19.43', 'Yes', 321);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('54', 'O+', '465', '15.29', 'No', 515460722);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('540166', ' AB+', '471', '18.7', 'No', 259);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('5532', 'O+', '470', '17.48', 'Yes', 745542695);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('55413', 'O+', '466', '14.62', 'Yes', 429492299);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('555191', 'O+', '474', '14.7', 'No', 968540844);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('563025', 'B+', '468', '13.2', 'No', 3543342);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('564122', ' A-', '466', '18.73', 'Yes', 9);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('5645', 'AB-', '474', '13.86', 'Yes', 254265);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('5675', ' B-', '472', '15.85', 'Yes', 7591);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('57185', 'B+', '467', '18.79', 'No', 984449);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('571935', 'A+', '472', '19.33', 'Yes', 63234);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('57222', ' AB+', '471', '13.09', 'No', 493);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('57542', ' AB+', '465', '15.39', 'No', 682);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('578351', 'AB-', '468', '18.3', 'No', 588937);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('579655', ' AB+', '465', '17.38', 'No', 141);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('58', 'O+', '467', '13.93', 'Yes', 634844933);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('581706', ' B-', '475', '16.22', 'No', 1732);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('58815', ' B-', '469', '12.45', 'No', 3929);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('58898', ' AB+', '475', '15.63', 'No', 327);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('59017', 'AB-', '470', '14.82', 'Yes', 336722);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('593145', 'O+', '473', '19.88', 'No', 797954976);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('595', 'B+', '474', '17.57', 'No', 4425092);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('6', ' A-', '472', '18.14', 'No', 76);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('601607', ' A-', '474', '17.54', 'Yes', 58);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('60342', ' B-', '473', '14.45', 'No', 3902);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('6062', 'O-', '469', '18.63', 'No', 105689825);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('610597', 'O+', '468', '18.86', 'No', 145514791);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('6145', 'B+', '473', '12.07', 'No', 4863296);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('628780', ' AB+', '475', '13.27', 'No', 85);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('6361', 'O+', '465', '15.62', 'Yes', 174712543);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('636146', 'B+', '472', '16.6', 'No', 7589946);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('636805', ' B-', '466', '13.78', 'Yes', 9945);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('645624', 'O-', '467', '16.7', 'Yes', 25936716);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('654', 'AB-', '465', '12.56', 'Yes', 85509);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('656', 'AB-', '473', '19.06', 'No', 140760);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('65731', ' B-', '473', '17.62', 'No', 14135);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('658730', ' AB+', '467', '19.13', 'Yes', 118);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('667529', 'O-', '465', '17.24', 'Yes', 93665980);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('668402', 'B+', '473', '14.42', 'No', 6332758);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('668435', 'A+', '465', '17.04', 'Yes', 25599);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('671752', 'B+', '475', '16.26', 'Yes', 4161746);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('67911', 'B+', '466', '18.59', 'No', 8688724);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('68', ' AB+', '472', '15.06', 'Yes', 151);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('682489', ' B-', '467', '13', 'Yes', 5853);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('684154', ' AB+', '467', '18.97', 'No', 1093);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('688846', 'AB-', '467', '14.14', 'Yes', 299496);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('69', ' A-', '473', '12.51', 'No', 62);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('69160', 'A+', '470', '13.95', 'Yes', 23649);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('69475', 'O-', '471', '16.75', 'No', 67660462);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('69516', 'B+', '472', '14.8', 'Yes', 868029);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('699188', 'O-', '467', '19.21', 'Yes', 76121882);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('7', ' A-', '465', '18.76', 'Yes', 4);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('712348', ' AB+', '467', '13.2', 'Yes', 311);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('714588', ' B-', '475', '17.15', 'Yes', 9137);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('717', ' AB+', '467', '14.97', 'Yes', 715);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('717915', ' A-', '470', '13.67', 'Yes', 23);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('721228', ' AB+', '470', '19.37', 'Yes', 431);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('7222', 'AB-', '465', '18.92', 'No', 200002);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('728360', 'B+', '468', '15.81', 'Yes', 1232384);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('731515', ' B-', '471', '17.85', 'No', 3208);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('733941', ' AB+', '470', '18.52', 'No', 968);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('734385', 'O+', '473', '17.71', 'No', 451683871);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('735298', 'B+', '475', '19.62', 'Yes', 905109);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('73531', ' B-', '469', '13.37', 'Yes', 2077);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('73681', 'O+', '468', '15.24', 'Yes', 701067613);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('737500', 'B+', '468', '12.95', 'Yes', 859674);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('741562', ' AB+', '469', '15.2', 'Yes', 880);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('746021', 'AB-', '472', '12.84', 'Yes', 633822);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('750691', ' B-', '473', '18.81', 'No', 1389);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('755', 'B+', '470', '18.64', 'Yes', 5073864);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('758529', ' A-', '472', '16.41', 'Yes', 30);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('760288', 'O-', '474', '16.26', 'No', 23198283);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('76334', 'AB-', '466', '19.92', 'No', 78013);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('768899', 'O+', '471', '13.95', 'Yes', 742408996);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('771951', ' A-', '468', '15.2', 'Yes', 50);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('7744', 'B+', '472', '12.89', 'No', 937639);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('78150', 'A+', '469', '14.79', 'Yes', 29048);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('787506', 'AB-', '470', '16.5', 'No', 90967);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('79', ' B-', '475', '14.55', 'No', 1759);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('794143', 'O+', '470', '16.56', 'No', 450419333);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('795', ' A-', '472', '15.57', 'No', 5);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('799885', 'B+', '471', '16.78', 'No', 6460555);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8', ' AB+', '475', '12.54', 'No', 81);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8127', 'O+', '467', '13.24', 'No', 629033064);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8191', ' AB+', '466', '16.04', 'Yes', 139);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('82796', 'O-', '475', '19.88', 'Yes', 9950871);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('83', 'AB-', '473', '17.03', 'Yes', 495332);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('834125', 'O-', '467', '12.48', 'Yes', 133271822);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('838383', 'A+', '470', '12.38', 'Yes', 43419);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('844', 'A+', '473', '19.59', 'Yes', 40697);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('849936', 'AB-', '475', '13.52', 'Yes', 290748);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('851616', 'B+', '466', '18.4', 'No', 1016929);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8520', 'O-', '474', '15.71', 'No', 61013714);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('85463', ' AB+', '467', '19.79', 'No', 396);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('859', 'O+', '473', '13.49', 'No', 151310487);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('862352', 'B+', '473', '14.63', 'No', 8710503);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('865219', ' A-', '471', '19.33', 'No', 1);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('866098', 'O-', '471', '15.15', 'No', 55592124);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8724', 'A+', '465', '17.99', 'Yes', 48506);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8750', ' AB+', '469', '14.09', 'No', 446);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('88', 'AB-', '468', '18.73', 'Yes', 612081);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('883268', ' B-', '470', '17.36', 'Yes', 9530);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('885393', 'AB-', '469', '13.75', 'No', 267439);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('888071', 'O-', '465', '17.6', 'No', 62652602);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('89701', 'O+', '472', '19.67', 'No', 371426023);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('8985', ' AB+', '465', '19.95', 'No', 796);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9', ' B-', '470', '15.92', 'Yes', 9292);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('90843', 'B+', '469', '12.75', 'No', 3444897);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('909716', 'O+', '469', '12.34', 'No', 812258671);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('911979', 'B+', '475', '18.1', 'No', 4363414);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9132', 'B+', '475', '18.21', 'No', 949663);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('917', 'O+', '469', '17.55', 'No', 389083475);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('920430', ' AB+', '472', '13.59', 'No', 87);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('920489', 'AB-', '472', '14.08', 'Yes', 456326);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('926444', ' A-', '474', '16.07', 'Yes', 79);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('93', ' A-', '468', '13.26', 'No', 70);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9356', 'A+', '474', '16.38', 'No', 54830);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('939187', 'O-', '466', '15.57', 'No', 58920427);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9443', 'B+', '471', '12.68', 'Yes', 723753);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9457', ' AB+', '472', '12.53', 'No', 756);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('95342', ' A-', '468', '15.55', 'No', 17);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('955206', 'O-', '471', '12.1', 'Yes', 38026657);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('9564', 'AB-', '474', '19.1', 'Yes', 69653);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('958', 'O-', '469', '15.53', 'No', 80309032);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('960', 'AB-', '467', '17.52', 'Yes', 633234);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('961', 'O+', '473', '14.1', 'No', 294187949);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('96638', 'AB-', '465', '17.93', 'No', 99086);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('970292', ' A-', '467', '15.42', 'No', 2);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('97333', 'A+', '466', '18.88', 'Yes', 31389);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('97772', 'O+', '474', '16.13', 'Yes', 782521642);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('989769', 'O+', '467', '16.53', 'Yes', 752888022);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('99', 'AB-', '474', '19.87', 'No', 87717);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('99330', 'A+', '465', '14.88', 'Yes', 21344);

INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (0, 'Reina Waelchi', '546 Reynolds Gateway', '406-595-7534x3', 'night', 'm', '2014-01-23', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1, 'Hazle Huel I', '35874 Harley Knoll A', '1-390-749-3716', 'night', 'm', '1974-04-17', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2, 'Mr. Maxime Treutel PhD', '222 Tillman Park Apt', '171-087-6997x8', 'night', 'm', '2013-12-12', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3, 'Dr. Gracie Schulist DVM', '94400 Carter Crossin', '03260130223', 'morning', 'f', '2003-03-31', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (4, 'Rosalyn Medhurst', '77583 Lisandro Ridge', '1-558-985-1888', 'morning', 'm', '2017-11-15', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (5, 'Preston Spinka', '38925 Brakus Court A', '768.899.1861x9', 'night', 'm', '2008-11-19', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (6, 'Evert Bogisich', '3892 Lula Motorway\nC', '+86(5)76064379', 'night', 'm', '1970-02-28', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7, 'Dr. Reanna Metz', '19799 Nils Inlet\nLak', '011.306.3126', 'morning', 'f', '1999-07-07', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (8, 'Mark Glover', '4465 Okuneva Extensi', '+31(9)17015813', 'morning', 'm', '2011-05-21', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (17, 'Beulah Keebler', '2937 Craig Camp\nSout', '(620)782-0263', 'morning', 'f', '2004-05-05', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (26, 'Sandra Schaefer DVM', '183 Ronny Pine Apt. ', '286.595.3527', 'night', 'f', '1989-06-12', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (28, 'Jay Hilpert', '0235 Hudson Harbors ', '(081)277-6615x', 'night', 'm', '2016-07-29', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (31, 'Miss Therese McGlynn MD', '619 Caleigh Pine Sui', '938-087-5952x3', 'night', 'f', '1981-04-29', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (41, 'Joanne Quitzon II', '160 Claud Haven Suit', '792-514-9512x5', 'morning', 'm', '1997-11-26', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (53, 'Miss Karlee Lockman MD', '8387 Leo Squares Sui', '183.494.6045', 'night', 'm', '1987-03-15', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (56, 'Dawn Thompson I', '974 Leannon Walk\nBot', '395.032.2529x2', 'morning', 'f', '2008-11-15', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (57, 'Jonas Rempel', '0267 Quigley Place\nN', '1-967-542-8739', 'morning', 'm', '1975-04-20', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (59, 'Jazmyn Kirlin', '239 Maribel Spring\nM', '588.733.9157', 'night', 'f', '2017-03-10', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (60, 'Prof. Tillman Weissnat Jr', '854 Hammes Pine\nShei', '(131)173-8666x', 'night', 'm', '1974-04-10', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (67, 'Jaquelin Cassin DVM', '0047 Bauch Tunnel\nRu', '686.721.7782', 'morning', 'f', '2007-06-05', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (73, 'Sebastian Gaylord', '126 Harris Curve\nCha', '(364)596-3582x', 'night', 'm', '1997-11-28', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (83, 'Emelia Bogan', '0184 Amya Well Apt. ', '1-058-479-3098', 'night', 'f', '2003-03-22', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (92, 'Anahi Boehm', '9389 Adele Route\nWes', '757-836-8182', 'night', 'f', '1976-12-19', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (93, 'Korey Bayer DDS', '57809 Friesen Statio', '464-189-9938x6', 'morning', 'm', '2006-01-19', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (94, 'Pauline Cremin', '50468 Bednar Through', '016.849.4150', 'night', 'm', '2004-03-04', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (97, 'Dorcas Erdman', '116 Gregg Terrace Ap', '1-032-553-2572', 'night', 'f', '1970-06-06', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (132, 'Sonia Stark Sr.', '16043 Mattie Dale\nNo', '(439)169-7131x', 'morning', 'm', '2019-11-01', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (183, 'Toni Jakubowski', '878 Durgan Village A', '(624)850-4514', 'morning', 'f', '1977-09-12', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (241, 'Karl Cummerata', '254 Karina Corner\nRo', '191.767.6339x4', 'night', 'm', '1984-11-06', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (252, 'Anne Howell DDS', '2942 Angela Ville\nSo', '1-397-691-4488', 'morning', 'f', '2004-08-28', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (528, 'Virgil O\'Conner', '37806 Lockman Plain ', '01424203946', 'morning', 'f', '1980-05-29', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (608, 'Chauncey Wisozk', '82989 Ariel Spurs\nBa', '520-080-0396', 'morning', 'm', '2007-10-27', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (643, 'Alanna Lakin', '65551 Zena Courts Ap', '(283)913-2761x', 'night', 'm', '1971-02-25', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (646, 'Prof. Lorena Ledner DDS', '0695 Ted Junction Ap', '(674)613-0174x', 'morning', 'f', '2006-10-30', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (680, 'Dr. Madisen Beatty Sr.', '1403 Fadel Common Ap', '1-545-484-7139', 'morning', 'm', '2008-08-18', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (764, 'Mr. Denis Gutmann', '5747 O\'Reilly Rapid ', '1-444-175-2680', 'night', 'f', '1982-02-11', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (827, 'Lucienne Nader', '34060 Jonas Crossing', '626.340.3454', 'morning', 'f', '1999-06-27', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (836, 'Dr. Oliver Runolfsson', '04984 Nora Meadows\nL', '(948)262-0548x', 'morning', 'm', '2019-05-16', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (876, 'Belle Daugherty', '74077 Destiney Park\n', '600.010.9516x9', 'morning', 'f', '1997-07-09', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (877, 'Therese Bahringer', '00310 Wisozk Alley A', '032-613-2102', 'morning', 'f', '2014-02-17', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (880, 'Sonya Barton', '16347 Fisher Parkway', '630-901-2590', 'night', 'm', '1996-09-23', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (954, 'Neal Rempel', '87418 Torp Ports Sui', '147-016-9963x4', 'morning', 'f', '1981-03-16', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (974, 'Janae Hilpert Sr.', '79098 Collier Bypass', '609.290.9558', 'night', 'm', '2016-02-11', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1295, 'Albert Nader', '3905 Watsica Groves\n', '027.879.6514x8', 'night', 'f', '2002-10-27', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1618, 'Irving Erdman', '93619 Gusikowski Cou', '242.588.6188', 'night', 'm', '1970-04-16', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1739, 'Mallory Waelchi II', '50223 Marion Bridge\n', '(648)026-4497x', 'morning', 'm', '2009-07-11', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2532, 'Marcel Lynch', '274 Burley Landing S', '364-373-9515', 'morning', 'm', '1987-03-16', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2970, 'Kailee Powlowski', '127 Pearl Glens\nWest', '+98(6)87652601', 'night', 'f', '2019-10-14', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3001, 'Emiliano Ondricka Jr.', '2947 Marina Flats Ap', '430.848.3992x0', 'night', 'm', '1997-11-18', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3373, 'Marge Morar', '06368 Heath Motorway', '1-492-557-7239', 'night', 'm', '2008-12-26', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3451, 'Bartholome Buckridge', '425 Alda Shores Suit', '1-882-840-7745', 'night', 'f', '1975-01-03', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3874, 'Sherwood Barrows', '16299 Addison Ridge\n', '767.005.8385x3', 'morning', 'f', '2007-09-24', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (4139, 'Arely Heaney III', '282 Pfannerstill Ove', '1-988-572-8503', 'morning', 'f', '1999-04-21', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (4428, 'Millie Rath', '37223 Fidel Fork Apt', '1-611-000-3144', 'morning', 'f', '1998-12-30', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (5606, 'Ottilie Bruen', '8001 Sawayn Rest\nPor', '587-825-1787', 'morning', 'm', '1973-09-10', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (5800, 'Ross Langosh', '364 Domenick Meadow\n', '456.446.8761x7', 'night', 'f', '1997-06-04', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (6688, 'Matilde Gusikowski', '34623 Talon Circles\n', '1-205-376-6360', 'night', 'f', '1996-01-14', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (6956, 'Raegan Hirthe', '899 Claude Way\nBotsf', '744.700.2161', 'night', 'm', '2016-05-14', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7435, 'Jany Halvorson', '023 Schmitt Mountain', '1-870-770-8830', 'morning', 'f', '1975-07-01', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7734, 'Prof. Herbert Fisher', '8334 Erdman Ridge Ap', '+12(2)12406595', 'morning', 'f', '2014-10-26', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7766, 'Brigitte Boehm V', '73788 Sherman Landin', '1-747-173-4034', 'night', 'm', '1992-12-09', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7823, 'Prof. Haleigh Fritsch MD', '75139 Marie Burgs Ap', '(699)883-3754x', 'morning', 'f', '2017-07-22', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7988, 'Prof. Modesto Smith IV', '17805 Spinka Lane\nNo', '424.181.8090x0', 'night', 'm', '2005-12-23', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (8300, 'Kale Purdy', '9311 Maymie Highway\n', '1-861-636-2831', 'morning', 'm', '2012-04-26', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (9996, 'Mrs. Felipa Hauck Jr.', '507 Towne Radial Apt', '+36(5)31741482', 'night', 'm', '2010-02-05', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (12473, 'Dr. Clovis Lang', '41380 Altenwerth Mis', '578.326.0480x3', 'morning', 'f', '2018-02-16', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (14138, 'Lelia Bartoletti', '7985 Johnpaul Fork\nM', '1-510-343-9769', 'night', 'm', '1977-09-23', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (23108, 'Prof. Guadalupe Batz', '9953 Hermann Estate\n', '1-964-725-0762', 'night', 'f', '1979-08-10', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (27837, 'Yvette Schuppe', '8141 Goyette Loaf Ap', '187-970-3621x4', 'morning', 'f', '1979-10-20', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (37686, 'Mr. Scot Cole III', '6783 Jamir Ridge\nCru', '(937)154-6686x', 'night', 'm', '1986-04-28', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (49107, 'Grayce Connelly', '80202 Ernest Light S', '140.762.1599x5', 'night', 'f', '1971-07-11', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (50024, 'Prof. Frederick Wilkinson', '1095 Joesph Lane Apt', '215.833.4131x3', 'night', 'm', '2009-09-28', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (51293, 'Casandra Flatley', '559 Santos Land Suit', '185.606.5332x3', 'night', 'f', '2006-05-17', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (51402, 'Riley Crist', '114 Virgil Vista Apt', '(829)586-2716', 'night', 'm', '1989-10-07', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (52647, 'Ms. Emilia Bednar', '3555 Witting Alley A', '051.960.1257x5', 'night', 'm', '2013-06-20', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (52999, 'Diamond Denesik', '29020 Padberg Plain\n', '+55(9)90213116', 'morning', 'f', '2000-02-23', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (53614, 'Ms. Winifred Greenholt II', '90402 Solon Plaza\nTr', '+66(0)78163858', 'morning', 'm', '2018-11-30', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (63294, 'Mrs. Lillie Hegmann V', '3864 Stehr Fields\nNe', '050-362-9602', 'morning', 'f', '1974-12-25', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (65480, 'Georgiana Farrell', '54746 Malinda Vista\n', '1-917-769-8415', 'morning', 'f', '1977-04-17', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (67653, 'Mr. Jean Langworth', '990 Kunze Manor\nShan', '021-802-1083x2', 'morning', 'f', '2013-02-16', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (68134, 'Miss Alize Borer Sr.', '782 Heathcote Wall A', '1-122-578-3419', 'morning', 'm', '1996-10-08', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (70142, 'Chaz Huel', '03204 Cecil Burgs\nPo', '1-682-503-0754', 'morning', 'm', '2006-12-01', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (73848, 'Wayne Hirthe', '519 Parisian Stream\n', '438.099.7601x9', 'night', 'm', '2009-09-30', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (83711, 'Jaqueline Walsh', '45148 Judson Plaza A', '03786864865', 'night', 'f', '2018-06-13', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (89474, 'Elza Christiansen', '883 Hudson Mission A', '(522)096-3486', 'night', 'm', '2001-11-14', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (93661, 'Hailey Swift', '1172 Torp Vista Suit', '1-310-388-8311', 'morning', 'm', '2002-03-30', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (95358, 'Christiana Hermann', '90154 Walter Plaza\nI', '1-985-434-2853', 'night', 'f', '2007-08-27', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (109160, 'Lizzie Flatley', '34733 Cristal Plaza\n', '841-624-0153', 'night', 'f', '1993-03-02', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (125250, 'Prof. Ladarius Romaguera ', '743 Joshua Highway S', '571-055-7764x3', 'night', 'f', '2001-03-14', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (178746, 'Dr. Jeffrey Nicolas', '853 Olson Lock\nEulal', '357.879.1007x2', 'night', 'f', '2019-03-11', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (189092, 'Alexandre Orn', '34310 Lemke Divide\nB', '894-687-2111x9', 'night', 'f', '1999-01-13', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (406971, 'Bulah Kuhic', '51421 Alysha Prairie', '1-999-754-4959', 'morning', 'f', '1998-06-05', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (443722, 'Clifford Paucek', '6131 Price Radial\nSo', '423.511.3883x3', 'night', 'f', '1972-04-12', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (471199, 'Randy Jast', '180 Prudence Lock\nRo', '01378946677', 'morning', 'm', '2011-10-17', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (548892, 'Jasmin Kuphal', '8389 Murl Trail\nLake', '(702)405-7239', 'night', 'm', '1986-11-13', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (571132, 'Crystal Ernser', '42357 Josefina Oval ', '524.878.5899x2', 'night', 'f', '1989-11-14', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (574346, 'Dr. Adrian Fisher II', '3657 Turner Island A', '1-258-610-3193', 'morning', 'f', '1987-10-16', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (614501, 'Annabel Strosin IV', '22441 Emily Well Sui', '1-502-014-1259', 'night', 'f', '1992-01-19', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (659385, 'Miss Joana Heathcote', '0160 Viviane Ramp\nEl', '(918)981-2479x', 'morning', 'm', '1977-09-06', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (738753, 'Jeremie Flatley', '26826 Sofia Knoll Su', '429.463.2213x3', 'night', 'f', '1992-12-06', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (814092, 'Mr. Kendall Ernser', '625 Justice Manor Su', '821-886-0357x3', 'night', 'm', '1995-09-07', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (897197, 'Ignacio Gottlieb', '6518 Uriel Forges Su', '(323)737-8682x', 'night', 'f', '1978-10-02', 866067274);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (900824, 'Prof. Guido Kessler III', '3302 Gaylord Avenue ', '00494560306', 'night', 'm', '1999-07-11', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (928653, 'Lora Reichel', '214 Cruickshank Walk', '855.180.2684', 'morning', 'm', '2019-09-02', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1322348, 'Michael Treutel', '253 Florian Path\nSch', '266.642.8897', 'night', 'f', '1975-06-23', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1779295, 'Dr. Lyric Gleichner DDS', '2894 Schimmel Vista ', '1-936-137-3921', 'morning', 'f', '1971-07-05', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2309248, 'Dr. Josue Rodriguez Jr.', '5418 Jast Extensions', '+49(5)25482176', 'night', 'm', '2006-02-18', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2578975, 'Mr. Arnoldo Olson Sr.', '99632 Zieme Key Suit', '143-156-3170', 'morning', 'm', '1973-01-16', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (2714117, 'Alfredo Legros I', '74544 Ruecker Height', '07893021853', 'morning', 'f', '2002-03-01', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (3680884, 'Mr. Keshaun Baumbach Jr.', '257 Jeramie Skyway S', '1-558-091-1865', 'morning', 'm', '2019-03-27', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (4254428, 'Annetta Legros', '3775 Feest Summit\nWe', '469-667-8752x8', 'morning', 'm', '1978-04-10', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (4948978, 'Sadye Marquardt', '4282 Ankunding Shore', '(053)713-1361x', 'morning', 'f', '1997-11-16', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (6283637, 'Belle Baumbach', '77910 Pouros Crossin', '014-202-5739x5', 'night', 'm', '2002-10-31', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (6663733, 'Mrs. Lottie Stokes V', '834 Kailee Branch\nSa', '560-413-8810x9', 'night', 'm', '2008-01-19', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7044820, 'Dustin Satterfield', '9263 Linnea Prairie ', '+81(0)88975814', 'morning', 'f', '2001-07-24', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7047035, 'Alex Gusikowski', '5752 Randi Views\nAyl', '909-895-6654x7', 'morning', 'm', '2001-02-15', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7500082, 'Fay Keeling II', '5789 Bartell Burgs S', '+80(3)86206667', 'morning', 'm', '1973-04-28', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (7661598, 'Mr. Reggie Hermann III', '582 Afton Center\nNor', '618-347-3473x0', 'morning', 'm', '2013-09-14', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (8364889, 'Zion O\'Reilly', '189 Brandt Fall\nEast', '1-137-142-5324', 'morning', 'm', '2002-11-04', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (8496654, 'Albina Schimmel', '42354 Laurie Vista\nS', '779.306.3013x4', 'morning', 'f', '1973-07-04', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (49448664, 'Hilbert Quitzon', '589 Reichert Inlet\nE', '444.596.2420x5', 'morning', 'm', '2004-06-09', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (52741698, 'Monserrate Wyman', '064 Rohan Springs\nBu', '(331)902-6608', 'morning', 'm', '2001-05-19', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (62071982, 'Haskell Kassulke', '920 Gage Key Apt. 06', '566.126.2898x8', 'morning', 'm', '2013-08-21', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (69767783, 'Ludie Dare', '292 Rubye Parkways\nP', '(005)568-3827', 'morning', 'm', '1986-09-27', 394927219);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (71014602, 'Mr. Paxton Lubowitz I', '4001 Sallie Stream A', '016.033.6474', 'night', 'm', '1972-05-27', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (73074803, 'Prof. Murphy Williamson D', '9291 Schowalter Vill', '(867)854-3032x', 'night', 'm', '1998-06-15', 54932289);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (73359257, 'Karl Prohaska MD', '48107 Chaya Freeway ', '737-020-5707x4', 'night', 'm', '2002-06-21', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (74686936, 'Marquis Powlowski DVM', '5750 Leora Streets A', '847.998.2448x6', 'morning', 'm', '1976-03-16', 8);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (76068964, 'Ms. Christina Spencer', '29063 Ross Crest\nWes', '879-375-3001x6', 'night', 'f', '2014-04-22', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (77342135, 'Mossie Predovic', '6144 Stoltenberg Isl', '601.764.1336x5', 'morning', 'm', '1982-10-02', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (79184820, 'Kameron Murray', '4769 Deckow Run Apt.', '+97(9)80875986', 'morning', 'f', '1972-07-10', 76959982);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (88868097, 'Halle Ortiz', '95952 Dietrich Locks', '(222)248-3833x', 'morning', 'f', '2004-02-20', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (90503652, 'Treva Runte', '95614 Asa Hills Apt.', '945.573.4020', 'night', 'm', '2020-03-08', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (96828390, 'Travis Jacobs PhD', '7228 Cassandre Field', '766.062.5328x2', 'morning', 'm', '1979-01-13', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (187643178, 'Aniyah Adams', '6361 Danielle Mews A', '235.749.0832', 'morning', 'f', '1975-08-09', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (253064167, 'Ezequiel Runolfsdottir', '7680 Crooks Knoll\nVo', '798-106-3299x3', 'night', 'm', '2005-12-26', 762722);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (327094458, 'Maude Terry', '05735 Gennaro Road S', '1-589-112-3784', 'morning', 'm', '1976-11-08', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (370136624, 'Dr. Oleta Kessler', '1430 Dickinson Isle ', '1-580-860-2927', 'night', 'f', '1983-03-30', 8205);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (389950497, 'Emma Pacocha MD', '593 Howe Pass\nEast E', '08722086707', 'morning', 'f', '1970-10-19', 9187);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (401726787, 'Randall Gulgowski', '318 Devonte Road Apt', '1-302-421-0592', 'night', 'm', '1973-12-03', 38);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (419866408, 'Vidal Runte', '479 Ubaldo Throughwa', '318-911-5925', 'night', 'm', '1995-07-27', 87651216);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (424677167, 'Karley Durgan', '147 Rice Passage Apt', '1-520-505-0343', 'night', 'f', '1985-07-13', 309675013);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (513195683, 'Marjolaine Ziemann', '01905 Kyra Spurs Sui', '100-802-6523', 'night', 'm', '2005-10-15', 4);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (565336131, 'Maxine Wilderman', '926 Rosina Point Apt', '682-453-3750', 'morning', 'f', '2018-11-21', 0);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (569752533, 'Miss Clarabelle Rodriguez', '1074 Cassidy Row Apt', '305.193.4366', 'night', 'f', '2006-11-27', 359532);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (591170621, 'Jovanny Reichel', '7497 Maureen Divide ', '(299)634-0359x', 'night', 'm', '1985-02-09', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (734852097, 'Miss Carmela Grady Sr.', '7542 Eugenia Tunnel ', '(604)851-6565x', 'night', 'm', '2006-09-29', 7953);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (771622600, 'Jimmie Bergstrom', '7669 Frances Parkway', '+48(9)46743604', 'morning', 'm', '2002-10-05', 9033940);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (880278714, 'Desmond Simonis', '36493 Linda Loop Apt', '(524)615-4739x', 'morning', 'm', '1990-05-31', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (914283804, 'Antonina Purdy', '015 Funk Manors Apt.', '402.909.8055', 'night', 'f', '1992-07-21', 56);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (932300150, 'Maynard Corkery I', '64558 Marcelo Ramp\nE', '+27(8)41350943', 'night', 'm', '1988-10-30', 46);
INSERT INTO `staff` (`Staff_ID`, `Name`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (985800052, 'Annamae Satterfield', '1308 Powlowski Lane ', '546-843-4591x9', 'night', 'f', '1972-02-28', 8);

Select *
From Blood_Bank; 

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
Select bb_id, d_name
from blood_bank
where bb_id >= 100002;

Select *
From BBB;

Update staff
Set Phone = '955-712-4163'
Where Staff_Id = 143141;

Select * 
From Donor Natural Join Blood;

Select Staff.Staff_ID, blood_bank.bb_id
From Staff
LEFT OUTER JOIN blood_bank
ON staff.Bank_ID = blood_bank.bb_id;

Select Recipient.name as R_Name, Donor.name as D_Name
From Recipient, Donor
Where Recipient.donor_ID = Donor.Donor_ID;

Delete From Staff
Where Staff_ID = 143142;
