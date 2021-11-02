CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Sullivan Mcknight','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/812/fff/?text=user1','2021-10-28 07:31:50'),
(2,'Susana Hampton','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/794/fff/?text=user2','2021-01-23 05:53:20'),
(3,'Juanita Shepard','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/759/fff/?text=user3','2021-08-24 04:39:35'),
(4,'Stanley Matthews','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/744/fff/?text=user4','2021-09-14 03:10:11'),
(5,'Yvonne Murray','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/842/fff/?text=user5','2021-04-30 09:09:56'),
(6,'Sally York','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/860/fff/?text=user6','2021-08-21 08:27:09'),
(7,'Glenn Harmon','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/797/fff/?text=user7','2021-02-23 09:45:34'),
(8,'Rowe Dickson','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/854/fff/?text=user8','2021-02-10 04:01:04'),
(9,'Navarro Ortiz','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/769/fff/?text=user9','2021-04-13 11:53:49'),
(10,'Anna Witt','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/874/fff/?text=user10','2021-06-08 05:04:52');