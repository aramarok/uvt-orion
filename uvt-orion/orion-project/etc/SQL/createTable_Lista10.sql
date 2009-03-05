create table lista10(
	`id_lista10` int(11) NOT NULL auto_increment,
	`tip_grant` int(11) default NULL,
	`perioada` int(11) default NULL, 
	`suma` double default NULL,
	`director_program` varchar(250) default NULL,
	PRIMARY KEY(`id_lista10`)
)ENGINE=INNODB CHARSET=latin1; 