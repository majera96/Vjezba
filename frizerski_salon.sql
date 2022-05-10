# Frizerski salon
# Zadatak: U frizerskom salonu radi više djelatnica. Jedna djelatnica na dan radi s više korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\frizerski_salon.sql

drop database if exists FrizerskiSalon;
create database FrizerskiSalon;
use FrizerskiSalon;

create table Djelatnica (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    iban varchar(50)

);

create table Korisnik (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Usluga int not null
);

create table Usluga (
    sifra int not null primary key auto_increment,
    Naziv varchar(50),
    Cijena deciaml(18,2),
    Vrijeme datetime

);

create table Osoba (
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt_broj int
);

create table Narudzba (
    sifra int not null primary key auto_increment
    Usluga int not null,
    osoba int not null
);