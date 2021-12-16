-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2021 at 09:50 PM
-- Server version: 5.7.35-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yunlei_aau_wnm608_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Sullivan Mcknight', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/812/fff/?text=user1', '2021-10-28 07:31:50'),
(2, 'Susana Hampton', 'user2', '', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/794/fff/?text=user2', '2021-01-23 05:53:20'),
(3, 'Juanita Shepard', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/759/fff/?text=user3', '2021-08-24 04:39:35'),
(4, 'Stanley Matthews', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/744/fff/?text=user4', '2021-09-14 03:10:11'),
(5, 'Yvonne Murray', 'user5', 'user5@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'https://via.placeholder.com/400/842/fff/?text=user5', '2021-04-30 09:09:56'),
(6, 'Sally York', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/860/fff/?text=user6', '2021-08-21 08:27:09'),
(7, 'Glenn Harmon', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1638922524.0585_dog-photo-tips-1.jpeg', '2021-02-23 09:45:34'),
(8, 'Rowe Dickson', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/854/fff/?text=user8', '2021-02-10 04:01:04'),
(9, 'Navarro Ortiz', 'user9', '', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/769/fff/?text=user9', '2021-04-13 11:53:49'),
(10, 'Anna Witt', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/874/fff/?text=user10', '2021-06-08 05:04:52'),
(11, 'Leslie', 'user0', 'leslie@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639033666.8536_photo-1505852124335-4ab381d7a58c.jpeg', '2021-12-07 17:33:05'),
(15, 'test', 'test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2021-12-14 19:02:07'),
(16, '', 'user11', 'user 11', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/?text=USER', '2021-12-14 22:31:54'),
(17, '', 'user15', 'user15', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/?text=USER', '2021-12-15 19:12:59'),
(18, 'Lilly', 'user20', 'user20', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1639629838.8214_Sample-9.png', '2021-12-15 21:43:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
