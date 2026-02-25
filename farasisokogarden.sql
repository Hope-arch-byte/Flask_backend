-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farasisokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(8, 'necklace', 'pearl pedant necklace', 5800, 'facc4.jpeg'),
(9, 'phone', 'oppo flip phone', 20000, 'phone1.jpeg'),
(10, 'pods', 'oraimo ear pods', 2000, 'pods2.jpeg'),
(11, 'bag', 'leather handbag', 4500, 'bag4500.webp'),
(12, 'headphones', 'pink cat designed headphones', 4500, 'head5.jpeg'),
(13, 'watch', 'classic watch', 14000, 'watch14000.webp'),
(14, 'toaster', 'mika slice toaster', 4000, 'Mika2slicetoaster.png'),
(15, 'sieve', 'stainless metal sieve', 200, 'kacc1.jpeg'),
(16, 'pan', 'stickless pan with insulated handle', 5000, 'kacc6.jpeg'),
(17, 'toothbrush holder', 'can hold a maximum of 5 toothbrushes', 500, 'bath5.jpg'),
(18, 'blender', 'with a clear jug that allows you see a the blender works', 2500, 'blender.jpeg'),
(19, 'alions electric kettle', 'quickly heats up your water and other liquids ', 3500, 'alionskettle.jpg'),
(20, 'bathing gloves', 'give the ultimate scrub you need during your bath', 750, 'bath1.jpg'),
(21, 'cooker', 'its electric nature offers fast cooking and wonderful experience', 32000, 'cooker.jpg'),
(22, 'charger', 'usb', 30000, 'cooker.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'Bree', '1234', 'bree@gmail.com', '+254748946187'),
(2, 'Brenda', '7896', 'brenda@gmail.com', '+254725489741');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;