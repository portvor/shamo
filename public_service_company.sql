-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2023 at 06:14 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_service_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id_Customers` int(20) UNSIGNED NOT NULL,
  `Last_Name` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Middle_Name` varchar(32) NOT NULL,
  `Phone_Number` int(20) NOT NULL,
  `Home_Adress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id_Customers`, `Last_Name`, `Name`, `Middle_Name`, `Phone_Number`, `Home_Adress`) VALUES
(1, 'Иванов', 'Петр', 'Сергеевич', 899123456, 'г. Москва, ул. Ленина, дом 1, кв. 10'),
(2, 'Петров', 'Федор', 'Николаевич', 999234567, 'г. Москва, ул. Московская, дом 2, кв. 20'),
(3, 'Сидоров', 'Иван', 'Александрович', 999345678, 'г. Москва, ул. Красная, дом 3, кв. 30'),
(4, 'Ершова', 'Екатерина', 'Дмитриевна', 999456789, 'г. Москва, ул. Советская, дом 4, кв. 40'),
(5, 'Коновалов', 'Александр', 'Петрович', 999567890, 'г. Москва, ул. Ленинградская, дом 5, кв. 50'),
(6, 'Шевцов', 'Сергей', 'Владимирович', 999678901, 'г. Москва, ул. Гоголя, дом 6, кв. 60'),
(7, 'Никитина', 'Анастасия', 'Михайловна', 999789012, 'г. Москва, ул. Пушкина, дом 7, кв. 70'),
(8, 'Федотов', 'Дмитрий', 'Игоревич', 999890123, 'г. Москва, ул. Карла Маркса, дом 8, кв. 80'),
(9, 'Волкова', 'Олеся', 'Константиновна', 999901234, 'г. Москва, ул. Революции, дом 9, кв. 90'),
(10, 'Данилов', 'Игорь', 'Викторович', 999012345, 'г. Москва, ул. Рекордная, дом 10, кв. 100'),
(11, 'Максимов', 'Антон', 'Юрьевич', 999121212, 'г. Москва, ул. Мира, дом 101, кв. 111'),
(12, 'Попов', 'Артем', 'Григорьевич', 999232323, 'г. Москва, ул. Железнодорожная, дом 102, кв. 122'),
(13, 'Денисов', 'Олег', 'Егорович', 999343433, 'г. Москва, ул. Сказочная, дом 103, кв. 133'),
(14, 'Смирнова', 'Мария', 'Алексеевна', 999454544, 'г. Москва, ул. Арбат, дом 104, кв. 144'),
(15, 'Соловьев', 'Андрей', 'Витальевич', 999565565, 'г. Москва, ул. Горького, дом 105, кв. 155');

-- --------------------------------------------------------

--
-- Table structure for table `deliverers`
--

CREATE TABLE `deliverers` (
  `ID_Deliveres` int(11) UNSIGNED NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) CHARACTER SET utf32 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliverers`
--

INSERT INTO `deliverers` (`ID_Deliveres`, `Last_Name`, `Name`, `Middle_Name`) VALUES
(1, 'Иванян', 'Петр', 'Сергеевич'),
(2, 'Петронян', 'Федор', 'Николаевич'),
(3, 'Сидоронян', 'Иван', 'Александрович'),
(4, 'Ершенян', 'Екатерина', 'Дмитриевна'),
(5, 'Коновалов', 'Александр', 'Петрович'),
(6, 'Шевценян', 'Сергей', 'Владимирович'),
(7, 'Никитинян', 'Анастасия', 'Михайловна'),
(8, 'Федотовян', 'Дмитрий', 'Игоревич'),
(9, 'Волковян', 'Олеся', 'Константиновна'),
(10, 'Даниловян', 'Игорь', 'Викторович'),
(11, 'Максимовян', 'Антон', 'Юрьевич'),
(12, 'Поповян', 'Артем', 'Григорьевич'),
(13, 'Денисовян', 'Олег', 'Егорович'),
(14, 'Смирновян', 'Мария', 'Алексеевна'),
(15, 'Соловьевян', 'Андрей', 'Витальевич');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID_Orders` int(11) UNSIGNED NOT NULL,
  `ID_Products` int(11) UNSIGNED NOT NULL,
  `ID_Deliveres` int(11) UNSIGNED NOT NULL,
  `ID_Customers` int(11) UNSIGNED NOT NULL,
  `Order_Status` varchar(255) NOT NULL,
  `Order_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID_Orders`, `ID_Products`, `ID_Deliveres`, `ID_Customers`, `Order_Status`, `Order_Date`) VALUES
(1, 12, 11, 5, 'Выполнен', '2023-04-04'),
(3, 14, 1, 11, 'Выполнен', '2023-04-02'),
(4, 3, 5, 7, 'В доставке', '2022-12-05'),
(5, 7, 1, 12, 'Отменен', '2023-09-11'),
(6, 2, 4, 1, 'Выполнен', '2022-10-13'),
(7, 9, 9, 8, 'В ожидании', '2023-01-01'),
(8, 12, 6, 14, 'В доставке', '2022-08-20'),
(9, 1, 2, 10, 'Отменен', '2023-03-15'),
(10, 5, 8, 5, 'Выполнен', '2023-06-27'),
(11, 6, 3, 9, 'В доставке', '2022-11-30'),
(12, 10, 7, 2, 'В ожидании', '2022-12-31'),
(13, 8, 10, 15, 'Выполнен', '2023-07-12'),
(14, 4, 11, 4, 'В ожидании', '2022-09-18'),
(15, 11, 14, 6, 'В доставке', '2023-02-25'),
(16, 14, 13, 3, 'Отменен', '2022-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID_Products` int(11) UNSIGNED NOT NULL,
  `Product_Name` varchar(20) NOT NULL,
  `Products_Numbers` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID_Products`, `Product_Name`, `Products_Numbers`) VALUES
(1, 'Хлеб', 10),
(2, 'Сыр', 57),
(3, 'Сахар', 70),
(4, 'Батон', 20),
(5, 'Соль', 150),
(6, 'Виноград', 120),
(7, 'Кофе', 30),
(8, 'Чай', 60),
(9, 'Гречка', 80),
(10, 'Рис', 90),
(11, 'Геркулес', 20),
(12, 'Картошка', 110),
(13, 'Масло', 140),
(14, 'Вода', 40),
(15, 'Перец', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Surname` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `Name`, `Surname`) VALUES
(1, '1', '1', 'эмиль', 'валиуллов'),
(2, '2', '1', '1', 'валиуллов'),
(3, '4', '1', 'ааа', 'ээээ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_Customers`);

--
-- Indexes for table `deliverers`
--
ALTER TABLE `deliverers`
  ADD PRIMARY KEY (`ID_Deliveres`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID_Orders`),
  ADD KEY `ID_Products` (`ID_Products`,`ID_Deliveres`,`ID_Customers`),
  ADD KEY `ID_Deliveres` (`ID_Deliveres`),
  ADD KEY `ID_Customers` (`ID_Customers`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID_Products`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id_Customers` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deliverers`
--
ALTER TABLE `deliverers`
  MODIFY `ID_Deliveres` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID_Orders` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID_Products` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ID_Products`) REFERENCES `products` (`ID_Products`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ID_Deliveres`) REFERENCES `deliverers` (`ID_Deliveres`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ID_Customers`) REFERENCES `customers` (`id_Customers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
