# Djecji vrtic
# Zadatak: U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\djecjivrtic.sql

drop database if exists DjecjiVrtic;
create database DjecjiVrtic;
use DjecjiVrtic;

create table Odgajateljica(
    Osoba varchar(50),
    Iban varchar(50),
    Strucna_sprema varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Oib varchar(50),
    Kontakt varchar(50)
);

create table Odgojna_Skupina(
    Naziv varchar(50),
    Broj_djece varchar(50),
    Odgajateljica varchar(50),
    Djeca varchar(50)
);

create table Djeca(
    Osoba varchar(50),
    Odgojna_Skupina varchar(50)
);

create table Strucna_sprema(
    Razina varchar(50),
    Obrazovna_ustanova varchar(50),
    Datum_zavrsetka varchar(50)

);