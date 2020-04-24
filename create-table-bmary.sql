CREATE DATABASE bloodBank;
USE bloodBank;

CREATE TABLE donor (
  donor_id int(9) primary key NOT NULL,
  d_name varchar(25) NOT NULL,
  address varchar(20),
  phone_num int(12),
  med_cond varchar(50),
  gender char(10),
  dob varchar(10),
  bank_id int(9),
  blood_type  char(6)
);



CREATE TABLE staff (
  staff_id int(9) primary key NOT NULL,
  s_name varchar(25) NOT NULL,
  address varchar(20),
  phone_num int(12),
  shift varchar(20),
  gender char(10),
  dob varchar(10),
  bank_id int(9)
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
  recip_id int(9) primary key NOT NULL,
  r_name varchar(25) NOT NULL,
  address varchar(20),
  phone_num int(12),
  med_cond varchar(50),
  gender char(10),
  dob varchar(10),
  urgency_status int(1),
  blood_type char(6),
  donor_id int(9)
);



CREATE TABLE blood_bank (
  bb_id int(9) primary key NOT NULL,
  bb_name varchar(25),
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone_num int(12),
  admin_name varchar(25)
);



CREATE TABLE blood_drive (
  bdrive_id int(9) primary key NOT NULL,
  bd_name varchar(25),
  address varchar(20),
  city varchar(20),
  state varchar(15),
  phone_num int(12),
  descrpt varchar(1000),
  bb_id int(9)
);


