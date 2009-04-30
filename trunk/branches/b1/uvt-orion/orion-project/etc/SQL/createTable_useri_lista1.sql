CREATE TABLE `useri_lista1` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista1` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista1`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista1` (`id_lista1`)   
)ENGINE=INNODB CHARSET=latin1; 