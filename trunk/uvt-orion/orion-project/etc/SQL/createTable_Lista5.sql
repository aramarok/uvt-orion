create table lista5(
	`id_user`	int(11)	NOT NULL ,
	`id_lista5` int(11) NOT NULL auto_increment,
	`titlu_conferinta` varchar(250) default NULL, 
	`autorii` varchar(250) default NULL,
	`denumirea_volumului` varchar(250) default NULL,
	`denumirea_manifestarii` varchar(250) default NULL,
	`locul_desfasurarii` varchar(250) default NULL,
	`data_desfasurarii` date default NULL,
	`pagina_de_inceput` int(11) default NULL,
	`pagina_de_sfarsit` int(11) default NULL,
	`anul` int(11) default NULL,
	PRIMARY KEY(`id_lista5`)
)ENGINE=INNODB CHARSET=latin1; 