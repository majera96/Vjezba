# Frizerski salon
# Zadatak: U frizerskom salonu radi više djelatnica. Jedna djelatnica na dan radi s više korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\frizerski_salon.sql

drop database if exists FrizerskiSalon;
create database FrizerskiSalon;
use FrizerskiSalon;

create table Djelatnica (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    iban varchar(50),
    Usluga int not null

);

create table Korisnik (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Usluga int not null
);

create table Usluga (
    sifra int not null primary key auto_increment,
    Naziv varchar(50),
    Cijena decimal(18,2),
    Vrijeme datetime

);

create table Osoba (
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt_broj int
);

create table Narudzba (
    sifra int not null primary key auto_increment,
    Usluga int not null,
    Korisnik int not null
);

alter table Djelatnica add foreign key (Osoba) references Osoba(sifra);
alter table Korisnik add foreign key (Osoba) references Osoba(sifra);

alter table Narudzba add foreign key(Usluga) references Usluga(sifra);
alter table Narudzba add foreign key(Korisnik) references Korisnik(sifra);

alter table Korisnik add foreign key (Usluga) references Usluga(sifra);