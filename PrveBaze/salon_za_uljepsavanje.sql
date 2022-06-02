#Salon za uljepsavanje
#U salonu za uljepšavanje radi više djelatnica. Jedna djelatnica na dan radi s više korisnika. Korisnik tijekom jednog posjeta koristi jednu usluga.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\salon_za_uljepsavanje.sql

drop database if exists SalonZaUljepsavanje;
create database SalonZaUljepsavanje;
use SalonZaUljepsavanje;

create table Djelatnica(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    SifraDjelatnice varchar(3)
);

create table Osoba (
    sifra int not null primary key auto_increment,
    Ime varchar(50) not null,
    Prezime varchar(50) not null,
    Kontakt_broj int
);

create table Korisnik(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Usluga int not null
);

create table Usluga(
    sifra int not null primary key auto_increment,
    Naziv varchar(50),
    Vrijeme_usluge datetime,
    Cijena decimal(18,2)
);

create table Narudzba(
    sifra int not null primary key auto_increment,
    Korisnik int not null,
    Usluga int not null
);

alter table Djelatnica add foreign key (Osoba) references Osoba(sifra);
alter table Korisnik add foreign key (Osoba) references Osoba(sifra);

alter table Narudzba add foreign key (Korisnik) references Korisnik(sifra);
alter table Narudzba add foreign key (Usluga) references Usluga(sifra);

alter table Korisnik add foreign key (Usluga) references Usluga(sifra);