#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_5.sql

drop database if exists kolokvij_vjezba_5;
create database kolokvij_vjezba_5 default charset utf8mb4;
use kolokvij_vjezba_5;

create table mladic(
    sifra int not null primary key auto_increment,
    kratkamajica varchar(48) not null,
    hajina varchar(30) not null,
    asocijalno boolean,
    zarucnik int
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    lipa decimal(12,8),
    indiferentno boolean
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojakose varchar(33),
    majica varchar(31),
    carape varchar(31) not null,
    haljina varchar(43),
    narukvica int,
    eura decimal(14,5) not null
);

create table svekar_cura(
    sifra int not null primary key auto_increment,
    svekar int not null,
    cura int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    carape varchar(41) not null,
    maraka decimal(17,10) not null,
    asocijalno boolean,
    vesta varchar(47) not null
);

create table punac(
    sifra int not null primary key auto_increment,
    dukscerica varchar(33),
    prviputa datetime not null,
    majica varchar(36),
    svekar int
);

create table punica (
    sifra int not null primary key auto_increment,
    hlace varchar(43) not null,
    nausnica int not null,
    ogrlica int,
    vesta varchar(49) not null,
    modelnaocala varchar(31) not null,
    treciputa datetime not null,
    punac int not null
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    majica varchar(33),
    ogrlica int not null,
    carape varchar(44),
    stilfrizura varchar(42),
    punica int not null
);

alter table mladic add foreign key (zarucnik) references zarucnik(sifra);
alter table punac add foreign key (svekar) references svekar(sifra);
alter table punica add foreign key (punac) references punac(sifra);
alter table ostavljena add foreign key (punica) references punica(sifra);
alter table svekar_cura add foreign key (svekar) references svekar(sifra);
alter table svekar_cura add foreign key (cura) references cura(sifra);


INSERT INTO kolokvij_vjezba_5.punac
(dukscerica, prviputa, majica, svekar)
VALUES(NULL, '2022-06-01', NULL, NULL);

INSERT INTO kolokvij_vjezba_5.punac
(dukscerica, prviputa, majica, svekar)
VALUES(NULL, '2022-06-02', NULL, NULL);

INSERT INTO kolokvij_vjezba_5.punac
(dukscerica, prviputa, majica, svekar)
VALUES(NULL, '2022-06-03', NULL, NULL);


INSERT INTO kolokvij_vjezba_5.punica
(hlace, nausnica, ogrlica, vesta, modelnaocala, treciputa, punac)
VALUES('Hlace1', 0, NULL, 'Vesta1', 'Modelcvika', '2022-06-03', 1);

INSERT INTO kolokvij_vjezba_5.punica
(hlace, nausnica, ogrlica, vesta, modelnaocala, treciputa, punac)
VALUES('Hlace1', 0, NULL, 'Vesta1', 'Modelcvika', '2022-06-02', 2);

INSERT INTO kolokvij_vjezba_5.punica
(hlace, nausnica, ogrlica, vesta, modelnaocala, treciputa, punac)
VALUES('Hlace2', 0, NULL, 'Vesta2', 'Modelcvika2', '2022-06-03', 3);

INSERT INTO kolokvij_vjezba_5.svekar
(bojakose, majica, carape, haljina, narukvica, eura)
VALUES(NULL, NULL, 'Carape1', NULL, NULL, 1);

INSERT INTO kolokvij_vjezba_5.svekar
(bojakose, majica, carape, haljina, narukvica, eura)
VALUES(NULL, NULL, 'Carape1', NULL, NULL, 2);

INSERT INTO kolokvij_vjezba_5.svekar
(bojakose, majica, carape, haljina, narukvica, eura)
VALUES(NULL, NULL, 'Carape1', NULL, NULL, 3);

INSERT INTO kolokvij_vjezba_5.cura
(carape, maraka, asocijalno, vesta)
VALUES('Carape1', 1, NULL, 'Vesta1'),('Carape2', 2, NULL, 'Vesta2'),('Carape3', 3, NULL, 'Vesta3');

INSERT INTO kolokvij_vjezba_5.svekar_cura
(svekar, cura)
VALUES(1, 1),(2,2),(3,3);

update mladic set hajina='Osijek';

delete from ostavljena where ogrlica=17;

select majica from punac where prviputa is null;

select a.asocijalno, e.stilfrizura, f.nausnica 
from cura a inner join svekar_cura b 
on a.sifra = b.cura 
inner join svekar c 
on c.sifra = b.svekar 
inner join punac d 
on c.sifra = d.svekar
inner join punica f 
on d.sifra = f.punac
inner join ostavljena e 
on f.sifra = e.punica
where d.prviputa is not null and c.majica like '%ba%'
order by f.nausnica desc;

select a.majica, a.carape 
from svekar a left join svekar_cura b 
on a.sifra = b.svekar 
where b.svekar is null;

#Napravio u 29:29.19 bez unosa svih podataka, ali funkcije su uredu.
#Preostalo 15 minuta za inserte kako bi dobio rezultate