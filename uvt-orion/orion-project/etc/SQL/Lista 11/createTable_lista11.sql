create table lista11a(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_autori` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11b(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_autor` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`nume_conducator` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11c(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_autori` varchar(250) default NULL,
	`nume_material` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11d(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_autori` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`nume_manifestare` varchar(250) default NULL,
	`tip_manifestare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11e(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_autori` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`tip_lucrare` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11f(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_membru` varchar(250) default NULL,
	`nume_membru` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11g(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_premiat` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11h(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_premiat` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11i(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_premiat` varchar(250) default NULL,
	`nume_premiu` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11j(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_membru` varchar(250) default NULL,
	`nume_organizatie` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11k(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_referent` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11l(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_organizator` varchar(250) default NULL,
	`data` int(11) default NULL);


create table lista11m(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`nume_recenzor` varchar(250) default NULL,
	`data` int(11) default NULL);


