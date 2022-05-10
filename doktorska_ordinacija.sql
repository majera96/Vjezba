#Doktorska ordinacija
#Doktor liječi pacijente. Jednog pacijenta može liječiti više puta. U liječenju pacijenta doktoru pomažu medicinske sestre.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\doktorska_ordinacija.sql

drop database if exists DoktorskaOrdinacija;
create database DoktorskaOrdinacija;
use DoktorskaOrdinacija;

create table Doktor(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50)
);

create table Pacijent(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Lijecenje int not null
);

create table Lijecenje(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Datum datetime,
    Dijagnoza varchar(50)
);

create table MedicinskaSestra(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50),
    Lijecenje int not null
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt int
);