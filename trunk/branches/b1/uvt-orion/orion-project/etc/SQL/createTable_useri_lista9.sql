CREATE TABLE `useri_lista9` (       
	`user_id` bigint(20) NOT NULL,         
	`id_lista9` bigint(20) NOT NULL,         
	PRIMARY KEY  (`user_id`,`id_lista9`),   
	KEY `FK_user_id` (`user_id`),  
	KEY `FK_id_lista9` (`id_lista9`)   
)ENGINE=INNODB CHARSET=latin1; 