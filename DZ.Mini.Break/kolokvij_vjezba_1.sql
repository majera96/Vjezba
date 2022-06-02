##C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\DZ.Mini.Break\kolokvij_vjezba_¸1.sql

# 0. Kreirajte tablice i veze izmedu tablica.

drop database if exists kolokvij_vjezba_1;
create database kolokvij_vjezba_1 default charset utf8mb4;
use kolokvij_vjezba_1;

create table sestra (
    sifra int not null primary key auto_increment,
    introvertno boolean,
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
    asocijalno boolean,
    ekstroventno boolean not null,
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

# 3. U tablici mladic obrišite sve zapise čija je vrijednost kolone kuna veće od 15,78.
select * from mladic;
insert into mladic (sifra,suknja,kuna,ekstroventno,dukserica)
values (null,'Suknja1','15',true,'Duksa123');
insert into mladic (sifra,suknja,kuna,ekstroventno,dukserica)
values (null,'Suknja2','11',true,'Duksa223');
insert into mladic (sifra,suknja,kuna,ekstroventno,dukserica)
values (null,'Suknja3','18',true,'Duksa1234556634');

delete from mladic where kuna>'15.78';

# 4. Izlistajte kratkamajica iz tablice zena uz uvjet da vrijednost kolone 
# hlace sadrže slova ana.

insert into zena (sifra,kratkamajica,jmbag,bojaociju,sestra,hlace)
values (null,'ana123',14589897,'Plava',1,'anahlace');
select kratkamajica from zena where hlace like '%ana%';

# 5. Prikažite dukserica iz tablice svekar, asocijalno iz tablice mladic te 
# hlace iz tablice muskarac uz uvjet da su vrijednosti kolone hlace iz 
# tablice zena počinju slovom a te da su vrijednosti kolone haljina iz 
# tablice sestra sadrže niz znakova ba. Podatke posložite po hlace iz 
# tablice muskarac silazno.

select a.dukserica, f.asocijalno, e.hlace
from svekar a inner join sestra_svekar b
on a.sifra = b.svekar
inner join sestra c on c.sifra = b.sestra
inner join zena d on c.sifra = d.sestra
inner join muskarac e on d.sifra = e.zena 
inner join mladic f on e.sifra = f.muskarac
where e.hlace like 'a%' and c.haljina like '%ba%'
order by c.hlace desc;

select * from sestra;
update sestra set haljina='Balenciaga' where sifra=1;
select * from muskarac;
update muskarac set hlace='Antonio' where sifra in (2,3);

# 6. Prikažite kolone haljina i maraka iz tablice sestra čiji se primarni 
# ključ ne nalaze u tablici sestra_svekar.

select a.haljina,a.maraka
from sestra a left join sestra_svekar b 
on a.sifra = b.sestra
where b.sestra is null;