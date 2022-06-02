# zadatak: Srednja škola
#Jedna srednja škola ima više razreda. Jedan razred pohađa više učenika. U jednom
#razredu predaje više profesora. Jedan profesor može predavati u više razreda.

# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\srednja_skola.sql

drop database if exists srednja_skola;
create database srednja_skola default charset utf8mb4;
use srednja_skola;

create table razred(
    sifra int not null primary key auto_increment,
    smjer varchar(40) not null,
    broj_ucenika decimal(18,2),
    odjel char(1),
    profesor int not null
);

create table ucenik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    razred int not null,
    vladanje varchar(10)
);

create table profesor(
    sifra int not null primary key auto_increment,
    osoba int not null,
    strucna_sprema varchar(50),
    iban varchar(20)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime int not null,
    prezime int not null,
    kontakt varchar(50)
);

alter table ucenik add foreign key (osoba) references osoba(sifra);
alter table profesor add foreign key (osoba) references osoba(sifra);

alter table razred add foreign key (profesor) references profesor(sifra);
alter table ucenik add foreign key (razred) references razred(sifra);