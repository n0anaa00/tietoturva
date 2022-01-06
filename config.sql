drop database if exists n0anaa00;
create database n0anaa00;
use n0anaa00;




CREATE TABLE user (
    userid integer primary key auto_increment,
    firstname VARCHAR(50), 
    lastname VARCHAR(50), 
    username VARCHAR(50),
    password VARCHAR(10)
    );

INSERT INTO user VALUES (1, 'kirjaus','kayttaja','admin','admin'); 


CREATE TABLE userspecs (
    asid integer primary key auto_increment, 
    astunnus CHAR(10), 
    asetunimi CHAR(50) NOT NULL, 
    assukunimi CHAR(50) NOT NULL,
    asosoite CHAR(50) NOT NULL,
    postinro CHAR(5), 
    postitmp CHAR(10), 
    puhelin CHAR(10),
    email CHAR(30)
    );






