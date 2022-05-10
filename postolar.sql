#Postolar
#Postolar popravlja obuću. Jedan korisnik može postolaru donijeti više komada obuće na popravak dok jedan komad obuće može biti više puta na popravku. Postolar ima šegrta koji sudjeluje u određenim popravcima obuće.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\postolar.sql

drop database if exists Postolar;
create database Postolar;
use Postolar;

create table Postolar(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iskustvo boolean
);

create table Klijent(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Obuca int not null,
    Popravak int not null
);

create table Osoba(
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt int
);

create table Obuca(
    sifra int not null primary key auto_increment,
    Postolar int not null,
    Klijent int not null,
    Model varchar(50),
    Marka varchar(50),
    Broj decimal(18,2),
    Popravak int not null
);

create table Segrt(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Popravak int not null,
    Iban varchar(50)
);

create table Popravak(
    sifra int not null primary key auto_increment,
    Obuca int not null,
    Vrijeme_popravka datetime,
    Cijena decimal(18,2),
    Kod varchar(5)
);