CREATE TABLE `useri_lista5` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista5` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista5`),   
	KEY `FK_user_id` (`user_id`),
	KEY `FK_id_lista5` (`id_lista5`)
)ENGINE=INNODB CHARSET=latin1; 