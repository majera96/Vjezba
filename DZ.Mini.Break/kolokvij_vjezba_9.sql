#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_9.sql

drop database if exists kolokvij_vjezba_9;
create database kolokvij_vjezba_9 default charset utf8mb4;
use kolokvij_vjezba_9;

create table punac_prijateljica(
    sifra int not null primary key auto_increment,
    punac int not null,
    prijateljica int not null
);

create table prijateljica(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    novcica decimal(16,7),
    kuna decimal(14,10) not null,
    drugiputa datetime,
    haljina varchar(44),
    kratkamajica varchar(48)
);

create table cura(
    sifra int not null primary key auto_increment,
    vesta varchar(49) not null,
    ekstroventno boolean,
    carape varchar(47),
    suknja varchar(47) not null,
    punac int
);

create table punac(
    sifra int not null primary key auto_increment,
    narukvica int not null,
    modelnaocala varchar(30),
    kuna decimal(12,8),
    bojaociju varchar(33),
    suknja varchar(45)
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    gustoca decimal(17,6),
    haljina varchar(40),
    kratkamajica varchar(48) not null,
    nausnica int not null,
    brat int not null
);

create table brat(
    sifra int not null primary key auto_increment,
    novcica decimal (18,9) not null,
    ekstroventno boolean,
    vesta varchar(32) not null,
    cura int
);

create table snasa(
    sifra int not null primary key auto_increment,
    prstena int,
    drugiputa datetime not null,
    haljina varchar(38) not null,
    ostavljena int
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    modelnaocala varchar(34) not null,
    suknja varchar(32),
    eura decimal(18,7) not null,
    lipa decimal(15,7) not null,
    treciputa datetime not null,
    drugiputa datetime not null
);

alter table snasa add foreign key (ostavljena) references ostavljena(sifra);
alter table punac_prijateljica add foreign key (prijateljica) references prijateljica(sifra);
alter table punac_prijateljica add foreign key (punac) references punac(sifra);
alter table cura add foreign key (punac) references punac(sifra);
alter table brat add foreign key (cura) references cura(sifra);
alter table zarucnik add foreign key (brat) references brat(sifra);

INSERT INTO kolokvij_vjezba_9.cura
(vesta, ekstroventno, carape, suknja, punac)
VALUES('VestaDobra', NULL, NULL, 'SuknjaDobra', NULL),('VestaDobra2', NULL, NULL, 'SuknjaDobra2', NULL),('VestaDobra3', NULL, NULL, 'SuknjaDobra3', NULL);

INSERT INTO kolokvij_vjezba_9.brat
(novcica, ekstroventno, vesta, cura)
VALUES(0, NULL, 'Vesta1', 1),(0, NULL, 'Vesta2', 2),(0, NULL, 'Vesta3', 3);

INSERT INTO kolokvij_vjezba_9.punac
(narukvica, modelnaocala, kuna, bojaociju, suknja)
VALUES(1, NULL, NULL, NULL, NULL),(2, NULL, NULL, NULL, NULL),(3, NULL, NULL, NULL, NULL);

INSERT INTO kolokvij_vjezba_9.prijateljica
(treciputa, novcica, kuna, drugiputa, haljina, kratkamajica)
VALUES(NULL, NULL, 1, NULL, NULL, NULL),(NULL, NULL, 2, NULL, NULL, NULL),(NULL, NULL, 3, NULL, NULL, NULL);

INSERT INTO kolokvij_vjezba_9.punac_prijateljica
(punac, prijateljica)
VALUES(1, 1),(2,2),(3,3);

update snasa set drugiputa='2020-04-24';

delete from zarucnik where haljina like '%AB%';

select carape from cura where ekstroventno is null;

select a.kuna, f.nausnica,e.ekstroventno 
from prijateljica a inner join punac_prijateljica b 
on a.sifra = b.prijateljica 
inner join punac c 
on b.punac = c.sifra 
inner join cura d 
on c.sifra = d.punac 
inner join brat e 
on d.sifra = e.cura
inner join zarucnik f 
on e.sifra = f.brat 
where d.ekstroventno is not null and c.modelnaocala like '%BA%'
order by e.ekstroventno desc;

select a.modelnaocala, a.kuna
from punac a left join punac_prijateljica b 
on a.sifra = b.punac 
where b.punac is null;

#Napravio u 22:48,96
#Nisam radio sve inserte