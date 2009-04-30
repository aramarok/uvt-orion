CREATE TABLE `useri_lista8` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista8` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista8`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista8` (`id_lista8`)   
)ENGINE=INNODB CHARSET=latin1; 