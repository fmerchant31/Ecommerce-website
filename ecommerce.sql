-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 05:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(50) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `category_name`) VALUES
(1, 'Mens'),
(2, 'Women'),
(3, 'baby_kids'),
(4, 'electronics'),
(5, 'sports_books_more');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(20) NOT NULL,
  `c_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(50,0) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `c_id`, `s_id`, `name`, `price`, `description`, `image`) VALUES
(1, 2, 6, 'Women\'s Red Dress', '50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'red-dress1.jpg'),
(2, 1, 5, 'Touch Screen Waterproof Smart Watch', '299', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Watch.jpg'),
(3, 3, 13, 'Girls Pink Frock', '35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'PinkFrock.jpg'),
(4, 4, 17, 'Iphone 13 Pro 128GB', '999', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Iphone.jpg'),
(5, 1, 2, 'Men\'s Balck Shirt', '40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'BlackShirt.jpg'),
(6, 5, 21, 'A Thousand Splendid Suns a book by Khaled Hosseini', '12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'book.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub-category`
--

CREATE TABLE `sub-category` (
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub-category`
--

INSERT INTO `sub-category` (`c_id`, `s_id`, `name`) VALUES
(1, 1, 'Foot Wear'),
(1, 2, 'Top Wear'),
(1, 3, 'Bottom Wear'),
(1, 4, 'Men\'s Grooming'),
(1, 5, 'Accessories'),
(2, 6, 'Western Wear'),
(2, 7, 'Foot Wear'),
(2, 8, 'Top Wear'),
(2, 9, 'Bottom Wear'),
(2, 10, 'Beauty Grooming'),
(2, 11, 'Accessories'),
(3, 12, 'Boys Clothing'),
(3, 13, 'Girls Clothing'),
(3, 14, 'Toys'),
(3, 15, 'Baby Care'),
(3, 16, 'Kids Footwear'),
(4, 17, 'Mobiles'),
(4, 18, 'Laptops'),
(4, 19, 'Gaming & Accessories'),
(4, 20, 'Health Care Appliances'),
(5, 21, 'Books'),
(5, 22, 'Gaming'),
(5, 23, 'Music'),
(5, 24, 'Excerice & Fitness'),
(5, 25, 'Stationery');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `products_Fcid` (`c_id`),
  ADD KEY `products_Fsid` (`s_id`);

--
-- Indexes for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `sub-category_Fcid` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub-category`
--
ALTER TABLE `sub-category`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_Fcid` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`),
  ADD CONSTRAINT `products_Fsid` FOREIGN KEY (`s_id`) REFERENCES `sub-category` (`s_id`);

--
-- Constraints for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD CONSTRAINT `sub-category_Fcid` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
