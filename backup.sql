SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `born` varchar(15) DEFAULT NULL,
  `rate` decimal(3,1) DEFAULT NULL,
  `film` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

INSERT INTO `actors` (`id`, `name`, `birthdate`, `gender`, `born`, `rate`, `film`) VALUES
(1, 'Wanda Banks', '1181-11-15', 'Female', 'Thailand', '4.2', 2),
(2, 'Melissa Rose', '0539-07-30', 'Female', 'Ukraine', '8.8', 19),
(3, 'Barbara Wheeler', '0694-07-12', 'Female', 'Indonesia', '3.3', 15),
(4, 'Carlos Hawkins', '1998-09-12', 'Male', 'Peru', '8.3', 19),
(5, 'Ruth Bowman', '0261-01-30', 'Female', 'Mexico', '4.7', 3),
(6, 'Cynthia Gibson', '1915-03-24', 'Female', 'Portugal', '4.0', 11),
(7, 'Diane Gray', '1551-03-29', 'Female', 'Palestinian Ter', '5.7', 19),
(8, 'Alice Cole', '1574-08-26', 'Female', 'Brazil', '4.1', 17),
(9, 'Gerald Carter', '1582-03-23', 'Male', 'Haiti', '6.3', 6),
(10, 'Sean Nelson', '1618-08-28', 'Male', 'France', '5.3', 8),
(11, 'Stephen Williamson', '0860-05-29', 'Male', 'China', '1.4', 3),
(12, 'Louis Graham', '0589-07-30', 'Male', 'Thailand', '8.6', 18),
(13, 'Sarah Burke', '1487-04-13', 'Female', 'Indonesia', '7.1', 3),
(14, 'Johnny Hawkins', '0754-09-12', 'Male', 'Greece', '4.2', 13),
(15, 'Anna Carr', '0422-01-21', 'Female', 'Indonesia', '3.6', 4),
(16, 'Pamela Morales', '0948-07-18', 'Female', 'Finland', '9.3', 8),
(17, 'Maria Ellis', '1547-02-24', 'Female', 'China', '4.2', 15),
(18, 'Gary Ortiz', '1566-06-30', 'Male', 'France', '4.5', 11),
(19, 'Judy Lewis', '0482-03-21', 'Female', 'France', '9.5', 15),
(20, 'Diane Bailey', '1771-04-14', 'Female', 'China', '6.8', 13),
(21, 'Anthony Coleman', '1625-06-27', 'Male', 'Indonesia', '9.0', 1),
(22, 'Heather Carter', '0710-04-04', 'Female', 'Vietnam', '2.3', 16),
(23, 'Jose Little', '1483-03-14', 'Male', 'Brazil', '7.9', 16),
(24, 'Bobby Armstrong', '1161-02-19', 'Male', 'Japan', '6.8', 7),
(25, 'Kevin George', '0654-08-22', 'Male', 'China', '3.0', 7),
(26, 'Catherine Mason', '1014-07-29', 'Female', 'Peru', '6.0', 4),
(27, 'Willie Long', '1014-03-17', 'Male', 'New Zealand', '7.8', 2),
(28, 'Justin Torres', '0437-02-10', 'Male', 'China', '6.3', 6),
(29, 'Stephanie Hanson', '0418-10-25', 'Female', 'China', '5.3', 17),
(30, 'Catherine Kennedy', '0976-07-24', 'Female', 'Netherlands', '9.9', 14),
(31, 'Gary Banks', '1999-03-24', 'Male', 'Indonesia', '5.2', 3),
(32, 'James Kelly', '1323-06-02', 'Male', 'Russia', '2.6', 18),
(33, 'Howard Shaw', '0583-12-04', 'Male', 'Philippines', '3.7', 1),
(34, 'David Daniels', '1066-09-16', 'Male', 'China', '6.1', 8),
(35, 'William White', '1192-11-24', 'Male', 'Democratic Repu', '6.0', 15),
(36, 'Chris Mills', '1536-09-15', 'Male', 'Honduras', '8.0', 17),
(37, 'Cynthia Hunter', '1898-09-15', 'Female', 'China', '2.4', 13),
(38, 'Raymond Hansons', '0879-02-09', 'Male', 'Ukraine', '2.6', 12),
(39, 'Shawn Palmer', '0427-10-07', 'Male', 'China', '6.4', 8),
(40, 'Roy Lopez', '0566-07-08', 'Male', 'Indonesia', '10.0', 18),
(41, 'Beverly Larson', '1247-03-06', 'Female', 'Indonesia', '2.1', 7),
(42, 'Kathleen Wallace', '0414-11-15', 'Female', 'Indonesia', '6.7', 11),
(43, 'Sarah Hansen', '1852-06-29', 'Female', 'Nigeria', '2.0', 20),
(44, 'Sandra Marshall', '1310-08-05', 'Female', 'China', '6.1', 19),
(45, 'Peter Brooks', '1042-05-01', 'Male', 'Argentina', '2.2', 2),
(46, 'Bobby Butler', '1865-08-12', 'Male', 'Argentina', '6.5', 6),
(47, 'Christine Alvarez', '1820-11-07', 'Female', 'Bulgaria', '7.1', 10),
(48, 'Laura Flores', '1459-11-10', 'Female', 'Macedonia', '3.7', 19),
(49, 'Ernest Brown', '0975-06-08', 'Male', 'Japan', '2.6', 8),
(50, 'Maria Day', '1773-02-21', 'Female', 'Albania', '5.3', 1),
(51, 'Diane Campbell', '0296-01-27', 'Female', 'Afghanistan', '2.9', 12),
(52, 'Jeremy Freeman', '0256-10-29', 'Male', 'Jamaica', '9.3', 1),
(53, 'Gerald Meyer', '0625-01-24', 'Male', 'Russia', '5.1', 13),
(54, 'Ronald Wallace', '1353-01-08', 'Male', 'China', '8.5', 1),
(55, 'Shirley Ramirez', '0564-03-04', 'Female', 'France', '7.6', 6),
(56, 'Gloria Rose', '1404-02-10', 'Female', 'Niger', '6.9', 16),
(57, 'Linda Clark', '1324-10-14', 'Female', 'Russia', '9.9', 3),
(58, 'Eric Holmes', '1644-12-30', 'Male', 'Russia', '4.7', 13),
(59, 'Andrew Thomas', '1266-04-22', 'Male', 'Portugal', '2.4', 10),
(60, 'Craig Anderson', '0359-07-25', 'Male', 'China', '4.3', 20),
(61, 'Alan Franklin', '1799-10-31', 'Male', 'Portugal', '6.6', 9),
(62, 'Albert Myers', '0719-11-14', 'Male', 'Indonesia', '8.8', 8),
(63, 'Carl Lawson', '0430-10-20', 'Male', 'Poland', '3.0', 12),
(64, 'Wanda Young', '1970-05-21', 'Female', 'China', '9.9', 3),
(65, 'Samuel Stewart', '0987-08-01', 'Male', 'Chile', '2.1', 18),
(66, 'Eric Carr', '0263-11-24', 'Male', 'Germany', '5.0', 1),
(67, 'Beverly Pierce', '1905-01-23', 'Female', 'Russia', '9.4', 13),
(68, 'Ryan Greene', '0377-11-28', 'Male', 'China', '4.7', 11),
(69, 'Lillian Harper', '0263-07-16', 'Female', 'Ukraine', '3.5', 18),
(70, 'Antonio Robinson', '0825-03-25', 'Male', 'China', '7.7', 18),
(71, 'Andrew Myers', '0382-04-03', 'Male', 'Mongolia', '2.1', 3),
(72, 'Steven Hawkins', '1628-09-08', 'Male', 'Indonesia', '3.8', 4),
(73, 'Carol Andrews', '0224-03-05', 'Female', 'Japan', '5.2', 6),
(74, 'Lisa Hernandez', '1672-08-13', 'Female', 'Belarus', '5.3', 2),
(75, 'Joshua Harper', '0515-12-14', 'Male', 'Mexico', '3.1', 4),
(76, 'John Allen', '1112-10-17', 'Male', 'Malaysia', '8.8', 16),
(77, 'Andrea Carter', '1658-06-02', 'Female', 'Indonesia', '9.9', 7),
(78, 'Maria Garrett', '0715-06-03', 'Female', 'Mexico', '9.0', 2),
(79, 'Joyce Rose', '0165-11-13', 'Female', 'Peru', '5.1', 9),
(80, 'Todd Butler', '1041-04-01', 'Male', 'Brazil', '3.1', 10),
(81, 'James Bond Blue', '1964-02-06', 'Male', 'Moskow', '2.0', 1),
(83, 'Marta Cornel', '1998-01-22', 'Female', 'Thailand', '8.0', NULL),
(84, 'Sarra Cornel', '1992-01-20', 'Female', 'Thailand', '2.0', NULL);

CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `announced` date NOT NULL,
  `rate` decimal(3,1) NOT NULL,
  `producer` varchar(22) NOT NULL,
  `operator` varchar(22) NOT NULL,
  `country` varchar(15) NOT NULL,
  `budget` varchar(11) NOT NULL,
  `gross` varchar(11) NOT NULL,
  `runtime` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO `films` (`id`, `title`, `announced`, `rate`, `producer`, `operator`, `country`, `budget`, `gross`, `runtime`) VALUES
(1, 'Solarbreeze', '1971-08-05', '8.6', 'Justin Hicks', 'Paula Porter', 'France', '$2828992.37', '$5040466.85', 157),
(2, 'Temptations', '1972-09-17', '1.9', 'Victor Rogers', 'Melissa Little', 'Brazil', '$2933034.12', '$5979800.32', 57),
(3, 'Cookley', '1907-09-07', '6.2', 'Emily Martinez', 'Phyllis Oliver', 'Serbia', '$2495368.04', '$5137128.04', 107),
(4, 'Transcof', '1938-09-04', '3.9', 'Jimmy King', 'Terry Thompson', 'Nigeria', '$1390387.52', '$6243351.24', 157),
(5, 'Tresom', '1977-11-19', '6.7', 'Wayne Campbell', 'Deborah Stevens', 'Ukraine', '$2222442.86', '$2308616.16', 69),
(6, 'Kanlam', '1901-03-22', '3.9', 'Tammy Peters', 'Lisa Meyer', 'Indonesia', '$1160895.80', '$3141725.40', 212),
(7, 'Hatity', '2010-05-14', '3.6', 'Johnny Welch', 'Keith Morgan', 'Peru', '$1874417.56', '$5115634.36', 60),
(8, 'Wrapsafe', '1966-04-21', '9.9', 'Christopher Gonzales', 'Lillian Dixon', 'Sweden', '$1262793.94', '$4668033.08', 218),
(9, 'Job', '2001-12-10', '6.6', 'Gloria Berry', 'Louise Green', 'Brazil', '$3108711.24', '$4432599.22', 45),
(10, 'Mat Lam Tam', '1943-04-11', '6.8', 'Steve Jacobs', 'Charles Arnold', 'Ghana', '$3013047.34', '$478040.48', 150),
(11, 'Zoolab', '2012-04-14', '5.7', 'Nancy Watson', 'Alan Turner', 'Saint Lucia', '$208363.49', '$991374.08', 173),
(12, 'Solarbreeze', '1939-05-16', '3.6', 'Ralph Kelley', 'Matthew Perkins', 'Brazil', '$2931797.32', '$3124406.00', 191),
(13, 'Fixflex', '2010-07-07', '3.4', 'Deborah Hunter', 'Jesse Brooks', 'China', '$2488054.58', '$838595.48', 102),
(14, 'Keylex', '1910-03-10', '6.6', 'Jason Andrews', 'Tammy Sims', 'Slovenia', '$1945358.98', '$823821.11', 31),
(15, 'Treeflex', '1964-12-25', '3.8', 'Marie Gomez', 'Julia Lawson', 'Indonesia', '$2790321.65', '$1384053.15', 96),
(16, 'Span', '1973-02-21', '5.2', 'Tammy Burton', 'Deborah Fuller', 'China', '$2771833.95', '$1151902.17', 146),
(17, 'Veribet', '2002-12-22', '9.0', 'Paula Cox', 'Chris Berry', 'Greece', '$1829361.87', '$461465.29', 105),
(18, 'Cookley', '1962-07-13', '7.9', 'Deborah Adams', 'Andrea West', 'Thailand', '$2883600.22', '$2772705.61', 165),
(19, 'Greenlam', '1988-05-05', '2.8', 'Rebecca Mason', 'Cynthia Price', 'Ireland', '$2851588.48', '$4495513.96', 61),
(20, 'Zontrax', '2006-04-19', '9.2', 'Harold Phillips', 'Aaron Bennett', 'Nigeria', '$2187023.29', '$5164609.27', 96),
(21, 'Home-video', '2016-06-07', '2.0', 'Me', 'My girlfriend', 'Hometown', '$5', '$0', 350),
(22, 'Terracota', '2016-06-07', '8.0', 'Me', 'Someone', 'Our country', '$220', '$10', 102);


ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
