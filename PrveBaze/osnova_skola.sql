#Zadatak: Osnovna škola
#U osnovnoj školi postoje dječje radionice. Na jednoj radionici sudjeluje više djece.
#Jedno dijete može sudjelovati na više radionica. Radionicu vodi jedna učiteljica.

# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\Vjezba\osnova_skola.sql

drop database if exists osnova_skola;
create database osnova_skola default charset utf8mb4;
use osnova_skola;

create table djecja_radionica(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    vrsta varchar(50),
    broj_djece decimal(18,2),
    uciteljica int not null
);

create table dijete (
    sifra int not null primary key auto_increment,
    ime_roditelja varchar(50) not null,
    osoba int not null,
    djecja_radionica int not null
);

create table uciteljica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    strucna_sprema varchar(50),
    iban varchar(20)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

alter table uciteljica add foreign key (osoba) references osoba(sifra);
alter table dijete add foreign key (osoba) references osoba(sifra);
alter table djecja_radionica add foreign key (uciteljica) references uciteljica(sifra);
alter table dijete add foreign key (djecja_radionica) references djecja_radionica(sifra);