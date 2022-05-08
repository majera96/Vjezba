#Postolar
#Postolar popravlja obuću. Jedan korisnik može postolaru donijeti više komada obuće na popravak dok jedan komad obuće može biti više puta na popravku. Postolar ima šegrta koji sudjeluje u određenim popravcima obuće.

C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\postolar.sql

drop database if exists Postolar;
create database Postolar;
use Postolar;

create table Postolar(
    Osoba varchar(50),
    Iskustvo varchar(50)
);

create table Klijent(
    Osoba varchar(50),
    Obuca varchar(50),
    Popravak varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt varchar(50)
);

create table Obuca(
    Postolar varchar(50),
    Klijent varchar(50),
    Model varchar(50),
    Marka varchar(50)
    Broj varchar(50),
    Popravak varchar(50)
);

create table Segrt(
    Osoba varchar(50),
    Popravak varchar(50),
    Iban varchar(50)
);

create table Popravak(
    Obuca varchar(50),
    Vrijeme_popravka varchar(50),
    Cijena varchar(50)
);