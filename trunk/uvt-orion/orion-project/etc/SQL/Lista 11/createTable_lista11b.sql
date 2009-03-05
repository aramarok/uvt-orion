create table lista11b(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`id_user`	int(11)	NOT NULL ,
	`nume_autor` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`nume_conducator` varchar(250) default NULL,
	`data` int(11) default NULL);


