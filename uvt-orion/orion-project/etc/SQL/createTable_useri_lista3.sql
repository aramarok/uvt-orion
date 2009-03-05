CREATE TABLE `useri_lista3` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista3` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista3`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista3` (`id_lista3`)   
)ENGINE=INNODB CHARSET=latin1; 