-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 03:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Nature'),
(2, 'Space');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` int(255) DEFAULT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`) VALUES
(663, 0, 'This cat is very friendly', 'admin', 43, '2022-04-04', 'cat-gc8dc3a978_1920.jpg', 'prava ipsum dolor sit amet, consectetur adipiscing elit. Quisque suscipit est eu augue rhoncus lacinia. Aenean nec pharetra nulla. Maecenas blandit dui justo, id ultrices felis pulvinar sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus at tortor congue, malesuada tellus quis, tincidunt enim. In suscipit tortor ac lectus ornare vestibulum vitae sit amet ipsum. Aenean at maximus ipsum. Praesent dictum vel turpis sed semper.\r\n\r\nCurabitur in pretium urna. Maecenas fermentum orci metus, id porta nunc imperdiet sit amet. Sed malesuada rhoncus nunc, nec luctus dui ornare eu. Nullam luctus felis quis lobortis vehicula. Duis vel nunc luctus elit euismod imperdiet et ac libero. Morbi at odio consectetur, varius justo in, pharetra ante. Fusce vitae suscipit erat, non euismod nulla. Ut vel orci sit amet nunc ullamcorper eleifend vitae efficitur elit.\r\n\r\nFusce et sem at nibh volutpat consequat a eu felis. Aenean placerat, metus eu dignissim viverra, metus lacus auctor massa, id sagittis dui dolor sit amet sem. Sed in velit sodales, tristique augue vel, porttitor arcu. Phasellus lacinia fermentum est, non euismod est ullamcorper mollis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod mauris dolor, eu pretium massa dictum nec. Integer egestas nisl vel justo maximus, in varius orci sagittis. Nam efficitur interdum sem interdum scelerisque.\r\n\r\nSed lacus nunc, porttitor quis nibh vitae, dictum dictum lectus. Vestibulum a odio nisi. Duis placerat turpis sed tortor egestas, ac aliquam nulla aliquet. Mauris sit amet vehicula metus. Pellentesque vel nibh non lectus viverra auctor. Etiam in risus dolor. Donec vel maximus lacus. Nulla sollicitudin felis quis sem sollicitudin interdum. Cras metus sapien, faucibus eget libero eget, eleifend fermentum ligula. Praesent a nisl sed dui varius commodo non elementum nisi. Phasellus at nunc rutrum, ultrices lectus a, hendrerit purus. In auctor dignissim tincidunt. Ut suscipit nulla vitae ligula tempor, eu mattis tortor luctus. Fusce dignissim ut ligula at cursus. In hac habitasse platea dictumst.', ''),
(664, 0, 'Desert areas are very hot', 'admin', 43, '2022-04-03', 'desert-g49d722295_1920.jpg', 'The desert climate or arid climate (in the Köppen climate classification BWh and BWk), is a climate in which there is an excess of evaporation over precipitation. The typically bald, rocky, or sandy surfaces in desert climates hold little moisture and evaporate the little rainfall they receive. Covering 14.2% of earth\'s land area, hot deserts are the second most common type of climate on earth[1] after polar climate.\r\n\r\nThere are two variations of a desert climate: a hot desert climate (BWh), and a cold desert climate (BWk). To delineate \"hot desert climates\" from \"cold desert climates\", there are three widely used isotherms: most commonly[2] a mean annual temperature of 18 °C (64.4 °F), or sometimes a mean temperature of 0 or −3 °C (32.0 or 26.6 °F) in the coldest month, so that a location with a BW type climate with the appropriate temperature above whichever isotherm is being used is classified as \"hot arid\" (BWh), and a location with the appropriate temperature below the given isotherm is classified as \"cold arid\" (BWk).\r\n\r\nMost desert/arid climates receive between 25 and 200 mm (1 and 8 in) of rainfall annually,[3] although some of the most consistently hot areas of Central Australia, the Sahel and Guajira Peninsula can be, due to extreme potential evapotranspiration, classed as arid with annual rainfall as high as 430 millimetres or 17 inches.', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'subscriber',
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$1234512345123451234512'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `randSalt`) VALUES
(43, 'admin', '$2y$10$123451234512345123451ujdbNOQF.98MW.NKZDYMje30tdDsZxYW', 'admin', '$2y$10$1234512345123451234512'),
(52, 'user', '$2y$10$123451234512345123451uPnd6pUGcVw9WlJQAYsowmHZLaJwl0TO', 'subscriber', '$2y$10$1234512345123451234512'),
(53, 'elvis2', '$2y$10$123451234512345123451uX.XsKhhSlrFCOH.R1T/hvkLHrCulWyy', 'subscriber', '$2y$10$1234512345123451234512');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
