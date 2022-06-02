# Samostan
# U samostanu se nalaze svećenici. Svaki svećenik je zadužen za više poslova. Jedan posao u isto vrijeme može obavljati više svećenika. Svaki svećenik ima samo jednog nadređenog svećenika.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\samostan.sql

drop database if exists Samostan;
create database Samostan;
use Samostan;

create table Svecenik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Posao int not null
);

create table Posao(
    sifra int not null primary key auto_increment,
    Vrsta_posla varchar(50),
    Vrijeme datetime,
    Osoba int not null
);

create table Nadredeni_svecenik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Posao int not null
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Red varchar(20),
    Kontakt int
);

create table Zaduzenja(
    sifra int not null primary key auto_increment,
    Svecenik int not null,
    Nadredeni_svecenik int not null,
    Posao int not null
);