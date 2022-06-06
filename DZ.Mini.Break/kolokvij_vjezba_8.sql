#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_8.sql

drop database if exists kolokvij_vjezba_8;
create database kolokvij_vjezba_8 default charset utf8mb4;
use kolokvij_vjezba_8;

create table prijateljica(
    sifra int not null primary key auto_increment,
    vesta varchar(50),
    nausnica int not null,
    introvertno boolean not null
);

create table cura(
    sifra int not null primary key auto_increment,
    nausnica int not null,
    indiferentno boolean,
    ogrlica int not null,
    gustoca decimal(12,6),
    drugiputa datetime,
    vesta varchar(33),
    prijateljica int
);

create table becar(
    sifra int not null primary key auto_increment,
    eura decimal(15,10) not null,
    treciputa datetime,
    prviputa datetime,
    muskarac int not null
);

create table muskarac (
    sifra int not null primary key auto_increment,
    haljina varchar(47),
    drugiputa datetime not null,
    treciputa datetime
);

create table muskarac_decko(
    sifra int not null primary key auto_increment,
    muskarac int not null,
    decko int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    kratkamajica varchar(44),
    introvertno boolean,
    indiferentno boolean,
    ogrlica int not null,
    becar int not null
);

create table brat(
    sifra int not null primary key auto_increment,
    introvertno boolean,
    novcica decimal(14,7) not null,
    treciputa datetime,
    neprijatelj int
);

create table decko(
    sifra int not null primary key auto_increment,
    kuna decimal(12,10),
    lipa decimal(17,10),
    bojakose varchar(44),
    treciputa datetime not null,
    ogrlica int not null,
    ekstroventno boolean not null
);

alter table muskarac_decko add foreign key (muskarac) references muskarac(sifra);
alter table muskarac_decko add foreign key (decko) references decko(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key (becar) references becar(sifra);
alter table becar add foreign key (muskarac) references muskarac(sifra);
alter table cura add foreign key (prijateljica) references prijateljica(sifra);

INSERT INTO kolokvij_vjezba_8.muskarac
(haljina, drugiputa, treciputa)
VALUES('HaljinaBA', '2022-06-06', NULL),('HaljinaBA2', '2022-06-05', NULL),('HaljinaBA3', '2022-06-04', NULL);

INSERT INTO kolokvij_vjezba_8.decko
(kuna, lipa, bojakose, treciputa, ogrlica, ekstroventno)
VALUES(NULL, NULL, NULL, '2022-06-06', 1, 1),(NULL, NULL, NULL, '2022-06-05', 2, 2),(NULL, NULL, NULL, '2022-06-03', 3, 3);

INSERT INTO kolokvij_vjezba_8.muskarac_decko
(muskarac, decko)
VALUES(1, 1),(2,2),(3,3);


INSERT INTO kolokvij_vjezba_8.becar
(eura, treciputa, prviputa, muskarac)
VALUES(15, NULL, NULL, 1),(45, NULL, NULL, 2),(9, NULL, NULL, 3);

INSERT INTO kolokvij_vjezba_8.neprijatelj
(kratkamajica, introvertno, indiferentno, ogrlica, becar)
VALUES(NULL, NULL, NULL, 1, 1),(NULL, NULL, NULL, 2, 2),(NULL, NULL, NULL, 3, 3);

update cura set indiferentno=false;

delete from brat where novcica<>12.75;

select prviputa from becar where treciputa is null;

select a.bojakose, f.neprijatelj, e.introvertno 
from decko a inner join muskarac_decko b 
on a.sifra = b.decko 
inner join muskarac c 
on c.sifra = b.muskarac 
inner join becar d 
on c.sifra = d.muskarac 
inner join neprijatelj e 
on d.sifra = e.becar 
inner join brat f 
on e.sifra = f.neprijatelj 
where d.treciputa is not null and c.drugiputa is not null 
order by e.introvertno desc;

select a.drugiputa,a.treciputa
from muskarac a left join muskarac_decko b 
on a.sifra = b.muskarac 
where b.muskarac is null;

#Napravljeno u 22:50