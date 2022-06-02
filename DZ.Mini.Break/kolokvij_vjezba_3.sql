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

insert into cura(sifra,ogrlica)
values (null,1),(null,2),(null,3);

insert into svekar(sifra,novcica,suknja,narukvica,cura)
values (null,'15','Suknja1',1,1),(null,'10','Suknja2',2,2),(null,'9','Suknja3',3,3);

update svekar set suknja='Osijek';

#3. U tablici punica obrišite sve zapise čija je vrijednost kolone
#kratka majica jednako AB.
select kratkamajica from punica;
insert into punica(sifra,kratkamajica,kuna,vesta)
values (null,'ABmajica','5','Vesta1'),(null,'Majica2','10','Vesta2'),(null,'Majica3','15','Vesta3');
delete from punica where kratkamajica like '%ab%';

#4.Izlistajte majica iz tablice ostavljena uz uvjet da vrijednost kolone
#lipa nije 9,10,20,30 ili 35.
select * from ostavljena;
update ostavljena set lipa='5' where sifra=1;
update ostavljena set lipa='20' where sifra=2;
update ostavljena set lipa='31' where sifra=3;
select majica from ostavljena where lipa not in('9','10','20','30','35');

#Prikažite ekstroventno iz tablice brat,vesta iz tablice punica
#te kuna iz tablice snasa uz uvjet da su vrijednosti kolone lipa
#iz tablice ostavljena razlčito od 91 te da su vrijednosti kolone haljina iz tablice
#prijatelj sadrže niz znakova ba. Podatke posložite po kuna iz tablice snasa silazno.

select a.ekstroventno,f.vesta,e.kuna
from brat a inner join prijatelj_brat b 
on a.sifra = b.brat 
inner join prijatelj c on b.prijatelj = c.sifra 
inner join ostavljena d on c.sifra = d.prijatelj 
inner join snasa e on d.sifra = e.ostavljena 
inner join punica f on e.sifra = f.snasa
where d.lipa <>91 and c.haljina like '%ba%';

#6.Prikažite kolone haljina i lipa iz tablice prijatelj čiji se primarni ključ
#ne nalaze u tablici prijatelj_brat.

select a.haljina, a.lipa
from prijatelj a left join prijatelj_brat b 
on a.sifra = b.prijatelj
where b.prijatelj is null;

select haljina from prijatelj;
select lipa from prijatelj;


