create table lista11e(`id` int(11) NOT NULL auto_increment,
	primary key (`id`),
	`id_user`	int(11)	NOT NULL ,
	`nume_autori` varchar(250) default NULL,
	`nume_lucrare` varchar(250) default NULL,
	`tip_lucrare` varchar(250) default NULL,
	`data` int(11) default NULL);


