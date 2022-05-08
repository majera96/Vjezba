#Urar Silvija
#Urar popravlja satove. Jedan korisnik može uraru donijeti više satova na popravak dok jedan sat može biti više puta na popravku. Urar ima šegrta koji sudjeluje u određenim popravcima satova.

C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\urar_silvija.sql

drop database if exists Urar_Silvija;
create database Urar_Silvija;
use Urar_Silvija;

create table Urar(
    Osoba varchar(50),
    Iskustvo varchar(50)
);

create table Segrt(
    Osoba varchar(50),
    Iban varchar(50)
);

create table Korisnik(
    Osoba varchar(50),
    Sat varchar(50),
    Popravak varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt varchar(50)
);

create table Sat(
    Model varchar(50),
    Boja varchar(50),
    Materijal varchar(50)
);

create table Popravak(
    Sat varchar(50),
    Vrijeme_popravka varchar(50),
    Cijena varchar(50),
    Kod varchar(50)

);