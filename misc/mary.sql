CREATE DATABASE BloodBank;
USE BloodBank;

CREATE TABLE b_bank (
  bb_ID int(9) NOT NULL primary key,
  bb_name varchar(25) NOT NULL,
  Address varchar(20),
  City varchar(20),
  State varchar(15),
  Phone varchar(14),
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
  bd_desc varchar(40),
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

INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (4, 'Voluptate', '919 Stanton Turnpike', 'Murphyshire', 'Nevada', '644.492.9262x8', 'Derrick Douglas');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (13, 'Voluptatum', '455 Mckenna Fall\nLak', 'Tremblaychester', 'NewJersey', '1-483-781-0131', 'Alycia Labadie');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (25, 'doloremque', '50838 Effertz Prairi', 'Lake Shanie', 'Ohio', '460-140-3834', 'Jaunita Schroeder');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (28, 'nesciunt', '6505 Schneider Ridge', 'Breitenbergtown', 'NewMexico', '07056551028', 'Lacey Shields');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (195, 'qui', '598 Tobin Flat\nSofia', 'West Marian', 'NewHampshire', '08256979638', 'Onie Ward');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (216, 'aspernatur', '70182 Vida Passage A', 'North Elroyside', 'NewYork', '(122)735-6060x', 'Elenora Hudson');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (252, 'occaecati', '977 Minerva Trace\nMa', 'Isaiasfort', 'Minnesota', '1-952-515-9428', 'Nina O\'Conner');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (355, 'eaque', '9203 Camryn Islands\n', 'McKenzieside', 'District of Col', '1-975-485-1376', 'Hermann Carter II');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (391, 'et', '4125 Lindgren Highwa', 'Ryleyhaven', 'Michigan', '396.126.8045x9', 'Mr. Ahmad Aufderhar');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (434, 'consequatur', '56004 Vandervort Sho', 'New Laura', 'Utah', '(364)591-0175x', 'Garland Langworth');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (442, 'quaerat', '698 Ward Lane\nStanto', 'Croninland', 'District of Col', '1-549-591-6720', 'Collin Howell');
INSERT INTO `b_bank` (`bb_ID`, `bb_name`, `Address`, `City`, `State`, `Phone`, `admin_Name`) VALUES (443, 'expedita', '1981 Karlie Fort Apt', 'South Mallieburgh', 'Georgia', '(054)527-4118x', 'Isidro Lind MD');

INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (12, 'labore', '87010 Travis Street ', 'South Glennie', 'Oregon', '(408)873-4850x', 25);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (100, 'voluptas', '0050 Vada Pike\nNeoma', 'Johnniemouth', 'Kentucky', '348-659-5146', 13);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (233, 'sint', '7200 Cummings Ville ', 'New Nina', 'SouthCarolina', '062.392.3244x7', 252);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (240, 'et', '3366 Manuela Walks A', 'South Toneyland', 'Maine', '322.535.1452x7', 355);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (302, 'ipsam', '2362 DuBuque Radial ', 'Lake Freeda', 'NorthDakota', '+99(8)77255847', 442);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (315, 'eos', '53545 Era Fields\nMck', 'Willmouth', 'Arizona', '(593)370-2276x', 434);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (317, 'tempora', '32615 Maxie Unions\nN', 'Schinnerville', 'SouthDakota', '530.397.7792', 28);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (318, 'qui', '8618 Gillian Lake\nFa', 'Abagailhaven', 'Minnesota', '04263869298', 4);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (337, 'nulla', '9225 Carter Junction', 'Zechariahberg', 'Nebraska', '1-841-212-7532', 25);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (453, 'quam', '56986 Caesar Keys Su', 'Nedtown', 'Hawaii', '(045)068-1507', 195);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (469, 'illo', '30346 Haley Ranch Ap', 'South Susannaview', 'Minnesota', '(166)809-8941x', 13);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (476, 'adipisci', '480 Swift Shore\nSout', 'Port Winonafurt', 'NewMexico', '1-225-890-4737', 434);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (530, 'corrupti', '9477 Jaskolski Ferry', 'East Berenice', 'Vermont', '(538)857-0358x', 443);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (565, 'aut', '42011 McClure Freewa', 'South Corine', 'Minnesota', '847-750-0125x5', 391);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (578, 'sapiente', '848 O\'Keefe Path\nWes', 'Lake Elenahaven', 'Minnesota', '+71(2)11591034', 13);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (638, 'reprehenderit', '69101 Sammy Dam\nKaut', 'Benhaven', 'Virginia', '(506)064-9254x', 216);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (672, 'doloribus', '9510 Bednar Groves S', 'Eichmannburgh', 'Alaska', '286-726-1499x4', 28);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (719, 'iste', '67265 Gleason Lock A', 'Luettgenmouth', 'Idaho', '976-607-8512x0', 391);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (723, 'dolore', '19124 Isaias Road\nMe', 'Wunschview', 'Nebraska', '(308)110-5538', 216);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (737, 'placeat', '005 Izabella Well Su', 'Port Aniya', 'Kansas', '(352)160-2378', 4);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (748, 'omnis', '52619 Gloria Island ', 'Rueckerhaven', 'SouthDakota', '(538)543-5511x', 28);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (771, 'nisi', '3068 McKenzie Path S', 'Antoinettemouth', 'Wyoming', '1-332-449-6395', 4);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (773, 'fuga', '934 Bradly Fords Sui', 'Steuberton', 'Utah', '360-656-5054x7', 442);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (809, 'eum', '47569 Frankie Well S', 'Weimanntown', 'Iowa', '09439243811', 195);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (917, 'illum', '419 Delphia Corner A', 'Virgieshire', 'NorthCarolina', '1-810-587-9197', 355);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (922, 'reprehenderit', '465 Rolfson Alley Su', 'Sierrashire', 'Utah', '(673)729-8224x', 25);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (955, 'iste', '6731 Markus Island\nB', 'Schroederfort', 'Delaware', '326.462.1649', 252);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (956, 'id', '65982 Barrows Cove S', 'Jeffmouth', 'Wyoming', '924.125.7896', 216);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (966, 'eos', '724 Randal Knoll\nEma', 'North Fatima', 'WestVirginia', '(650)917-5325', 252);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (974, 'molestias', '332 Kitty Coves Apt.', 'Kozeyland', 'SouthDakota', '825.925.8817x8', 195);
INSERT INTO `blood_drive` (`bdrive_ID`, `bd_name`, `Address`, `City`, `State`, `Phone`, `bank_ID`) VALUES (987, 'eaque', '6717 Jesse Hollow Su', 'Brodymouth', 'Louisiana', '667.350.6052x5', 443);

INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1007, 'Casey Zemlak', '56406 Ward Mills Sui', '+29(0)03846294', '\"night\"', 'f', '2005-05-01', 355);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1014, 'Edgardo Tillman', '4027 Andreanne Field', '(713)193-9576x', '\"morning\"', 'f', '2012-11-18', 434);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1017, 'Kendall Becker', '089 Mills Keys Suite', '(407)275-1951x', '\"night\"', 'f', '2004-12-30', 4);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1018, 'Myriam Kub', '197 Blanda Stravenue', '051.179.9374x9', '\"night\"', 'm', '1976-08-12', 443);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1019, 'Mr. Delmer Heidenreich', '1862 Alfred Turnpike', '+10(7)47678669', '\"night\"', 'm', '1991-07-10', 442);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1020, 'Shirley Von', '8286 Cleta Dam\nSouth', '(758)293-6188x', '\"morning\"', 'm', '1980-12-05', 442);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1021, 'Bobby Schneider', '77870 Murray Port Su', '1-563-811-7839', '\"night\"', 'm', '2004-03-15', 28);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1023, 'Crystel O\'Connell', '3667 Streich Mount A', '1-235-998-7143', '\"morning\"', 'm', '1993-06-04', 391);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1028, 'Mr. Jaren Greenholt II', '23840 Moen Forges\nDo', '1-175-678-8172', '\"night\"', 'm', '2005-03-05', 252);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1029, 'Maritza Weber', '0804 Krystina Point ', '615-085-2075x2', '\"morning\"', 'f', '1989-09-08', 355);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1031, 'Dr. Aurelia Moore Jr.', '61462 Swift Ridges\nW', '878-847-4235', '\"morning\"', 'm', '1975-12-22', 13);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1042, 'Dr. Christop Lindgren DVM', '1584 O\'Kon Mission\nN', '(673)893-1282x', '\"morning\"', 'm', '2003-01-03', 4);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1043, 'Geraldine Grant', '080 Tevin Walk\nGrant', '124.161.2068x6', '\"morning\"', 'f', '1999-02-02', 25);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1046, 'Leonel McLaughlin', '398 German Lock Suit', '+23(9)11248921', '\"morning\"', 'm', '2014-08-24', 195);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1055, 'Sophie Hauck PhD', '85758 Maybell Radial', '(251)541-2454', '\"morning\"', 'm', '1985-03-24', 13);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1056, 'Ashtyn Welch', '70621 Merlin Roads A', '1-177-234-7192', '\"morning\"', 'f', '1996-05-16', 195);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1057, 'Sherwood Walker', '9755 Strosin Overpas', '774-994-0694', '\"night\"', 'f', '1982-03-18', 216);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1059, 'Cary Ledner', '4188 Moises Crossroa', '622.217.8192', '\"night\"', 'm', '2015-06-07', 25);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1062, 'Aiden Rice', '78179 Maximo EStates', '751-856-5526x3', '\"morning\"', 'm', '1991-12-18', 252);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1084, 'Ellie Swift', '7338 Heathcote Pike ', '611-084-9135', '\"morning\"', 'f', '2015-02-15', 4);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1086, 'Clifton Lakin', '97083 Santos Pine Su', '04312714160', '\"morning\"', 'm', '2013-02-10', 391);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1091, 'Woodrow Schuster', '25853 Bernice Mounta', '+95(2)29500708', '\"night\"', 'm', '1975-09-08', 216);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1095, 'Domenico Conn I', '12672 Anne Lakes\nPor', '(710)675-0159x', '\"morning\"', 'f', '1986-07-08', 28);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1097, 'Dr. Luigi VonRueden PhD', '1745 Emmalee Spring\n', '1-585-494-7352', '\"night\"', 'f', '1978-02-25', 443);
INSERT INTO `staff` (`Staff_ID`, `sname`, `Address`, `Phone`, `Shift`, `Gender`, `DOB`, `Bank_ID`) VALUES (1100, 'Bryce McKenzie V', '937 Austin Trail Sui', '354.066.8528x4', '\"morning\"', 'm', '1994-02-11', 434);

INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (132, 'Tillman Lang', '3331 Lebsack Park\nKe', '1-017-658-1589', 'Lung Disease', 'm', '1981-08-23', 'A+', 216);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (163, 'Miss Fae Kuhlman DDS', '633 Braun Neck\nNew J', '676-600-3355x1', 'Blood Pressure', 'm', '1992-05-13', 'O+', 391);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (166, 'Deangelo Corkery', '69050 Schimmel Missi', '1-326-041-0102', 'NULL', 'f', '2015-11-28', 'B+', 28);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (187, 'Juston Connelly', '559 Hoppe Ramp Apt. ', '961.563.5269', 'Asthma', 'f', '2001-06-17', 'O+', 195);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (197, 'Prof. Gonzalo Ferry', '5821 Evan Burg\nNorth', '+57(2)26943639', 'Diabetes', 'f', '1989-11-21', 'O+', 195);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (218, 'Daniela Rohan', '140 Macie Station\nPo', '(048)991-1092', 'Blood Pressure', 'm', '2019-10-20', 'O-', 13);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (302, 'Idella Mayer', '797 Jacobson Lights\n', '(759)017-6835', 'Lung Disease', 'f', '1979-11-16', 'AB-', 443);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (306, 'Cecile Rogahn', '136 Olson Villages A', '(657)937-0642x', 'Asthma', 'f', '2002-12-05', ' A-', 25);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (341, 'Maritza Stehr I', '080 Wilfredo Stream ', '(841)577-2343x', 'Heart Disease', 'm', '2012-04-01', ' A-', 355);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (432, 'Guillermo Harris', '4448 Kaleb Course Su', '924-796-3339x8', 'NULL', 'f', '1984-11-15', ' B-', 252);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (454, 'Wilfrid Bernier', '4039 Anthony Extensi', '142.124.2649', 'Heart Disease', 'm', '2013-07-30', ' A-', 25);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (488, 'Alberta Barrows I', '28301 Eduardo Square', '05345063372', 'NULL', 'm', '1987-03-09', ' B-', 216);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (512, 'Prof. Julia Williamson I', '903 Monty Neck\nKochv', '1-394-427-0667', 'Asthma', 'm', '2011-02-08', ' AB+', 4);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (513, 'Mr. Salvador Hudson', '869 Pfannerstill Est', '+35(4)82037066', 'Asthma', 'm', '2003-05-18', 'A+', 434);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (519, 'Prof. Isai Harris', '87945 Polly Stream\nN', '1-669-680-9482', 'Lung Disease', 'm', '1985-06-08', ' A-', 355);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (525, 'Andre Rempel', '603 Damaris Mountain', '707.508.1361x9', 'NULL', 'f', '2007-08-17', 'AB-', 391);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (531, 'Maud Anderson', '55018 Helene Coves A', '(181)708-7043', 'Blood Pressure', 'f', '1986-11-12', 'B+', 442);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (534, 'Reid Lowe', '70915 Aurelie Land A', '03825846292', 'Asthma', 'f', '2006-01-15', ' B-', 4);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (547, 'Prof. Judson Muller II', '8311 Skiles Mountain', '895.197.4606', 'Heart Disease', 'm', '2008-08-18', ' A-', 252);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (579, 'Darien Hand', '29772 Johnson Ramp S', '(969)341-5128x', 'Asthma', 'f', '1975-07-24', 'O-', 28);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (584, 'Mr. Erich Wolf II', '626 Onie Flat Apt. 1', '05367252343', 'Lung Disease', 'm', '1973-08-18', 'AB-', 391);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (611, 'Marc Kub', '934 Schmeler Cape\nSh', '(563)501-1100', 'Diabetes', 'f', '2003-03-18', ' B-', 25);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (633, 'Stuart Carter III', '38546 Keenan Traffic', '833-299-0141', 'Heart Disease', 'm', '1979-05-12', 'O-', 443);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (643, 'Giovani Leffler', '1085 Christiansen Vi', '(725)999-6992', 'Lung Disease', 'f', '2012-03-11', 'O-', 28);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (648, 'Gaetano Yost I', '035 Tessie Way Suite', '505.863.0891x0', 'Heart Disease', 'm', '1980-12-23', 'AB-', 355);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (665, 'Alexandrine Tillman V', '60638 Franecki Shoal', '592.710.5888x0', 'Diabetes', 'm', '2004-08-04', ' B-', 443);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (671, 'Samara Bahringer', '013 Johnson Stream S', '(140)502-8314x', 'Asthma', 'f', '1981-02-04', ' A-', 442);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (692, 'Maiya Powlowski', '335 Kris Greens Suit', '(424)029-3218x', 'NULL', 'm', '1997-11-06', 'AB-', 4);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (700, 'Josefa Davis', '7638 Dach Forges\nNew', '395.160.5380', 'NULL', 'm', '1990-11-02', 'A+', 13);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (741, 'Rosella Borer', '773 Valentine Isle A', '1-371-474-6528', 'Diabetes', 'f', '1996-01-17', 'O+', 4);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (751, 'Constantin Lebsack', '237 Elissa Ranch\nMra', '1-668-447-1990', 'Blood Pressure', 'm', '1971-06-03', ' B-', 13);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (766, 'Kasey Schaefer', '5159 Bogisich Shores', '+01(3)05212180', 'Lung Disease', 'm', '2000-03-09', 'AB-', 195);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (778, 'Trudie Nolan', '39466 Murphy Station', '1-761-469-9389', 'Diabetes', 'm', '1994-10-28', 'A+', 25);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (783, 'Dr. Forrest Reichel DDS', '5204 Aleen Hill\nPort', '+23(3)20432700', 'Heart Disease', 'f', '1993-05-06', ' AB+', 434);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (839, 'Rhiannon Fisher', '5929 Reilly Rapid\nEt', '837-685-5959x3', 'Lung Disease', 'f', '1977-06-26', ' B-', 252);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (858, 'Maximilian Erdman', '3356 Kuhlman Glen Su', '183.035.7989x8', 'Lung Disease', 'm', '2013-08-12', 'AB-', 434);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (866, 'Ellis Oberbrunner IV', '01732 Kyleigh Inlet\n', '+05(4)79900115', 'NULL', 'm', '2011-03-08', 'A+', 442);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (890, 'Christina Schimmel II', '6736 Prohaska Parkwa', '1-491-465-2745', 'Asthma', 'f', '1984-05-15', 'O+', 28);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (901, 'Mrs. Linnie Bernhard', '59776 Fay Fort\nGrime', '1-973-369-5768', 'Asthma', 'm', '2008-11-24', 'O-', 13);
INSERT INTO `donor` (`Donor_ID`, `dname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Blood_Type`, `Bank_ID`) VALUES (955, 'Dr. Torey Hoppe V', '8115 Leone Land Apt.', '(886)765-1697x', 'Diabetes', 'm', '1972-09-08', 'O+', 216);

INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('5', 'A+', '467', '12.51', 'Yes', 778);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('10', 'AB-', '473', '16.99', 'No', 525);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('100', 'O-', '466', '15.2', 'Yes', 633);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('13', 'AB-', '469', '15.99', 'No', 584);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('16', 'O+', '467', '14.63', 'Yes', 741);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('17', 'A+', '468', '12.41', 'Yes', 512);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('22', 'A+', '474', '16.65', 'No', 132);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('23', 'A-', '466', '15.77', 'Yes', 547);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('24', 'O+', '472', '18.51', 'No', 955);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('28', 'B-', '466', '18.09', 'Yes', 751);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('29', 'B-', '475', '19.17', 'Yes', 611);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('30', 'B+', '466', '18.23', 'No', 166);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('32', 'O-', '471', '13.88', 'No', 901);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('34', 'O+', '475', '16.01', 'Yes', 163);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('36', 'B-', '466', '16.23', 'Yes', 488);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('4', 'A-', '465', '12.72', 'Yes', 519);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('41', 'O-', '471', '17.71', 'No', 218);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('47', 'O+', '465', '19.56', 'Yes', 187);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('19', 'A-', '474', '19.04', 'Yes', 454);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('52', 'B-', '467', '12.34', 'Yes', 665);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('53', 'AB-', '466', '19.98', 'Yes', 858);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('57', 'AB+', '469', '14.54', 'No', 783);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('59', 'AB-', '465', '14.81', 'No', 648);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('6', 'B+', '469', '14.68', 'Yes', 531);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('62', 'B-', '475', '15.95', 'No', 839);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('63', 'A+', '472', '18.17', 'Yes', 866);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('64', 'A-', '472', '16.51', 'No', 341);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('7', 'O+', '465', '18.8', 'Yes', 890);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('70', 'B-', '470', '17.54', 'Yes', 534);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('75', 'AB-', '469', '15.51', 'No', 766);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('79', 'A+', '473', '19.45', 'No', 700);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('81', 'AB-', '467', '16.84', 'No', 302);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('86', 'O+', '472', '18.48', 'No', 197);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('89', 'A-', '474', '13.32', 'No', 306);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('91', 'B-', '472', '16.01', 'No', 432);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('93', 'O-', '473', '13.44', 'Yes', 643);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('94', 'A+', '465', '16.25', 'Yes', 513);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('96', 'O-', '470', '15.77', 'Yes', 579);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('98', 'A-', '465', '15.05', 'Yes', 671);
INSERT INTO `Blood` (`Bloodbag_number`, `blood_type`, `Blood_Amount`, `Haemoglobin_Content`, `Double_Red`, `donor_ID`) VALUES ('99', 'AB-', '471', '15.96', 'No', 692);

INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (17, 'Letha Reinger', '45279 Torrance Islan', '(524)185-8696x', ' Corona Virus', 'f', '1993-02-11', 6, 'O-', 132);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (50, 'Braxton Stoltenberg', '0868 Lazaro Corner S', '341-581-8294x3', ' Hemophilia', 'f', '1979-01-27', 2, 'O+', 700);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (57, 'Mrs. Leta Sipes DVM', '01893 Golda Circle\nL', '1-649-691-1739', ' Corona Virus', 'f', '1976-02-29', 5, 'B+', 432);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (61, 'Prof. Johan McDermott I', '5491 Dylan Court Sui', '750.053.0675x2', 'Heart Disease', 'f', '1974-12-05', 8, 'A+', 454);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (80, 'Mrs. Jacynthe Adams PhD', '381 Nitzsche Cliff\nS', '1-367-058-0310', ' Lung Disease', 'm', '2018-09-30', 4, 'B+', 648);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (133, 'Marcos Kris', '581 Schimmel Skyway ', '237.835.1686', ' Cancer', 'f', '1993-02-10', 3, 'AB-', 197);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (157, 'Prudence Vandervort', '51579 Boris Path\nPor', '(143)400-1793x', ' Lung Disease', 'f', '1975-03-27', 3, ' A-', 671);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (190, 'Mr. Brown Quigley', '492 Boyle Knolls Sui', '1-499-641-2073', ' Corona Virus', 'm', '2011-10-11', 3, ' B-', 341);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (240, 'Mr. Quentin Flatley', '04005 Stiedemann Por', '078-787-0085', ' Liver Disease', 'm', '1973-10-10', 7, 'A+', 519);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (251, 'Cleo Eichmann', '075 Pagac Run Apt. 5', '744.871.0519x1', ' Hemophilia', 'm', '2005-06-14', 3, ' B-', 512);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (252, 'Miss Mallie Durgan Jr.', '48138 Wilhelm Island', '(884)902-8653', ' Corona Virus', 'f', '1982-09-24', 9, 'AB-', 513);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (304, 'Marjorie Kerluke', '361 Gayle Inlet\nLake', '807-598-5024x3', ' Stomach Disease', 'm', '1971-12-15', 8, 'AB-', 643);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (341, 'Dr. Kamryn Schinner', '01940 Alfonzo Crossi', '089.952.6353', 'Heart Disease', 'm', '1987-06-11', 10, 'O+', 778);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (383, 'Ms. Kiera Frami', '78956 Eldridge Keys\n', '975.447.7995', ' Ebola Virus', 'm', '2018-01-23', 1, ' B-', 692);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (386, 'Malvina Batz', '8692 Olen Skyway\nNor', '(811)326-3860', ' Hemophilia', 'm', '2000-12-08', 10, 'AB-', 579);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (453, 'Mr. Frankie Gaylord', '70146 Stanley Branch', '748.374.4844x4', ' Cancer', 'f', '1987-11-13', 9, 'O+', 488);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (467, 'Prof. Elijah Pagac', '62056 Michael Center', '(743)949-9743x', ' Liver Disease', 'f', '1990-11-24', 3, 'AB-', 547);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (490, 'Novella Harber', '9178 McDermott Turnp', '1-817-656-9400', 'Heart Disease', 'f', '2015-06-20', 6, 'B+', 302);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (536, 'Mr. Gerhard Reynolds DDS', '32537 Schuster Plaza', '(682)025-8760x', ' Cancer', 'm', '1977-06-09', 3, 'O+', 306);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (543, 'Mary Spinka', '0750 Turner Knoll\nTa', '(849)160-1318', ' Cancer', 'm', '2004-06-15', 2, 'B+', 525);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (559, 'Darrel Langworth DVM', '3446 Vicente Shores ', '290-523-9674', ' Corona Virus', 'f', '1982-08-24', 7, 'B+', 783);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (644, 'Rogers Raynor', '869 Aylin Divide\nKas', '699.837.2061x2', ' Hemophilia', 'f', '2000-09-13', 3, 'O-', 584);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (666, 'Jannie Armstrong', '88265 Jacobson Missi', '+66(1)87120000', ' Corona Virus', 'm', '2008-11-01', 6, ' B-', 163);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (667, 'Donald Berge', '251 Olson Ville Suit', '554.759.4687x2', ' Hemophilia', 'f', '1994-12-20', 8, 'O-', 665);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (675, 'Arturo Runte', '35376 Clarissa Squar', '(189)509-9733', ' Corona Virus', 'f', '1998-07-17', 1, 'A+', 751);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (690, 'Albina Sipes', '01719 Jennings Branc', '1-236-342-0325', ' Lung Disease', 'm', '1987-05-17', 10, 'O+', 766);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (694, 'Prof. Otha Schumm DVM', '295 Grimes Parkway S', '+55(1)57877693', ' Lung Disease', 'f', '2018-01-06', 9, 'O-', 633);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (751, 'Johnpaul Armstrong', '3296 Desmond Turnpik', '899.466.7094', ' Lung Disease', 'm', '2003-11-09', 1, 'O+', 858);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (763, 'Myriam Toy', '0170 King Harbors\nSa', '1-991-867-4279', ' Hemophilia', 'm', '2012-12-21', 7, 'B+', 218);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (764, 'Maureen Schiller', '008 Hayes Field Suit', '00367634430', ' Blood Disease', 'm', '1970-02-03', 1, 'O-', 741);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (790, 'Mr. Johann Ward DVM', '9712 Schaden Prairie', '+07(7)42331973', 'Heart Disease', 'f', '1983-09-25', 2, 'A+', 187);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (820, 'Tommie Herzog', '0951 Bogisich EState', '1-805-073-1617', ' Corona Virus', 'f', '2009-11-15', 2, 'O-', 534);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (836, 'Tevin Deckow', '235 Caterina Drive A', '848.199.0583x1', ' Cancer', 'm', '1985-02-16', 10, ' AB+', 611);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (906, 'Merle Smith', '06555 Betsy Land\nSou', '944-477-8888x3', ' Lung Disease', 'f', '1996-04-13', 5, ' A-', 166);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (924, 'Mrs. Sydnee Heidenreich J', '3916 Jett Lake\nSmith', '1-503-395-1481', ' Corona Virus', 'f', '1997-01-08', 10, ' B-', 839);
INSERT INTO `recipient` (`recip_ID`, `rname`, `Address`, `Phone_Number`, `Medical_Condition`, `Gender`, `DOB`, `Urgency_Status`, `Blood_Type`, `donor_ID`) VALUES (990, 'Verdie Herman', '870 Tessie Fort Apt.', '(242)832-4303', ' Corona Virus', 'f', '2018-03-05', 8, 'O-', 531);

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

Select rname 
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

Select Recipient.rname as R_Name, Donor.dname as bb_name
From Recipient, Donor
Where Recipient.donor_ID = Donor.Donor_ID;

Delete From Staff
Where Staff_ID = 143142;
