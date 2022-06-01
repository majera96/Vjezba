#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\kolokvij_vjezba_2.sql

# 0. Kreirajte tablice i veze izmedu tablica.

drop database if exists kolokvij_vjezba_2;
create database kolokvij_vjezba_2 default charset utf8mb4;
use kolokvij_vjezba_2;

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica int,
    introvertno boolean,
    majica varchar(40) not null,
    decko int
);

create table decko (
    sifra int not null primary key auto_increment,
    indiferentno boolean,
    vesta varchar(34),
    asocijalno boolean not null
);

create table decko_zarucnica (
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);

create table zarucnica (
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15,8) not null,
    indiferentno boolean not null
);

create table prijatelj (
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime not null,
    ekstroventno boolean not null,
    prviputa datetime,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno boolean not null
);

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno boolean not null,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49) not null,
    kuna decimal(12,6) not null,
    jmbag char(11),
    cura int
);

alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table prijatelj add foreign key (svekar) references svekar(sifra);

# 1. U tablice neprijatelj,cura i decko unesite po 3 retka.

insert into neprijatelj(sifra,haljina,modelnaocala,kuna)
values (null,'Anthony Morato','Aviator','9,99'), (null,'Hugo Boss','Police','6,99'), (null,'Calvin Klein','Kockaste','2,99');
insert into decko (sifra,asocijalno)
values (null,true),(null,true),(null,false);
insert into cura(sifra,haljina,drugiputa,majica)
values (null,'Dobra Haljina','2022-05-31','Isto Dobra Majica'),(null,'Još bolja','2022-05-30','Dobra Maja'),(null,'Najbolja','2022-05-29','Najbolja');

#2. U tablici prijatelj postavite svim zapisima kolonu treciputa
#na vrijednost 30.travanj 2020.

insert into svekar(sifra,ogrlica,asocijalno)
values (null,1,true),(null,2,true),(null,3,false);

insert into prijatelj (sifra,treciputa,ekstroventno,svekar)
values (null,'2022-05-31',true,1),(null,'2022-05-30',true,2),(null,'2022-05-29',false,3);

update prijatelj set treciputa='2020-04-30' where sifra in (1,2,3);

#3.U tablici brat obrišite sve zapise ćija je vrijednost kolone
#ogrlica različita od 14
insert into brat(sifra,suknja,ogrlica,asocijalno,neprijatelj)
values (null,'Suknja',1,true,1),(null,'Suknjaa',2,false,2),(null,'Tommy',3,true,3);

insert into neprijatelj(sifra,haljina,modelnaocala,kuna)
values (null,'Haljina1','Model1','9'),(null,'Haljina2','Model2','3'),(null,'Haljina3','Model3','5');

delete from brat where ogrlica<>14;

#4. Izlistajte suknja iz tablice cura uz uvjet da vrijednost kolone 
#drugiputa nepoznate

select suknja,drugiputa from cura where drugiputa=null;

#5.Prikažite novica iz tablice zarucnica, neprijatelj iz tablice brat te haljina 
#iz tablice neprijtelj uz uvjet da su vrijdnosti kolone drugiputa iz tablice 
#cura poznate te da su vrijednosti kolone vesta iz tablice decko sadrze
# niz znakova ba.Podatke posložite po haljina iz tablice 
#neprijatelj silazno.

select a.novcica,f.neprijatelj,e.haljina
from zarucnica a left join decko_zarucnica b 
on a.sifra = b.zarucnica 
right join decko c on b.decko = c.sifra 
left join cura d on c.sifra = d.decko
left join neprijatelj e on d.sifra = e.cura 
left join brat f on e.sifra = f.neprijatelj
where d.drugiputa=null and c.vesta like '%ba%';

select vesta from decko;
update decko set vesta='Vesta1' where sifra=1;
update decko set vesta='Vesta2' where sifra=2;
update decko set vesta='Vesta3' where sifra=3;
update decko set vesta='BaVesta' where sifra in (1,2,3);

#6.Prikažite kolone vesta i asocijalno iz tablice decko čiji
#se primarni ključ ne nalaze u tablici decko_zarucnica.

select vesta,asocijalno from decko;