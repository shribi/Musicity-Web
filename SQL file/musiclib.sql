SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `users` (
  `u_id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users VALUES
(1,'Srinidhi', 'musinfo@gmail.com', 'admin', 'admin');


CREATE TABLE `songs` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `l_name` VARCHAR(100) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO songs VALUES(1,'Abhi Mujh Mein Kahin','Sonu Nigam','4:15','Ajay-Atul','Sony Music Entertainment',9);
INSERT INTO songs VALUES(2,'Suraj HUa Maddham','Sonu Nigam','6:44','Sandesh Shandilya','Sony Music Entertainment',8);
INSERT INTO songs VALUES(3,'Sapna Jahan','Sonu Nigam','5:43','Ajay-Atul','Sony Music Entertainment',9);
INSERT INTO songs VALUES(4,'Tu hi re','Hariharan','7:16','A R Rahman','Aaditya',9);
INSERT INTO songs VALUES(5,'Garaj Garaj','Ajay Chakaborty','4:28','Shanhar Ehsaan Loy','Sony Music Entertainment',10);
INSERT INTO songs VALUES(6,'Main agar kahoon','Sonu Nigam','5:29','Vishal Shekhar','T Series',7);
INSERT INTO songs VALUES(7,'Bol DO Na Zara','Armaan Malik','4:05','Bhushan Kumar','T Series',8);
INSERT INTO songs VALUES(8,'Main Rahoon Ya Na Rahoon','Armaan Malik','5:10','Amaal Malik','T Series',9);
INSERT INTO songs VALUES(9,'Aayat','Arijit Singh','4:18','Sanjay Leela Bhansali','Eros Now',9);
INSERT INTO songs VALUES(10,'Tere Rang','Haricharan','4:35','A R Rahman','T Series',9);
INSERT INTO songs VALUES(11,'Chand Sifarish','Shaan','4:41','Jatin Lalit','YRF',8);
INSERT INTO songs VALUES(12,'Behti Hawaan Sa Tha Woh','Shaan','5:14','Shanthunu Moitra','Zee Music Company',9);
INSERT INTO songs VALUES(13,'Mitwa','Shankar Mahadevan','6:01','Shankar Ehsaan Loy','Sony Music Entertainment',8);
INSERT INTO songs VALUES(14,'O Sathi Mere','Sonu Nigam','5:46','Krsna Solo','Eros Now',10);
INSERT INTO songs VALUES(15,'Bheege Bheege','Sonu Nigam','6:26','Deepak Pandit','Saregama',9);
INSERT INTO songs VALUES(16,'Tere Bin','Sonu Nigam','4:05','Shantanu Moitra','T Series',8);
INSERT INTO songs VALUES(17,'Tu Chahiye','Atif Aslam','3:50','Pritam','T Series',7);
INSERT INTO songs VALUES(18,'O Saathi','Atif Aslam','4:30','Arko','T Series',8);
INSERT INTO songs VALUES(19,'Kabira','Arijit Singh','4:29','Pritam','T Series',7);
INSERT INTO songs VALUES(20,'Bhagawan Hai Kaha Re Tu','Sonu Nigam','4:37','Shantanu Moitra','T Series',8);
INSERT INTO songs VALUES(21,'Agar Tum Saath Ho','Arijit Singh','5:41','A R Rahman','T Series',7);


CREATE TABLE `artist` (
  `s_id` int(11) NOT NULL,
  `a_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO artist VALUES(1,'Sonu Nigam');
INSERT INTO artist VALUES(2,'Sonu Nigam');
INSERT INTO artist VALUES(3,'Sonu Nigam');
INSERT INTO artist VALUES(4,'Hariharan');
INSERT INTO artist VALUES(5,'Ajay Chakraborty');
INSERT INTO artist VALUES(6,'Sonu Nigam');
INSERT INTO artist VALUES(7,'Armaan Malik');
INSERT INTO artist VALUES(8,'Armaan Malik');
INSERT INTO artist VALUES(9,'Arjith Singh');
INSERT INTO artist VALUES(10,'Haricharan');
INSERT INTO artist VALUES(11,'Shaan');
INSERT INTO artist VALUES(12,'Shaan');
INSERT INTO artist VALUES(13,'Shankar Mahadevan');
INSERT INTO artist VALUES(14,'Sonu Nigam');
INSERT INTO artist VALUES(15,'Sonu Nigam');

CREATE TABLE `composer` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO composer values(001,'Ajay-Atul');
INSERT INTO composer values(002,'A R Rahman');
INSERT INTO composer values(003,'Shankar Ehsaan Loy');
INSERT INTO composer values(004,'Vishal Shekhar');
INSERT INTO composer values(005,'Sanjay Leela Bhansaali');
INSERT INTO composer values(006,'Shantnu Moitra');
INSERT INTO composer values(007,'Sandesh Shandilya');
INSERT INTO composer values(008,'Jatin Lalit');
INSERT INTO composer values(009,'Amaal Malik');
INSERT INTO composer values(010,'Bhushan Kumar');
INSERT INTO composer values(011,'Krsna Solo');
INSERT INTO composer values(012,'Deepak Pandit');

CREATE TABLE `album` (
  `alb_name` varchar(100) NOT NULL,
  `s_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO album values('Agneepath',1,001);
INSERT INTO album values('Kabhi Khushi Kabhi Gham',2,007);
INSERT INTO album values('Brothers',3,001);
INSERT INTO album values('Bombay',4,002);
INSERT INTO album values('Bandish Bandits',5,003);
INSERT INTO album values('Om Shanthi Om',6,004);
INSERT INTO album values('Azhar',7,010);
INSERT INTO album values('Main Rahoon Ya Na rahoon',8,009);
INSERT INTO album values('Bajirao Mastani',9,005);
INSERT INTO album values('Atrangi Re',10,002);
INSERT INTO album values('Fanaa',11,008);
INSERT INTO album values('3 Idiots',12,006);
INSERT INTO album values('Kabhi Alvida Na Kehena',13,003);
INSERT INTO album values('Season of Love',14,011);
INSERT INTO album values('Classically Mild',15,012);

CREATE TABLE `label` (
  `l_id` int(10) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO label VALUES(0001,'Sony Music Entertainment','Shridhar Subramaniam','Chennai');
INSERT INTO label VALUES(0002,'T Series','Bhushan Kumar','Noida');
INSERT INTO label VALUES(0003,'Zee Music Company','Anurag Bedi','Mumbai');
INSERT INTO label VALUES(0004,'YRF','Yash Chopra','Mumbai');
INSERT INTO label VALUES(0005,'Eros Now','Ali Hussein','Mumbai');
INSERT INTO label VALUES(0006,'Aaditya','Umesh Gupta','Hyderabad');
INSERT INTO label VALUES(0007,'Saregama','Vikram Mehra','Kolkata');

CREATE TABLE `genre` (
  `s_id` int(11) NOT NULL,
  `g_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO genre VALUES(1,'Sad');
INSERT INTO genre VALUES(2,'Romantic');
INSERT INTO genre VALUES(3,'Sad');
INSERT INTO genre VALUES(4,'Romantic');
INSERT INTO genre VALUES(5,'Classical');
INSERT INTO genre VALUES(6,'Melody');
INSERT INTO genre VALUES(7,'Melody');
INSERT INTO genre VALUES(8,'Sad');
INSERT INTO genre VALUES(9,'Semi-Classical');
INSERT INTO genre VALUES(10,'Mild-Classical');
INSERT INTO genre VALUES(11,'Melody');
INSERT INTO genre VALUES(12,'Sad');
INSERT INTO genre VALUES(13,'Melody');
INSERT INTO genre VALUES(14,'Romantic');
INSERT INTO genre VALUES(15,'Semi-Classical');

ALTER TABLE `album`
  ADD KEY `c_id` (`c_id`),
  ADD KEY `s_id` (`s_id`);

ALTER TABLE `artist`
  ADD KEY `s_id` (`s_id`);

ALTER TABLE `composer`
  ADD PRIMARY KEY (`c_id`);

ALTER TABLE `genre`
  ADD KEY `s_id` (`s_id`);

ALTER TABLE `label`
  ADD KEY `l_id` (`l_id`);

ALTER TABLE `songs`
  ADD PRIMARY KEY (`s_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);


ALTER TABLE `users`
  MODIFY `u_id` int(100) UNIQUE AUTO_INCREMENT;


ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `composer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `songs` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `artist`
  ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `songs` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `songs` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;

