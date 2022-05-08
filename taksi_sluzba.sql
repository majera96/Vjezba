#Taksi sluzba
#Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač može prevesti više putnika. Jedan putnik se naravno može tijekom vremena imati više vožnji.

C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\taksi_sluzba.sql

drop database if exists Taksi_sluzba;
create database Taksi_sluzba;
use database Taksi_Sluzba;

create table Vozac(
    Osoba varchar(50),
    Vozilo varchar(50),
    Iban varchar(50);
    Iskustvo varchar(50),

);

create table Putnik(
    Osoba varchar(50),
    Voznja varchar(50)

);

create table Voznja(
    Vozac varchar(50),
    Putnik varchar(50),
    Adresa_preuzimanja varchar(50),
    Destinacija varchar(50),
    Cijena varchar(50),
    Trajanje varchar(50)
);

create table Vozilo(
    Model varchar(50),
    Boja varchar(50),
    Vozac varchar(50),
    Broj_mjesta varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt varchar(50)
);