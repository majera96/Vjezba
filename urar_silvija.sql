#Urar Silvija
#Urar popravlja satove. Jedan korisnik može uraru donijeti više satova na popravak dok jedan sat može biti više puta na popravku. Urar ima šegrta koji sudjeluje u određenim popravcima satova.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\urar_silvija.sql

drop database if exists Urar_Silvija;
create database Urar_Silvija;
use Urar_Silvija;

create table Urar(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iskustvo boolean
);

create table Segrt(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50)
);

create table Korisnik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Sat int not null,
    Popravak int not null
);

create table Osoba(
    sifra int not null priamry key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt int
);

create table Sat(
    sifra int not null primary key auto_increment,
    Model varchar(20),
    Boja varchar(20),
    Materijal varchar(50)
);

create table Popravak(
    sifra int not null primary key auto_increment,
    Sat int not null,
    Vrijeme_popravka datetime,
    Cijena decimal(18,2),
    Kod char(4)
    );