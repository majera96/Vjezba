#Muzej
#U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen za jednu izložbu. Svaka izložba ima jednog sponzora.

C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\muzej.sql

drop database if exists Muzej;
create database Muzej;
use Muzej;

create table Kustos(
    Osoba varchar(50);
    Specijalist varchar(50);
    Iban varchar(50),
    Radno_Vrijeme varchar(50)

);

create table Izlozba(
    Vrsta varchar(50),
    Sponzor varchar(50),
    Vrijeme varchar(50),
    Ulaz varchar(50),
    Kustos varchar(50)
);

create table Sponzor(
    Osoba varchar(50),
    Iznos varchar(50),
);

create table Osoba(
    Ime varchar(50);
    Prezime varchar(50),
    Kontakt varchar(50)
);