-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2018 at 06:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aptitude`
--

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`) VALUES
(1, 'General Knowledge'),
(2, 'Verbal'),
(3, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(1000) DEFAULT NULL,
  `option1` varchar(200) DEFAULT NULL,
  `option2` varchar(200) DEFAULT NULL,
  `option3` varchar(200) DEFAULT NULL,
  `option4` varchar(200) DEFAULT NULL,
  `correct_answer` varchar(200) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `explaination` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `module_id`, `explaination`) VALUES
(7, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 'Graphite', 1, NULL),
(9, 'Chemical formula for water is', 'NaAIO2', 'H2O', 'AI2O3', 'CaSiO3', 'H2O', 1, NULL),
(11, 'The Homolographic projection has the correct representation of', 'shape', 'area', 'baring', 'distance', 'area', 1, NULL),
(13, 'Which of the following is used in pencils?', 'Graphite', 'Silicon', 'Charcoal', 'Phosphorous', 'Graphite', 1, NULL),
(15, 'The great Victoria Desert is located in', 'canada', 'west africa', 'australia', 'north america', 'australia', 1, NULL),
(17, 'When he\r\nP :	did not know\r\nQ :	he was nervous and\r\nR :	heard the hue and cry at midnight\r\nS :	what to do\r\nThe Proper sequence should be:\r\n', 'RQPS', 'QSPR', 'SQPR', 'PQRS', 'RQPS', 2, NULL),
(19, 'The workers are hell bent at getting what is due to them.', 'hell bent on getting', 'hell bent for getting', 'hell bent upon getting', 'No improvement', 'hell bent upon getting', 2, NULL),
(20, 'LIGHT:BLIND', 'speech:dumb', 'language:deaf', 'tongue:sound', 'voice:vibration', 'speech:dumb', 2, NULL),
(21, 'BRIEF', 'LIMITED', 'SMALL', 'LITTLE', 'SHORT', 'SHORT', 2, NULL),
(22, 'Catching the earlier train will give us the ...... to do some shopping.', 'chance', 'luch', 'possibility', 'occasion', 'chance', 2, NULL),
(23, 'The intersecting lines drawn on maps and globes are', 'latitudes', 'longitudes', 'geographic grids', 'none of the above', 'geographic grids', 3, NULL),
(24, 'Which one of the following is not a prime number?', '31', '61', '71', '91', '91', 3, NULL),
(25, '1397 x 1397 = ?', '1951609', '1981709', '18362619', 'none of the above', '1951609', 3, NULL),
(26, 'The largest 4 digit number exactly divisible by 88 is:', '9944', '9768', '9988', '8888', '9944', 3, NULL),
(27, 'How many 3-digit numbers are completely divisible 6 ?', '149', '150', '151', '166', '150', 3, NULL),
(29, 'It is was Sunday on Jan 1 2006. what was the day on the week on Jan 1, 2010', 'Sunday', 'Saturday', 'Friday', 'Wednesday', 'Friday', 3, NULL),
(30, 'Find the odd man out?\r\n3,5,11,14,17,21.', '21', '17', '14', '3', '14', 3, NULL),
(31, 'Find the greatest number that will divide 47, 91 and 183 so as to leave the same remainder in each case?', '4', '7', '9', '13', '4', 3, NULL),
(32, 'The greatest number of 4 digit which is divisible by 15, 25, 40 and 75?', '9000', '9400', '9600', '9800', '9600', 3, NULL),
(33, 'Choose the correct alternative that will continue the same pattern and replace the question mark in the given series?\r\n120, 99, 80, 63, 48, ?', '35', '38', '39', '40', '35', 3, NULL),
(34, 'A train always has', 'Rails', 'Driver', 'Guard', 'Engine', 'Engine', 1, NULL),
(35, 'Pointing to a photograph of a boy Suresh said, "He is the son of the only son of my mother." How is suresh  related to that boy?', 'Brother', 'Uncle', 'Cousin', 'Father', 'Father', 1, NULL),
(36, 'Film and TV institute of India is located at ', 'Pune', 'Rajkot', 'Pimpri', 'Perambur', 'Pune', 1, NULL),
(37, 'Fire temple is the place of worship of which of the following religion?', 'Taoism', 'Judaism', 'Zoroastrianism(Parsi)', 'Shintoism', 'Zoroastrianism(Parsi)', 1, NULL),
(38, 'Galileo was an Italian astronomer who', 'developed the telescope', 'discovered that the movement of pendulum produces a regular time measurement ', 'discovered four satellites of Jupiter', 'All of the Above', 'All of the Above', 1, NULL),
(39, 'Which one of the following is always found in ''Bravery''', 'Experience', 'Power', 'Courage', 'Knowledge', 'Courage', 2, NULL),
(40, 'A song always has ', 'Word', 'Chorus', 'Musician', 'Tymbal', 'Word', 2, NULL),
(41, 'Yesterday i saw an ice cube which had already melted due to heat of a nearby furnace', 'Always', 'Never', 'Often', 'Sometimes', 'Never', 2, NULL),
(42, 'I saw a................. of cows in the fied .', 'group ', 'herd', 'swarm', 'flock', 'herd', 2, NULL),
(43, 'Success in this examination depends ......................... hard work alone.', 'at', ' over', 'for', 'on', 'on', 2, NULL),
(44, 'That which cannot be corrected', 'Unintelligent', 'Indelible', 'Illegible', 'Incorrigible', 'Incorrigible', 2, NULL),
(45, 'The study of Ancient societies', 'Anthropology', 'Archaeology', 'History', 'Ethnology', 'Archaeology', 2, NULL),
(46, 'A person who insist on something ', 'Disciplainarian', 'Stickler', 'Instantaneous', 'Boaster', 'Stickler', 2, NULL),
(47, 'FFC stands for.....', 'Foreign Finance Corporation', 'Film Finance Corporation', 'Federation of Football council', 'No of the above', 'Film Finance Corporation', 1, NULL),
(48, 'Fastest Shorthand writer was', 'Dr. G. D. Bist', 'J.R.D. Tata', 'J.M. Tagore', 'Khudada Khan', 'Dr. G. D. Bist', 1, NULL),
(49, 'General Central terminal, Park Avenue, New York is the world''s', 'Largest railway station', 'highest railway station', 'longest railway station', 'none of the above', 'Largest railway station', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `start_time` varchar(30) NOT NULL,
  `finish_time` varchar(30) NOT NULL,
  `question_attempted` int(11) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `wrong_answer` int(11) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `fullname`, `start_time`, `finish_time`, `question_attempted`, `correct_answer`, `wrong_answer`, `username`) VALUES
(1, 'sana shaikh', '28/10/2018 22:13:16', '28/10/2018 22:13:24', 10, 5, 5, 'sana@gmail.com'),
(2, 'Kavita Jeena', '28/10/2018 22:28:03', '28/10/2018 22:28:12', 10, 5, 5, 'ak@gmail.com'),
(3, 'Kavita Jeena', '28/10/2018 22:28:21', '28/10/2018 22:28:30', 10, 2, 8, 'ak@gmail.com'),
(4, 'sana shaikh', '28/10/2018 22:47:00', '28/10/2018 22:47:17', 10, 4, 6, 'sana@gmail.com'),
(5, 'sana shaikh', '29/10/2018 09:45:06', '29/10/2018 09:45:26', 10, 1, 9, 'sana@gmail.com'),
(6, 'sana shaikh', '30/10/2018 09:21:42', '30/10/2018 09:21:50', 10, 5, 5, 'sana@gmail.com'),
(7, 'sana shaikh', '30/10/2018 12:16:05', '30/10/2018 12:16:39', 10, 8, 2, 'sana@gmail.com'),
(8, 'sana khan', '01/11/2018 12:43:56', '01/11/2018 12:44:18', 10, 3, 7, 'sana123@gmail.com'),
(9, 'sana khan', '01/11/2018 13:24:06', '01/11/2018 13:25:22', 10, 5, 5, 'sana123@gmail.com'),
(10, 'Kavita Jeena', '03/11/2018 10:07:10', '03/11/2018 10:07:19', 10, 7, 3, 'ak@gmail.com'),
(11, 'Kavita Jeena', '03/11/2018 10:09:52', '03/11/2018 10:09:59', 10, 4, 6, 'ak@gmail.com'),
(12, 'Kavita Jeena', '03/11/2018 10:13:19', '03/11/2018 10:13:26', 10, 3, 7, 'ak@gmail.com'),
(13, 'Kavita Jeena', '03/11/2018 10:14:56', '03/11/2018 10:15:03', 10, 4, 6, 'ak@gmail.com'),
(14, 'Kavita Jeena', '03/11/2018 10:29:53', '03/11/2018 10:30:03', 10, 1, 9, 'ak@gmail.com'),
(15, 'Kavita Jeena', '03/11/2018 10:30:03', '03/11/2018 10:30:06', 10, 6, 4, 'ak@gmail.com'),
(16, 'Kavita Jeena', '03/11/2018 10:36:11', '03/11/2018 10:36:19', 10, 4, 6, 'ak@gmail.com'),
(17, 'Kavita Jeena', '03/11/2018 10:40:45', '03/11/2018 10:40:51', 10, 4, 6, 'ak@gmail.com'),
(18, 'Kavita Jeena', '03/11/2018 10:40:52', '03/11/2018 10:40:58', 10, 3, 7, 'ak@gmail.com'),
(19, 'Kavita Jeena', '03/11/2018 10:41:36', '03/11/2018 10:41:45', 10, 6, 4, 'ak@gmail.com'),
(20, 'Kavita Jeena', '03/11/2018 10:42:20', '03/11/2018 10:42:27', 10, 2, 8, 'ak@gmail.com'),
(21, 'Kavita Jeena', '03/11/2018 10:43:22', '03/11/2018 10:47:09', 10, 9, 1, 'ak@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(15) DEFAULT 'USER',
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile_number`, `username`, `password`, `user_type`, `last_login`) VALUES
(1, 'Kavita', 'Jeena', '7841063869', 'AK@gmail.com', 'a', NULL, '2018-10-24 14:52:20'),
(2, 'nazmin', 'sayyed', '8308550217', 'nazmins251@gmail.com', 'nazmin', 'USER', '2018-10-26 15:43:10'),
(3, 'sana', 'shaikh', '9527138291', 'sana@gmail.com', 'sana', 'USER', '2018-10-27 06:33:03'),
(4, 'sana', 'khan', '9527138291', 'sana123@gmail.com', 'sana', 'USER', '2018-11-01 07:13:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
