# Djecji vrtic
# Zadatak: U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\djecjivrtic.sql

drop database if exists DjecjiVrtic;
create database DjecjiVrtic;
use DjecjiVrtic;

create table Odgajateljica(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50),
    Strucna_sprema int not null
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50),
    Prezime varchar(50),
    Oib char(11),
    Kontakt int
);

create table Odgojna_Skupina(
    sifra int not null primary key auto_increment,
    Naziv varchar(50),
    Broj_djece int,
    Odgajateljica int not null,
    Djeca int not null
);

create table Djeca(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Odgojna_Skupina int not null
);

create table Strucna_sprema(
    sifra int not null primary key auto_increment,
    Razina varchar(50),
    Obrazovna_ustanova varchar(50),
    Datum_zavrsetka datetime

);