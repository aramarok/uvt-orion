create table lista1(
	`id_user`	int(11)	NOT NULL ,
	`id_lista1` int(11) NOT NULL auto_increment,
	`titlu_articol` varchar(250) default NULL, 
	`autorii` varchar(250) default NULL,
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`nr` int(11) default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`anul` int(11) default NULL,
	`factor_impact` double default NULL,
	PRIMARY KEY(`id_lista1`)
)ENGINE=INNODB CHARSET=latin1; 