create table lista8(
	`id_user`	int(11)	NOT NULL ,
	`id_lista8` int(11) NOT NULL auto_increment,
	`autorul_care_citeaza` varchar(250) default NULL, 
	`denumirea_revistei` varchar(250) default NULL,
	`vol` int(11) default NULL,
	`numar_pagini` int(11) default NULL,
	`anul` int(11) default NULL,
	PRIMARY KEY(`id_lista8`)
)ENGINE=INNODB CHARSET=latin1; 