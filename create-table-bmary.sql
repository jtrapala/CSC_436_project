

CREATE TABLE donor (
  donor_id int(9) primary key,
  d_name varchar(25),
  address varchar(20),
  phone_num int(12),
  med_cond varchar(50),
  gender char(10),
  dob varchar(10),
  bank_id int(9),
  blood_type  char(6)
);



CREATE TABLE staff (
  staff_id int(9) primary key,
  s_name varchar(25),
  address varchar(20),
  phone_num int(12),
  Shift varchar(20),
  Gender char(10),
  DOB varchar(10),
  bank_ID int(9)
);



CREATE TABLE blood (
  bloodbag_number char(6) primary key,
  blood_type char(6),
  blood_amount char(6),
  haemoglobin_content char(6),
  double_red char(6),
  donor_id int(9)
);



CREATE TABLE recipient (
  recip_ID int(9) primary key,
  r_name varchar(25),
  Address varchar(20),
  phone_num int(12),
  med_cond varchar(50),
  gender char(10),
  dob varchar(10),
  urgency_status int(1),
  blood_type char(6),
  donor_id int(9)
);



CREATE TABLE blood_bank (
  bb_ID int(9) primary key,
  bb_name varchar(25),
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone_num int(12),
  admin_name varchar(25)
);



CREATE TABLE blood_drive (
  bdrive_ID int(9) primary key,
  bd_name varchar(25),
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone_num int(12),
  descrpt varchar(1000),
  bank_ID int(9)
);


