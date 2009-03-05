create table metatable(
	`id` 		int(11) NOT NULL auto_increment,
	`nume_tabela` 	varchar(250) default NULL, 
	`camp_tabela` 	varchar(250) default NULL,
	`camp_obiect` 	varchar(250) default NULL,
	`camp_vizual` 	varchar(250) default NULL,
	`tip` 		varchar(250) default NULL,
	PRIMARY KEY(`id`)
)ENGINE=INNODB CHARSET=latin1; 