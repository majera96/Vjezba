# Ovo je vjezba SQL sa sata ponovno pisana

#C:\xampp\mysql\bin\mysql -uroot <  C:\Users\Korisnik\Documents\GitHub\Vjezba\vjezba.sql

drop database if exists Vjezba;
create database Vjezba;
use Vjezba;

create table Smjer (
    Naziv varchar(50),
    Cijena varchar(50),
    Trajanje varchar(50),
    Upisnina varchar(50),
    Certificiran varchar (50)
);

create table Grupa (
    Naziv varchar(50),
    DatumPocetka varchar(50),
    MaksimalnoPolaznika varchar(50),
    Smjer varchar(50),
    Predavac varchar(50)
);

create table Polaznik (
    Osoba varchar(50),
    BrojUgovora varchar(50)

);

create table Osoba (
    Ime varchar(50),
    Prezime varchar(50),
    Email varchar(50),
    Oib varchar(50)

);

create table Predavac (
    Osoba varchar(50),
    Iban varchar(50)
);

create table Clan (
    Grupa varchar(50),
    Polaznik varchar (50)
);