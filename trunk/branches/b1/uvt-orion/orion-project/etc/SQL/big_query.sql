/* FROM lista1 TO lista10 */

create table lista1(
	`id_lista1` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`nr` int(11) default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	`factor_impact` double default NULL,
	PRIMARY KEY(`id_lista1`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista2(
	`id_lista2` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`nr` int(11) default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista2`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista3(
	`id_lista3` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`nr` int(11) default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista3`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista4(
	`id_lista4` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_volumului` varchar(250) default NULL,
	`denumirea_conferintei` varchar(250) default NULL,
	`locul_desfasurarii` varchar(250) default NULL,
	`data_desfasurarii` date default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista4`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista5(
	`id_lista5` int(11) NOT NULL auto_increment,
	`titlu_conferinta` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_volumului` varchar(250) default NULL,
	`denumirea_manifestarii` varchar(250) default NULL,
	`locul_desfasurarii` varchar(250) default NULL,
	`data_desfasurarii` date default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista5`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista6(
	`id_lista6` int(11) NOT NULL auto_increment,
	`titlu_monografie` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`editura` varchar(250) default NULL,
	`localitatea` varchar(250) default NULL,
	`data` int(11) default NULL,
	`numar_pagini` int(11) default NULL,
	PRIMARY KEY(`id_lista6`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista7(
	`id_lista7` int(11) NOT NULL auto_increment,
	`titlu` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`editura` varchar(250) default NULL,
	`localitatea` varchar(250) default NULL,
	`data` int(11) default NULL,
	`numar_pagini` int(11) default NULL,
	PRIMARY KEY(`id_lista7`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista8(
	`id_lista8` int(11) NOT NULL auto_increment,
	`nume`	varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`autorul_care_citeaza` varchar(250) default NULL, 
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`numar_pagini` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista8`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista9(
	`id_lista9` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`nume` varchar(250) default NULL,
	`denumirea_volumului` varchar(250) default NULL,
	`denumirea_conferintei` varchar(250) default NULL,
	`locul_desfasurarii` varchar(250) default NULL,
	`data_desfasurarii` date default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`data` int(11) default NULL,
	PRIMARY KEY(`id_lista9`)
)ENGINE=INNODB CHARSET=latin1; 

create table lista10(
	`id_lista10` int(11) NOT NULL auto_increment,
	`tip_grant` varchar(250) default NULL,
	`data` int(11) default NULL, 
	`suma` double default NULL,
	`nume` varchar(250) default NULL,
	PRIMARY KEY(`id_lista10`)
)ENGINE=INNODB CHARSET=latin1; 

/* END */

/* FROM lista11a TO lista11m */
create table lista11a(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11b(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`nume_conducator` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11c(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_material` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11d(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`nume_manifestare` varchar(250) default NULL,
	`tip_manifestare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11e(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`tip_lucrare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11f(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_revista` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11g(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11h(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11i(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11j(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`nume_organizatie` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11k(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11l(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11m(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume` varchar(250) default NULL,
	`data` int(11) default NULL);
/* END */

/* ALTER LISTE */

alter table lista1 add (id_user int(11));
alter table lista2 add (id_user int(11));
alter table lista3 add (id_user int(11));
alter table lista4 add (id_user int(11));
alter table lista5 add (id_user int(11));
alter table lista6 add (id_user int(11));
alter table lista7 add (id_user int(11));
alter table lista8 add (id_user int(11));
alter table lista9 add (id_user int(11));
alter table lista10 add (id_user int(11));
alter table lista11a add (id_user int(11));
alter table lista11b add (id_user int(11));
alter table lista11c add (id_user int(11));
alter table lista11d add (id_user int(11));
alter table lista11e add (id_user int(11));
alter table lista11f add (id_user int(11));
alter table lista11g add (id_user int(11));
alter table lista11h add (id_user int(11));
alter table lista11i add (id_user int(11));
alter table lista11j add (id_user int(11));
alter table lista11k add (id_user int(11));
alter table lista11l add (id_user int(11));
alter table lista11m add (id_user int(11));


/* END */

create table users(
	`user_id` int(11) NOT NULL auto_increment,
	`email_address` varchar(250) default NULL,
	`password` varchar(250) NOT NULL,
	`user_right` int(11) default NULL,
	`user_status` int(11) default NULL,                   
	`first_name` varchar(250) default NULL,                  
	`last_name` varchar(250) default NULL,
	`birth_date` date default NULL,
	`functie_didactica` int(11) default NULL,
	`doctor` bit(1) default NULL, 
	`doctor_din`  int(11) default NULL,
	`conducator_doctorat` bit(1) default NULL, 
	`doctoranzi_stagiu_zi` int(11) default NULL,
	`doctoranzi_stagiu_fr` int(11) default NULL,
	`level` int(11) default NULL,
	`consultant` bit(1) default NULL, 
	`cv_location` varchar(250) default NULL,
	PRIMARY KEY(`user_id`),
	UNIQUE KEY `email_address` (`email_address`)
)ENGINE=INNODB CHARSET=latin1; 

INSERT INTO users (email_address, user_right, user_status, password, birth_date, doctor, conducator_doctorat, doctoranzi_stagiu_zi, doctoranzi_stagiu_fr, doctor_din, first_name, last_name, functie_didactica, consultant, level, cv_location)
VALUES ('admin@uvt.ro', '1', '0', '8287458823facb8ff918dbfabcd22ccb',  '1965-07-02', '', ' ', '12', '6', '1990', 'John', 'Smith', '1', '' , '0', ' ');

/* 
 *  email: admin@uvt.ro
 *  password: parola
 * 
 */

create table metatable(
	`id` 		int(11) NOT NULL auto_increment,
	`nume_tabela` 	varchar(250) default NULL, 
	`camp_tabela` 	varchar(250) default NULL,
	`camp_obiect` 	varchar(250) default NULL,
	`camp_vizual` 	varchar(250) default NULL,
	`tip` 		varchar(250) default NULL,
	`extrastuf` varchar(250) default NULL,
	PRIMARY KEY(`id`)
)ENGINE=INNODB CHARSET=latin1; 

/* META : lista1 - lista10, users */

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "id_lista1", "idLista1", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "titlu_articol", "titluArticol", "Titlu Articol", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "denumirea_revistei", "denumireaRevistei", "Denumirea Revistei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "vol", "vol", "Vol", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "nr", "nr", "Nr", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "data", "data", "Anul", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "factor_impact", "factorImpact", "Factor Impact", "double");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "id_lista2", "idLista2", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "titlu_articol", "titluArticol", "Titlu Articol", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "denumirea_revistei", "denumireaRevistei", "Denumirea Revistei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "vol", "vol", "Vol", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "nr", "nr", "Nr", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "id_lista3", "idLista3", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "titlu_articol", "titluArticol", "Titlu Articol", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "denumirea_revistei", "denumireaRevistei", "Denumirea Revistei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "vol", "vol", "Vol", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "nr", "nr", "Nr", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "id_lista4", "idLista4", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "titlu_articol", "titluArticol", "Titlu Articol", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "denumirea_volumului", "denumireaVolumului", "Denumirea Volumului", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "denumirea_conferintei", "denumireaConferintei", "Denumirea Conferintei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "locul_desfasurarii", "loculDesfasurarii", "Locul Desfasurarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "data_desfasurarii", "dataDesfasurarii", "Data Desfasurarii", "date");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "id_lista5", "idLista5", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "titlu_conferinta", "titluConferinta", "Titlu Conferinta", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "denumirea_volumului", "denumireaVolumului", "Denumirea Volumului", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "denumirea_manifestarii", "denumireaManifestarii", "Denumirea Manifestarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "locul_desfasurarii", "loculDesfasurarii", "Locul Desfasurarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "data_desfasurarii", "dataDesfasurarii", "Data Desfasurarii", "date");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "id_lista6", "idLista6", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "titlu_monografie", "titluMonografie", "Titlu Monografie", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "editura", "editura", "Editura", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "localitatea", "localitatea", "Localitatea", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "data", "anulAparitiei", "Anul Aparitiei", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "numar_pagini", "numarPagini", "Numar Pagini", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "id_lista7", "idLista7", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "titlu", "titlu", "Titlu", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "editura", "editura", "Editura", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "localitatea", "localitatea", "Localitatea", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "data", "anulAparitiei", "Anul Aparitiei", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "numar_pagini", "numarPagini", "Numar Pagini", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "id_lista8", "idLista8", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "nume", "autorCitat", "Autorul citat", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "nume_lucrare", "numeLucrareCitata", "Numele lucrarii citate", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "autorul_care_citeaza", "autorulCareCiteaza", "Autorul Care Citeaza", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "denumirea_revistei", "denumireaRevistei", "Denumirea Revistei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "vol", "vol", "Vol", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "numar_pagini", "numarPagini", "Numar Pagini", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "id_lista9", "idLista9", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "titlu_articol", "titluArticol", "Titlu Articol", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "nume", "nume", "Autorii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "denumirea_volumului", "denumireaVolumului", "Denumirea Volumului", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "denumirea_conferintei", "denumireaConferintei", "Denumirea Conferintei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "locul_desfasurarii", "loculDesfasurarii", "Locul Desfasurarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "data_desfasurarii", "dataDesfasurarii", "Data Desfasurarii", "date");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "pagina_de_inceput", "paginaDeInceput", "Pagina De Inceput", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "pagina_de_sfarsit", "paginaDeSfarsit", "Pagina De Sfarsit", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "id_lista10", "idLista10", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "tip_grant", "tipGrant", "Tip Grant", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "data", "perioada", "Anul", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "suma", "suma", "Suma", "double");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "nume", "directorProgram", "Director Program", "varchar");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "user_id", "userId", "User Id", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "email_address", "emailAddress", "Email Address", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "password", "password", "Password", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "user_right", "userRight", "User Right", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "user_status", "userStatus", "User Status", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "first_name", "firstName", "First Name", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "last_name", "lastName", "Last Name", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "birth_date", "birthDate", "Birth Date", "date");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "functie_didactica", "functieDidactica", "Functie Didactica", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "doctor", "doctor", "Doctor", "bit");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "doctor_din", "doctorDin", "Doctor Din", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "conducator_doctorat", "conducatorDoctorat", "Conducator Doctorat", "bit");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "doctoranzi_stagiu_zi", "doctoranziStagiuZi", "Doctoranzi Stagiu Zi", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "doctoranzi_stagiu_fr", "doctoranziStagiuFr", "Doctoranzi Stagiu Fr", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "level", "level", "Level", "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "consultant", "consultant", "Consultant", "bit");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("users", "cv_location", "cv_location", "Locatie CV", "varchar");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista1", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista2", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista3", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista4", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista5", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista6", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista7", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista8", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista9", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista10", "id_user", "IDUser", null, "int");

/* END */


/* META : lista11a - lista11m */

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11a", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11a", "nume", "numeAutori", "Nume Autor(i)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11a", "nume_lucrare", "numeLucrare", "Titlul lucrarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11a", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "nume", "numeAutor", "Nume Autor", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "nume_lucrare", "numeLucrare", "Titlul lucrarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "nume_conducator", "numeConducator", "Nume conducator", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11c", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11c", "nume", "numeAutori", "Nume Autor(i)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11c", "nume_material", "numeMaterial", "Nume material didactic", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11c", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "nume", "numeAutori", "Nume Autor(i)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "nume_lucrare", "numeLucrare", "Titlul lucrarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "nume_manifestare", "numeManifestare", "Manifestarea stiintifica", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "tip_manifestare", "tipManifestare", "Tipul manifestarii (conferinta invitata, lucrare de sinteza)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "nume", "numeAutori", "Nume Autor(i)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "nume_lucrare", "numeLucrare", "Titlul lucrarii", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "tip_lucrare", "tipLucrare", "Tipul lucrarii (brevet, produse aplicate in industrie)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11f", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11f", "nume", "numeMembru", "Nume membru Colectiv de redactie", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11f", "nume_revista", "numeRevista", "Numele revistei", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11f", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11g", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11g", "nume", "numePremiat", "Nume Premiant", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11g", "nume_premiu", "numePremiu", "Premiul acordat de Academia Romana", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11g", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11h", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11h", "nume", "numePremiat", "Nume Premiant", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11h", "nume_premiu", "numePremiu", "Premiul acordat (MEN, CNCSIS)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11h", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11i", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11i", "nume", "numePremiat", "Nume Premiant", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11i", "nume_premiu", "numePremiu", "Premiul acordat (alte premii)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11i", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11j", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11j", "nume", "numeMembru", "Nume Membru", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11j", "nume_organizatie", "numeOrganizatie", "Nume organizatie (nationala / internationala)", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11j", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11k", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11k", "nume", "numeReferent", "Nume Referent stiintific / expert CNCSIS", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11k", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11l", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11l", "nume", "numeOrganizator", "Nume organizator manifestari stiintifice nationale / internationale", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11l", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11m", "id", "ID", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11m", "nume", "numeRecenzor", "Nume comisie de doctorat / Recenzor in tara", "varchar");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11m", "data", "data", "Anul", "int");

insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11a", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11b", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11c", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11d", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11e", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11f", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11g", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11h", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11i", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11j", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11k", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11l", "id_user", "IDUser", null, "int");
insert into metatable (nume_tabela, camp_tabela, camp_obiect, camp_vizual, tip) values ("lista11m", "id_user", "IDUser", null, "int");


update metatable set camp_vizual = null where camp_tabela like "%_id";
update metatable set camp_vizual = null where camp_tabela like "id_%";

update metatable set camp_vizual = 'Anul' where camp_vizual = 'data';

update metatable set extrastuf = "Range(0.0, 10.0)" where camp_tabela like "%factor_impact%";
update metatable set extrastuf = 'Range(0, null)' where camp_tabela like "pagina_de_inceput";
update metatable set extrastuf = 'Range(var(pagina_de_inceput), null)' where camp_tabela like "pagina_de_sfarsit";

/* END */
