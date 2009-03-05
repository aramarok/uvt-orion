CREATE TABLE `useri_lista10` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista10` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista10`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista10` (`id_lista10`)   
)ENGINE=INNODB CHARSET=latin1; 