#Udruga za zastitu zivotinja
#Zadatak: U udruzu radi više osoba. Jedna osoba se brine za jednog ili više štićenika udruge. Štićenici udruge su životinje. Svaki štićenik se nalazi u jednom prostoru

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\Udruga_za_zastitu_zivotinja.sql

drop database if exists UdrugaZaZastituZivotinja;
create database UdrugaZaZastituZivotinja;
use UdrugaZaZastituZivotinja;

create table Zaposlenik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iskustvo boolean

);

create table Sticenik(
    sifra int not null primary key auto_increment,
    Ime varchar (20),
    Vrsta_Zivotinje varchar(20),
    Starost decimal (18,2),
    Upit varchar(500)
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt_Broj int
);

create table Prostor(
    sifra int not null primary key auto_increment,
    Sticenik int not null,
    Kvadratura decimal (18,2)

);

