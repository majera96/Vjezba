# Samostan
# U samostanu se nalaze svećenici. Svaki svećenik je zadužen za više poslova. Jedan posao u isto vrijeme može obavljati više svećenika. Svaki svećenik ima samo jednog nadređenog svećenika.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\samostan.sql

drop database if exists Samostan;
create database Samostan;
use Samostan;

create table Svecenik(
    Osoba varchar(50),
    Posao varchar(50)
);

create table Posao(
    Vrsta_posla varchar(50),
    Vrijeme varchar(50),
    Osoba varchar(50)
);

create table Nadredeni_svecenik(
    Osoba varchar(50),
    Posao varchar(50)
);

create table Osoba(
    Ime varchar(50),
    Prezime varchar(50),
    Red varchar(50),
    Kontakt varchar(50)
);

create table Zaduzenja(
    Svecenik varchar(50),
    Nadredeni_svecenik varchar(50),
    Posao varchar(50)
);