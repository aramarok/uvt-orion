create table lista7(
	`id_user`	int(11)	NOT NULL ,
	`id_lista7` int(11) NOT NULL auto_increment,
	`titlu` varchar(250) default NULL, 
	`autorii` varchar(250) default NULL,
	`editura` varchar(250) default NULL,
	`localitatea` varchar(250) default NULL,
	`anul_aparitiei` int(11) default NULL,
	`numar_pagini` int(11) default NULL,
	PRIMARY KEY(`id_lista7`)
)ENGINE=INNODB CHARSET=latin1; 