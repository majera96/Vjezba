#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_7.sql

drop database if exists kolokvij_vjezba_7;
create database kolokvij_vjezba_7 default charset utf8mb4;
use kolokvij_vjezba_7;

create table punica (
    sifra int not null primary key auto_increment,
    majica varchar(49),
    eura decimal(19,2) not null,
    prstena int,
    cura int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    lipa decimal(12,9) not null,
    introvertno boolean,
    modelnaocala varchar(40),
    narukvica int,
    treciputa datetime,
    kuna decimal(14,9)
);

create table zarucnik_mladic(
    sifra int not null primary key auto_increment,
    zarucnik int not null,
    mladic int not null
);

create table mladic (
    sifra int not null primary key auto_increment,
    prstena int,
    lipa decimal(14,5) not null,
    narukvica int not null,
    drugiputa datetime
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    vesta varchar(34),
    asocijalno boolean,
    modelnaocala varchar(43),
    narukvica int not null,
    novcica decimal(15,5) not null
);

create table ostavljen (
    sifra int not null primary key auto_increment,
    lipa decimal(14,6),
    introvertno boolean not null,
    kratkamajica varchar(38) not null,
    prstena int not null,
    zarucnik int
);

create table sestra (
    sifra int not null primary key auto_increment,
    bojakose varchar(34) not null,
    hlace varchar(46) not null,
    lipa decimal(15,6),
    stilfrizura varchar(40) not null,
    maraka decimal(12,8) not null,
    prijateljica int
);

create table prijateljica(
    sifra int not null primary key auto_increment,
    haljina varchar(45),
    gustoca decimal(15,10) not null,
    ogrlica int,
    novcica decimal (12,5),
    ostavljen int
);

alter table punica add foreign key (cura) references cura(sifra);
alter table prijateljica add foreign key (ostavljen) references ostavljen(sifra);
alter table sestra add foreign key (prijateljica) references prijateljica(sifra);
alter table ostavljen add foreign key (zarucnik) references zarucnik(sifra);
alter table zarucnik_mladic add foreign key (mladic) references mladic(sifra);
alter table zarucnik_mladic add foreign key (zarucnik) references zarucnik(sifra);

INSERT INTO kolokvij_vjezba_7.zarucnik
(vesta, asocijalno, modelnaocala, narukvica, novcica)
VALUES('Vesta1',1, 'Rayban', 1, 1),('Vesta2',2, 'Police', 2, 2),('Vesta3',3, 'Polaroid', 3, 3);

INSERT INTO kolokvij_vjezba_7.ostavljen
(lipa, introvertno, kratkamajica, prstena, zarucnik)
VALUES(NULL, 1, 'Guess', 1, 1),(NULL, 2, 'HM T-shirt', 2, 2),(NULL, 3, 'Zara Men', 3, 3);

INSERT INTO kolokvij_vjezba_7.prijateljica
(haljina, gustoca, ogrlica, novcica, ostavljen)
VALUES('Calvin Klein', 1, 1, 14, 1),('Hugo boss', 2, 2, 9, 2),('Tommy Hilfiger', 3, 3, 11, 3);

INSERT INTO kolokvij_vjezba_7.mladic
(prstena, lipa, narukvica, drugiputa)
VALUES(1, 1, 1, '2022-06-06'),(2, 2, 2, '2022-06-05'),(3, 3, 3, '2022-06-04');

INSERT INTO kolokvij_vjezba_7.zarucnik_mladic
(zarucnik, mladic)
VALUES(1, 1),(2,2),(3,3);

update punica set eura='15.77';

delete from sestra where hlace like '%AB%';

select kratkamajica from ostavljen where introvertno is null;

select a.narukvica, f.stilfrizura, e.gustoca 
from mladic a inner join zarucnik_mladic b 
on a.sifra = b.mladic 
inner join zarucnik c 
on b.zarucnik = c.sifra 
inner join ostavljen d 
on c.sifra = d.zarucnik
inner join prijateljica e 
on d.sifra = e.ostavljen
inner join sestra f 
on e.sifra = f.prijateljica 
where c.asocijalno is not null and d.introvertno is not null 
order by e.gustoca desc;

select a.asocijalno, a.modelnaocala 
from zarucnik a left join zarucnik_mladic b 
on a.sifra = b.zarucnik 
where b.zarucnik is null;

#Napravljeno u 27:16