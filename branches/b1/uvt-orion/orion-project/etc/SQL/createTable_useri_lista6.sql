CREATE TABLE `useri_lista6` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista6` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista6`),   
	KEY `FK_user_id` (`user_id`),
	KEY `FK_id_lista6` (`id_lista6`)
)ENGINE=INNODB CHARSET=latin1; 