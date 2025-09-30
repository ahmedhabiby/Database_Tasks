CREATE TABLE Player(id NUMBER(5) NOT NULL UNIQUE,
 					name varchar2(120) UNIQUE,
 					age number(5));

CREATE TABLE Manager(id NUMBER(5) NOT NULL ,
 					name varchar2(120) ,
 					salary number(6,2),
 					unique(id,name));

CREATE TABLE Manager1(id NUMBER(5) PRIMARY key,
 					name varchar2(120) ,
 					age number(5));
CREATE TABLE Doctor(id NUMBER(5) PRIMARY key ,
 					name varchar2(120) NOT null ,
 					salary number(6,2) NOT null
 					);
 					
CREATE TABLE Patient(id NUMBER(5) PRIMARY key ,
 					name varchar2(120) NOT null ,
 					age number(6) NOT null
 					);

CREATE TABLE Doc_Patient(
 Doctor_id NUMBER(5) REFERENCES Doctor(id),
 Patient_id NUMBER(5) REFERENCES Patient(id) ,
 PRIMARY KEY (Doctor_id,Patient_id)
);

CREATE TABLE Teacher(id NUMBER(5) PRIMARY key ,
 					name varchar2(120) NOT null ,
 					salary number(6,2) NOT NULL,
 					language_id NUMBER(5) NOT NULL REFERENCES LANGUAGE(id));

CREATE TABLE Language(id NUMBER(5) PRIMARY key ,
 					name varchar2(120) NOT null );


CREATE TABLE Employee(id NUMBER(5) PRIMARY key,
 					name varchar2(120) NOT NULL  ,
 					age number(5) NOT NULL ,
					phone_id NUMBER(5) UNIQUE NOT NULL REFERENCES Phone(id));

CREATE TABLE Phone(id NUMBER(5) PRIMARY key ,
 					phoneNumber number(12) NOT null );


