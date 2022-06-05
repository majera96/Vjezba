#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_6.sql

# 0. Kreirajte tablice i veze izmedu tablica.

drop database if exists kolokvij_vjezba_6;
create database kolokvij_vjezba_6 default charset utf8mb4;
use kolokvij_vjezba_6;

create table svekrva (
    sifra int not null primary key auto_increment,
    hlace varchar(48) not null,
    suknja varchar(48) not null,
    ogrlica int not null,
    treciputa datetime,
    dukscerica varchar(32) not null,
    narukvica int not null,
    punac int
);

create table punac (
    sifra int not null primary key auto_increment,
    ekstroventno boolean not null,
    suknja varchar(30) not null,
    majica varchar(44) not null,
    prviput datetime not null
);

create table prijatelj (
    sifra int not null primary key auto_increment,
    haljina varchar(35),
    prstena int not null,
    introvertno boolean,
    stilfrizura varchar(36) not null
    );

    create table prijatelj_ostavljena(
        sifra int not null primary key auto_increment,
        prijatelj int not null,
        ostavljena int not null
    
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    prviputa datetime not null,
    kratkamajica varchar(40) not null,
    drugiputa datetime,
    maraka decimal(14,10)
);

create table brat(
    sifra int not null primary key auto_increment,
    nausnica int not null,
    treciputa datetime not null,
    narukvica int not null,
    hlace varchar(31),
    prijatelj int
);

create table decko(
    sifra int not null primary key auto_increment,
    prviputa datetime,
    modelnaocala varchar(41),
    nausnica int,
    zena int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    novcica decimal(14,8) not null,
    narukvica int not null,
    dukserica varchar(40) not null,
    haljina varchar(30),
    hlace varchar(31),
    brat int not null
);

alter table decko add foreign key (zena) references zena(sifra);
alter table zena add foreign key (brat) references brat(sifra);
alter table brat add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key (prijatelj) references prijatelj(sifra);
alter table prijatelj_ostavljena add foreign key (ostavljena) references ostavljena(sifra);
alter table svekrva add foreign key (punac) references punac(sifra);

INSERT INTO kolokvij_vjezba_6.brat
(nausnica, treciputa, narukvica, hlace, prijatelj)
VALUES(0, '2022-06-05', 0, NULL, NULL),(1, '2022-06-04', 1, NULL, NULL),(3, '2022-06-03', 3, NULL, NULL);

INSERT INTO kolokvij_vjezba_6.zena
(novcica, narukvica, dukserica, haljina, hlace, brat)
VALUES(0, 0, 'dukserica1', NULL, NULL, 1),(1, 1, 'dukserica2', NULL, NULL, 2),(3, 3, 'dukserica3', NULL, NULL, 3);

INSERT INTO kolokvij_vjezba_6.prijatelj
(haljina, prstena, introvertno, stilfrizura)
VALUES(NULL, 0, NULL, 'Kovrcavo'),(NULL, 1, NULL, 'Ravno'),(NULL, 2, NULL, 'Kratka');

INSERT INTO kolokvij_vjezba_6.ostavljena
(prviputa, kratkamajica, drugiputa, maraka)
VALUES('2022-06-05', 'Tommy Hilfiger', NULL, NULL),('2022-06-04', 'Hugo Boss', NULL, NULL),('2022-06-03', 'Guess', NULL, NULL);

update svekrva set suknja='Osijek';
select * from svekrva;

delete from decko where modelnaocala like '%AB%';

select narukvica from brat where treciputa is null;

select a.drugiputa, f.zena, e.narukvica
from ostavljena a inner join prijatelj_ostavljena b 
on a.sifra = b.ostavljena 
inner join prijatelj c 
on b.prijatelj = c.sifra
inner join brat d 
on d.prijatelj = c.sifra
inner join zena e 
on e.brat = d.sifra
inner join decko f 
on f.zena = e.sifra 
where d.treciputa is not null and c.prstena=219
order by e.narukvica desc;
INSERT INTO kolokvij_vjezba_6.prijatelj_ostavljena
(prijatelj, ostavljena)
VALUES(1, 1),(2,2),(3,3);

select a.prstena, a.introvertno 
from prijatelj a left join prijatelj_ostavljena b 
on a.sifra = b.prijatelj 
where b.prijatelj is null;

#Napravljeno u 28:11.63