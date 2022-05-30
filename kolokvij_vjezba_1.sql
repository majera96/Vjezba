##C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\kolokvij_vjezba_1.sql

# 0. Kreirajte tablice i veze izmedu tablica.

drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1 default charset utf8mb4;
use kolokvij_vjezba_1;

create table sestra (
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table punac (
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39) not null,
    haljina varchar(44),
    sestra int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal (18,6) not null,
    lipa decimal (13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

create table mladic (
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno bit,
    ekstroventno bit not null,
    dukserica varchar(48) not null,
    muskarac int
);

alter table zena add foreign key (sestra) references sestra(sifra); 
alter table cura add foreign key (punac) references punac(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);

alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);

## 1. U tablice muskarac, zena i sestra_svekar unesite po 3 retka.

insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,null,'Guess','14.99','Levis',1);
insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,null,'Guess','20.99','Tommy Hilfiger',134252);
insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,null,'Pandora','366.99','Zara slim fit',2131);

insert into zena (sifra,kratkamajica,jmbag,bojaociju,sestra)
values (null,'Levis',14589897,'Plava',1);
insert into zena (sifra,kratkamajica,jmbag,bojaociju,sestra)
values (null,'Nike',143141241,'Smeđa',2);
insert into zena (sifra,kratkamajica,jmbag,bojaociju,sestra)
values (null,'Adidas',2134314,'Zelena',3);

insert into muskarac (sifra,bojaociju,maraka,zena)
values (null,'Plava','10',2);
insert into muskarac (sifra,bojaociju,maraka,zena)
values (null,'Crna','99',3);
insert into muskarac (sifra,bojaociju,maraka,zena)
values (null,'Smeđa','26',1);

insert into svekar(sifra,bojaociju)
values (null,'Plava');
insert into svekar(sifra,bojaociju)
values (null,'Zelena');
insert into svekar(sifra,bojaociju)
values (null,'Smeđa');

insert into sestra_svekar (sifra,sestra,svekar)
values (null,1,1);
insert into sestra_svekar (sifra,sestra,svekar)
values (null,2,2);
insert into sestra_svekar (sifra,sestra,svekar)
values (null,3,3);

# 2. U tablici cura postavite svim zapisima kolonu gustoca na vrijednost 15.77.

insert into cura(sifra,novcica,gustoca,ogrlica)
values (null,'11','17.5',12);
insert into cura(sifra,novcica,gustoca,ogrlica)
values (null,'10','12.6',15);
insert into cura(sifra,novcica,gustoca,ogrlica)
values (null,'11','13.8',9);

update cura set gustoca=15.77 where sifra in(1,2,3);