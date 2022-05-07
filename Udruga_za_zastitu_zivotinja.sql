#Udruga za zastitu zivotinja
#Zadatak: U udruzu radi više osoba. Jedna osoba se brine za jednog ili više štićenika udruge. Štićenici udruge su životinje. Svaki štićenik se nalazi u jednom prostoru

drop database if exists;
create database UdrugaZaZastituZivotinja;
use UdrugaZaZastituZivotinja;

create table Zaposlenik(
    Osoba varchar(50),
    Certificiran varchar(50)

);

create table Sticenik(
    Ime varchar (50),
    Vrsta_Zivotinje varchar(50),
    Starost varchar(50),
    Upit varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Kontakt_Broj varchar(50)
);

create table Prostor(
    Sticenik varchar(50),
    Kvadratura varchar(50),

);

