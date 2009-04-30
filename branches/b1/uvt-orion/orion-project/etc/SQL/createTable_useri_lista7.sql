CREATE TABLE `useri_lista7` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista7` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista7`),   
	KEY `FK_user_id` (`user_id`),
	KEY `FK_id_lista7` (`id_lista7`)
)ENGINE=INNODB CHARSET=latin1; 