#Doktorska ordinacija
#Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta doktoru pomažu medicinske sestre.

C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\doktorska_ordinacija.sql

drop database if exists DoktorskaOrdinacija;
create database DoktorskaOrdinacija;
use DoktorskaOrdinacija;

create table Doktor(
    Osoba varchar(50),
    Iban varchar(50),
);

create table Pacijent(
    Osoba varchar(50),
    Lijecenje varchar(50)
);

create table Lijecenje(
    Osoba varchar(50),
    Datum varchar(50),
    Dijagnoza varchar(50)
);

create table MedicinskaSestra(
    Osoba varchar(50),
    Iban varchar(50),
    Lijecenje varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt varchar(50)
);