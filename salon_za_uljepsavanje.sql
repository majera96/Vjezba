#Salon za uljepsavanje
#U salonu za uljepšavanje radi više djelatnica. Jedna djelatnica na dan radi s više korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.


drop database if exists;
create database SalonZaUljepsavanje;
use SalonZaUljepsavanje;

create table Djelatnica(
    Osoba varchar(50),
    SifraDjelatnice varchar(50)
);

create table Osoba (
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt_broj varchar(50)
);

create table Korisnik(
    Osoba varchar(50),
    Usluga varchar(50)
);

create table Usluga(
    Naziv varchar(50),
    Vrijeme_usluge varchar(50),
    Cijena varchar(50)
);

create table Narudzba(
    Osoba varchar(50),
    Usluga varchar(50)
);