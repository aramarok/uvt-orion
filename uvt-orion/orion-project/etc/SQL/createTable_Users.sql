create table users(
	`user_id` int(11) NOT NULL auto_increment,
	`email_address` varchar(250) default NULL,
	`password` varchar(250) NOT NULL,
	`user_right` int(11) default NULL,
	`user_status` int(11) default NULL,                   
	`first_name` varchar(250) default NULL,                  
	`last_name` varchar(250) default NULL,
	`birth_date` date default NULL,
	`functie_didactica` int(11) default NULL,
	`doctor` bit(1) default NULL, 
	`doctor_din`  int(11) default NULL,
	`conducator_doctorat` bit(1) default NULL, 
	`doctoranzi_stagiu_zi` int(11) default NULL,
	`doctoranzi_stagiu_fr` int(11) default NULL,
	`level` int(11) default NULL,
	`consultant` bit(1) default NULL, 
	`cv_location` varchar(250) default NULL,
	PRIMARY KEY(`user_id`),
	UNIQUE KEY `email_address` (`email_address`)
)ENGINE=INNODB CHARSET=latin1; 