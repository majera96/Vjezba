#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\kolokvij_vjezba_3.sql

# 0. Kreirajte tablice i veze izmedu tablica.

drop database if exists kolokvij_vjezba_3;
create database kolokvij_vjezba_3 default charset utf8mb4;
use kolokvij_vjezba_3;

create table svekar (
    sifra int not null primary key auto_increment,
    novcica decimal(16,8) not null,
    suknja varchar(44) not null,
    bojakose varchar(36),
    prstena int,
    narukvica int not null,
    cura int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    dukserica varchar(49),
    maraka decimal(13,7),
    drugiputa datetime,
    majica varchar(49),
    novcica decimal(15,8),
    ogrlica int not null
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    kuna decimal(17,5),
    lipa decimal(15,6),
    majica varchar(36),
    modelnaocala varchar(31),
    prijatelj int not null
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    kuna decimal(16,10),
    haljina varchar(37),
    lipa decimal(13,10),
    dukserica varchar(31),
    indiferentno boolean not null
);

create table prijatelj_brat(
    sifra int not null primary key auto_increment,
    prijatelj int not null,
    brat int not null
);

create table brat(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    ogrlica int not null,
    ekstroventno boolean not null
);

create table snasa(
    sifra int not null primary key auto_increment,
    introvertno boolean,
    kuna decimal(15,6) not null,
    eura decimal(12,9) not null,
    treciputa datetime,
    ostavljena int not null
);

create table punica(
    sifra int not null primary key auto_increment,
    asocijalno boolean,
    kratkamajica varchar(44),
    kuna decimal(13,8) not null,
    vesta varchar(32) not null,
    snasa int
);

alter table punica add foreign key (snasa) references snasa(sifra);
alter table snasa add foreign key (ostavljena) references ostavljena(sifra);
alter table ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key (brat) references brat(sifra);
alter table svekar add foreign key (cura) references cura(sifra);

#1.U tablice snasa,ostavljena i prijatelj_brat unesite po 3 retka.

insert into prijatelj(sifra,indiferentno)
values (null,true),(null,false),(null,false);

insert into ostavljena (sifra,prijatelj)
values (null,1),(null,2),(null,3);

insert into snasa (sifra,kuna,eura,ostavljena)
values (null,'22','4,5',1),(null,'35','7',2),(null,'14','2',3);

insert into brat (sifra,ogrlica,ekstroventno)
values (null,1,true),(null,2,true),(null,3,true);

insert into prijatelj_brat(sifra,prijatelj,brat)
values (null,1,1),(null,2,2),(null,3,3);

#2. U tablici svekar postavite svim zapisima kolonu suknja na 
#vrijednost Osijek.
insert into svekar(sifra,novcica,suknja,narukvica,cura)
values (null,'15','Suknja1',1,1),(null,'10','Suknja2',2,2),(null,'9','Suknja3',3,3);


