#unjeti 3 županije, 6 opcina, 12 mjesta, 3 župana
#promjeniti 5 mjesta
#obrisati 2 opcine

#C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\drzavna_samouprava.sql

drop database if exists drzavna_samouprava;
create database drzavna_samouprava default charset utf8mb4;
use drzavna_samouprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);


#Zadaca

insert into zupanija(sifra,naziv,zupan)
values (null,'Osječko-baranjska županija',null),
(null,'Istarska županija',null),
(null,'Vukovarsko-srijemska županija',null);

insert into opcina(sifra,zupanija,naziv)
values (null,1,'Vuka'),(null,1,'Viškovci'),(null,2,'Marčana'),(null,2,'Fažana'),(null,3,'Nemetin'),(null,3,'Nuštar');

insert into mjesto(sifra,opcina,naziv)
values (null,1,'Beketinci'),(null,1,'Hrastovac'),(null,2,'Forkuševci'),(null,2,'Kuševac'),(null,3,'Buje'),(null,3,'Marčana'),(null,4,'Valbandon'),(null,4,'Fažana'),(null,5,'Negoslavci'),(null,5,'Bobota'),(null,6,'Nuštar'),(null,6,'Bogdanovci');

insert into zupan(sifra,ime,prezime)
values (null,'Ivan','Anušić'),(null,'Boris','Miletić'),(null,'Damir','Dekanić');

update zupanija set zupan=1 where sifra=1;
update zupanija set zupan=2 where sifra=2;
update zupanija set zupan=3 where sifra=3;

delete from opcina where sifra=4;
delete from opcina where sifra=6;

delete from mjesto where sifra=12;
delete from mjesto where sifra=11;
delete from mjesto where sifra=10;
delete from mjesto where sifra=9;
delete from mjesto where sifra=8;
delete from mjesto where sifra=7;