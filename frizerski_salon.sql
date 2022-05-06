# Frizerski salon

drop database if exists;
create database FrizerskiSalon;
use FrizerskiSalon;

create table Djelatnica (
    Osoba varchar (50),
    SifraDjelatnice varchar(50)

);

create table Korisnik (
    Osoba varchar (50),
    Usluga varchar(50)
);

create table Usluga (
    Naziv varchar(50),
    Cijena varchar(50),
    Vrijeme varchar(50),

);

create table Osoba (
    Ime varchar (50),
    Prezime varchar (50),
    Kontakt_broj varchar (50)
);

create table Narudzba (
    Usluga varchar (50),
    osoba varchar (50)
);