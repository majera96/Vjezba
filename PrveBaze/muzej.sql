#Muzej
#U muzeju postoji više izložaba. Jedna izložba ima više djela. Svaki kustos je zadužen za jednu izložbu. Svaka izložba ima jednog sponzora.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\muzej.sql

drop database if exists Muzej;
create database Muzej;
use Muzej;

create table Kustos(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Specijalist varchar(50),
    Iban varchar(50),
    Radno_Vrijeme datetime

);

create table Izlozba(
    sifra int not null primary key auto_increment,
    Vrsta varchar(50),
    Sponzor varchar(50) not null,
    Vrijeme datetime,
    Ulaz decimal (18,2),
    Kustos int not null
);

create table Sponzor(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Izlozba int not null,
    Iznos decimal (18,2)
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt int
);

alter table Kustos add foreign key (osoba) references osoba(sifra);
alter table Sponzor add foreign key (osoba) references osoba(sifra);

alter table Izlozba add foreign key (Kustos) references Kustos(sifra);
alter table Sponzor add foreign key (Izlozba) references Izlozba(sifra);