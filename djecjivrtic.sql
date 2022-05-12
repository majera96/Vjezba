# Djecji vrtic
# Zadatak: U dječjem vrtiću postoji više odgojnih skupina. Svaka odgojna skupina ima više djece i vodi ih jedna odgajateljica. Odgajateljica ima jednu stručnu spremu.

#C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\Vjezba\djecjivrtic.sql

drop database if exists DjecjiVrtic;
create database DjecjiVrtic;
use DjecjiVrtic;

create table Odgajateljica(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    Iban varchar(50),
    Strucna_sprema int not null
);

create table Osoba(
    sifra int not null primary key auto_increment,
    Ime varchar(50),
    Prezime varchar(50),
    Oib char(11),
    Kontakt int
);

create table OdgojnaSkupina(
    sifra int not null primary key auto_increment,
    Naziv varchar(50),
    Broj_djece int,
    Odgajateljica int not null,
    Djeca int not null
);

create table Djeca(
    sifra int not null primary key auto_increment,
    Osoba int not null,
    ImeRoditelja int not null,
    PrezimeRoditelja int not null,
    DatumRodenja datetime not null,
    OdgojnaSkupina int not null
);

create table Strucna_sprema(
    sifra int not null primary key auto_increment,
    Razina varchar(50),
    Obrazovna_ustanova varchar(50),
    Datum_pocetka datetime,
    Datum_zavrsetka datetime

);

alter table Odgajateljica add foreign key (osoba) references osoba(sifra);
alter table Djeca add foreign key (osoba) references osoba(sifra);
alter table Djeca add foreign key (OdgojnaSkupina) references OdgojnaSkupina(sifra);
alter table Odgajateljica add foreign key (Strucna_sprema) references Strucna_sprema(sifra);
alter table OdgojnaSkupina add foreign key (Odgajateljica) references Odgajateljica(sifra);