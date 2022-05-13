#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\zupanijskauprava.sql

drop database if exists zupanijska_uprava;
create database zupanijska_uprava;
use zupanijska_uprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(100),
    zupan varchar(50)
);

create table opcina (
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

insert into zupanija (naziv, zupan)
values ('Osječko-baranjska županija', 'Filip Tomić');

insert into zupanija (naziv, zupan)
values ('Primorsko-goranska županija', 'Dominik Sivić');

insert into zupanija (naziv, zupan)
values ('Istarska županija', 'Toni Bilić');

insert into opcina (zupanija, naziv)
values ('1', 'Vuka');

insert into opcina (zupanija, naziv)
values ('2', 'Lovran');

insert into opcina (zupanija,naziv)
values ('3', 'Marčana');
