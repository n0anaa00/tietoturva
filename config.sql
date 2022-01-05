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



INSERT INTO asiakas VALUES (1, 'peltsi','Pera','Järvinen','Raatteentie 8','88900','Kuhmo',0401230432, 'pera@roudarit.fi') ;
INSERT INTO asiakas VALUES (2, 'mikko','Mikko','Aho','Puistokatu 68','91500','Muhos',0403213321, 'mikko@talkkarit.fi') ;
INSERT INTO asiakas VALUES (3, 'kille','Kimmo','Revontuli','Umpikuja 33','93100','Pudasjärvi',040765657, 'kille@hemmot.fi') ;


