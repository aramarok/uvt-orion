CREATE TABLE `useri_lista4` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista4` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista4`),   
	KEY `FK_user_id` (`user_id`),
	KEY `FK_id_lista4` (`id_lista4`)
)ENGINE=INNODB CHARSET=latin1; 