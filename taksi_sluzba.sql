#Taksi sluzba
#Taksi tvrtka ima više vozila. Jedno vozilo vozi jedan vozač. U jednoj vožnji vozač može prevesti više putnika. Jedan putnik se naravno može tijekom vremena imati više vožnji.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\taksi_sluzba.sql

drop database if exists Taksi_sluzba;
create database Taksi_sluzba;
use Taksi_sluzba;

create table Vozac(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Vozilo int not null,
    Iban varchar(50),
    Iskustvo boolean

);

create table Putnik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Voznja int not null

);

create table Voznja(
    sifra int not null primary key auto_increment,
    Vozac int not null,
    Putnik int not null,
    Adresa_preuzimanja varchar(100),
    Destinacija varchar(100),
    Cijena decimal (18,2),
    Trajanje decimal (18,2)
);

create table Vozilo(
    sifra int not null primary key auto_increment,
    Model varchar(20),
    Boja varchar(15),
    Vozac int not null,
    Broj_mjesta int
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt int
);

alter table Vozac add foreign key (Osoba) references Osoba(sifra);
alter table Putnik add foreign key (Osoba) references Osoba(sifra);

alter table Voznja add foreign key (Vozac) references Vozac(sifra);
alter table Voznja add foreign key (Putnik) references Putnik(sifra);

alter table Vozilo add foreign key (Vozac) references Vozac(sifra);