# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\firma.sql

drop database if exists firma;
create database firma default charset utf8mb4;;
use firma;

create table projekt (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    cijena decimal(18,2)
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datum_rodenja datetime,
    placa decimal(18,2)
);

create table sudjeluje(
    sifra int not null primary key auto_increment,
    projekt int not null,
    programer int not null,
    datum_pocetka datetime not null,
    datum_zavrsetka datetime
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);

insert into projekt (naziv)
values ('ProjektM');

insert into projekt (naziv)
values ('ProjektZ')

insert into programer (ime,prezime)
values ('Antonio','Majer')

insert into programer (ime,prezime)
values ('Ante','Bikić')

insert into programer (ime,prezime)
values ('Antonio','Vuletić')

insert into programer (ime,prezime)
values ('Antun','Rukavina')