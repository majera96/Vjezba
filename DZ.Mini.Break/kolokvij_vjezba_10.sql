#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_10.sql

drop database if exists kolokvij_vjezba_10;
create database kolokvij_vjezba_10 default charset utf8mb4;
use kolokvij_vjezba_10;

create table zarucnica(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    prviputa datetime,
    sunja varchar(42) not null,
    eura decimal(16,10)
);

create table sestra(
    sifra int not null primary key auto_increment,
    suknja varchar(46) not null,
    bojaociju varchar(49),
    indiferentno boolean,
    dukserica varchar(42) not null,
    drugiputa datetime,
    prviputa datetime not null,
    zarucnica int
);

create table punac (
    sifra int not null primary key auto_increment,
    lipa decimal(15,9),
    eura decimal(15,10) not null,
    stilfrizura varchar(37)
);

create table punac_neprijatelj(
    sifra int not null primary key auto_increment,
    punac int not null,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    gustoca decimal(15,10) not null,
    dukserica varchar(32) not null,
    maraka decimal(15,7),
    stilfrizura varchar(49) not null
);

create table svekrva(
    sifra int not null primary key auto_increment,
    eura decimal(17,9),
    carape varchar(43),
    kuna decimal(13,9),
    majica varchar(30),
    introvertno boolean not null,
    punac int
);

create table mladic(
    sifra int not null primary key auto_increment,
    hlace varchar(48) not null,
    lipa decimal(18,6),
    stilfrizura varchar(35) not null,
    prstena int,
    maraka decimal(12,6),
    svekrva int
);

create table zena(
    sifra int not null primary key auto_increment,
    bojaociju varchar(49) not null,
    maraka decimal(13,9) not null,
    majica varchar(45),
    indiferentno boolean,
    prviputa datetime,
    mladic int
);

alter table zena add foreign key (mladic) references mladic(sifra);
alter table mladic add foreign key (svekrva) references svekrva(sifra);
alter table svekrva add foreign key (punac) references punac(sifra);
alter table punac_neprijatelj add foreign key (punac) references punac(sifra);
alter table punac_neprijatelj add foreign key (neprijatelj) references neprijatelj(sifra);
alter table sestra add foreign key (zarucnica) references zarucnica(sifra);

#Ne mogu ocitati u DBeaveru bazu podataka
#Rjesio prvi zadatak u 7 minuta.