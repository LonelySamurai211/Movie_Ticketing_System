-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2026 at 12:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(5, 8, 'John Wick', 6, 5, 'M1.jpg'),
(6, 8, 'Hunger Games', 6, 1, 'R.jfif'),
(7, 8, 'Oppenheimer', 6, 1, 'M2.jpg'),
(8, 8, 'Spider-man: Spider verse', 8, 1, 'M3.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 7, 'kekw', 'kekw@gmail.com', '90000', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `price`, `image`) VALUES
(3, 'John Wick', 6, 'M1.jpg'),
(4, 'Oppenheimer', 6, 'M2.jpg'),
(5, 'Spider-man: Spider verse', 8, 'M3.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_movies` varchar(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_movies`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 11, 'kenji', '123123', 'user@gmail.com', '', 'flat no. 123, Tinajeros, Malabon, USA - 1470', ', Oppenheimer (1) , John Wick (4) , Spider-man: Spider verse (1) ', 38, '11-Dec-2023', 'pending'),
(3, 11, 'John Kenji ', '123', 'meme@gmail.com', 'cash on delivery', 'flat no. 123, Tinajeros, MALABON, Japan - 1231', ', John Wick (1) , Oppenheimer (1) , Spider-man: Spider verse (1) , Hunger Games (1) ', 26, '11-Dec-2023', 'pending'),
(4, 11, 'John Kenji', '123', 'meme@gmail.com', 'paytm', 'flat no. 123, Tinajeros, MALABON, Japan - 1231', ', Oppenheimer (1) , John Wick (1) , Spider-man: Spider verse (1) , Hunger Games (1) ', 26, '11-Dec-2023', 'completed'),
(5, 11, 'John Kenji', '123', 'meme@gmail.com', 'paypal', 'flat no. 123, Tinajeros, Malabon, Japan - 1231', ', John Wick (1) ', 6, '12-Dec-2023', 'pending'),
(6, 11, 'John Kenji', '123', 'meme@gmail.com', 'paypal', 'flat no. 123, Tinajeros, Tagaytay, Japan - 1231', ', M2.jpg (1) , M3.png (1) , M1.jpg (1) ', 20, '12-Dec-2023', 'pending'),
(9, 11, 'John Kenji', '123', 'meme@gmail.com', 'cash on delivery', 'flat no. 123, Tinajeros, Manila, Philippines - 1231', ', Oppenheimer (1) ', 6, '12-Dec-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'John Kenji ', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(11, 'John Kenji ', 'user@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(12, 'LoneSamurai', 'kenjicleofas86@gmail.com', '4297f44b13955235245b2497399d7a93', 'user'),
(13, 'John Kenji', 'kenjicleofas86@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(14, 'John Kenji', 'john_kenji_cleofas@ymail.com', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
