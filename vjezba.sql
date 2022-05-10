# Ovo je vjezba SQL sa sata ponovno pisana

#C:\xampp\mysql\bin\mysql -uroot <  C:\Users\Korisnik\Documents\GitHub\Vjezba\vjezba.sql

drop database if exists Vjezba;
create database Vjezba;
use Vjezba;

create table Smjer (
    sifra int not null primary key auto_increment,
    Naziv varchar(50) not null,
    Cijena decimal(18,2),
    Trajanje int,
    Upisnina decimal(18,2),
    Certificiran boolean
);

create table Grupa (
    sifra int not null primary key auto_increment,
    Naziv varchar(50) not null,
    DatumPocetka datetime,
    MaksimalnoPolaznika int,
    Smjer int not null,
    Predavac int
);

create table Polaznik (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    BrojUgovora varchar(10)

);

create table Osoba (
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Email varchar(100),
    Oib char(11)

);

create table Predavac (
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50)
);

create table Clan (
    sifra int not null primary key auto_increment,
    Grupa int not null,
    Polaznik int not null
);

alter table Grupa add foreign key (smjer) references smjer(sifra);
alter table Grupa add foreign key (predavac) references predavac(sifra);

alter table Clan add foreign key (grupa) references grupa(sifra);
alter table Clan add foreign key (polaznik) references polaznik(sifra);

alter table Polaznik add foreign key (osoba) references osoba(sifra);
alter table Predavac add foreign key(osoba) references osoba(sifra);

insert into Smjer (naziv)
values ('PHP Programiranje');

insert into Grupa (naziv, smjer)
values ('PP25',1);