CREATE TABLE `useri_lista2` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista2` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista2`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista2` (`id_lista2`)   
)ENGINE=INNODB CHARSET=latin1; 