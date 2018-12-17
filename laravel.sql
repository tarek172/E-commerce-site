-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 02:14 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `productid` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `customerid` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'incart',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`productid`, `quantity`, `customerid`, `status`, `id`) VALUES
(7, 1, 2, 'accept', 1),
(8, 15, 2, 'ordered', 2),
(1, 1, 2, 'accept', 3),
(32, 1, 2, 'ordered', 4),
(32, 5, 2, 'accept', 5),
(42, 1, 2, 'accept', 6),
(42, 1, 2, 'accept', 7),
(19, 1, 2, 'ordered', 16),
(20, 1, 2, 'accept', 17),
(7, 5, 2, 'incart', 20),
(42, 4, 2, 'incart', 22),
(19, 4, 2, 'incart', 23),
(28, 1, 10, 'accept', 24),
(1, 1, 10, 'accept', 25),
(3, 1, 10, 'prdered', 26),
(5, 1, 10, 'canceled', 27),
(7, 1, 10, 'canceled', 28),
(1, 1, 10, 'canceled', 29),
(8, 1, 10, 'canceled', 30),
(12, 1, 10, 'canceled', 31),
(19, 1, 10, 'canceled', 32);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cartinfoshopkeeper`
-- (See below for the actual view)
--
CREATE TABLE `cartinfoshopkeeper` (
`productid` int(11)
,`quantity` int(11)
,`customerid` int(11)
,`status` varchar(20)
,`id` int(11)
,`name` varchar(200)
,`unit_price` decimal(61,0)
,`product_quantity` int(10)
,`catagory` varchar(50)
,`specification` varchar(500)
,`photo` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `comment_rating`
--

CREATE TABLE `comment_rating` (
  `productid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment_rating`
--

INSERT INTO `comment_rating` (`productid`, `customerid`, `comment`, `rating`, `username`) VALUES
(42, 2, 'good very very', 5, 'jishnu saha'),
(1, 2, 'bad', 1, 'jishnu saha'),
(20, 2, 'osthir', 4, 'jishnu saha');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `salerid` int(11) NOT NULL,
  `specification` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `catagory` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `discount` int(50) NOT NULL,
  `rating` decimal(10,0) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `last_insert` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `salerid`, `specification`, `gender`, `type`, `quantity`, `catagory`, `price`, `discount`, `rating`, `photo`, `last_insert`) VALUES
(1, 'nokia 1200 ', 9, 'color: white, size : M', 'male', 'nokia', 11, 'mobile phone', 2000, 5, '0', '1.jpg', '2018-12-01'),
(2, 'nokia 3110    ', 1, 'Color : blackSize : L', 'common', 'nokia', 35, 'mobile phone', 3000, 0, '0', '2.jpg', '2018-12-01'),
(3, 'galaxy j5 ', 1, 'Color :white,Size:5 inch', 'common', 'samsung', 40, 'mobile phone', 12000, 0, '0', '3.jpg', '2018-12-01'),
(4, 'galaxy j7', 1, 'Color :white,Size:5 inch', 'common', 'samsung', 13, 'mobile phone', 15000, 0, '0', '4.jpg', '2018-12-01'),
(5, 'iphone 6 ', 1, 'Color : blackSize : 5 inch', 'common', 'iphone', 45, 'mobile phone', 50000, 0, '0', '5.jpg', '2018-12-01'),
(6, 'iphone 7', 1, 'Color : black\r\nSize : 6 inch', 'common', 'iphone', 15, 'mobile phone', 60000, 0, '0', '6.jpg', '2018-12-01'),
(7, 'HP Pavilion 15P', 1, 'Color : black\r\nSize : 15 inch', 'common', 'hp', 44, 'computer', 70000, 0, '0', '7.jpg', '2018-12-01'),
(8, 'HP Probook 440', 1, 'Color : black\r\nSize : 16 inch', 'common', 'hp', 10, 'computer', 72000, 10, '0', '8.jpg', '2018-12-01'),
(9, 'dell inspiron 13', 1, 'Color : black\r\nSize : 16 inch', 'common', 'dell', 60, 'computer', 60000, 0, '0', '9.jpg', '2018-12-01'),
(10, 'dell inspiron 15', 1, 'Color : black\r\nSize : 15 inch', 'common', 'dell', 40, 'computer', 60000, 0, '0', '10.jpg', '2018-12-01'),
(11, 'asus zenbook 3', 1, 'Color : black\r\nSize : 14 inch\r\n', 'common', 'asus', 35, 'computer', 60000, 0, '0', '11.jpg', '2018-12-05'),
(12, 'asus zenbook 13', 1, 'Color : black\r\nSize : 16 inch', 'common', 'asus', 50, 'computer', 45000, 0, '0', '12.jpg', '2018-12-05'),
(13, 'Sony KDL-40EX650 ', 1, 'Color : blackSize : 12 inch', 'common', 'tv', 20, 'electronics', 20000, 0, '0', '13.jpg', '2018-12-05'),
(14, 'LG 43LH576T', 1, 'Color : black\r\nSize : 13 inch\r\n', 'common', 'tv', 40, 'electronics', 25000, 0, '0', '14.jpg', '2018-12-05'),
(15, 'ION 1500 VA IPS', 1, 'Color : black\r\nSize : 6 inch', 'common', 'ips', 40, 'electronics', 20000, 0, '0', '15.jpg', '2018-12-05'),
(16, 'Singer IPS', 1, 'Color : black\r\nSize : 6 inch', 'common', 'ips', 15, 'electronics', 40000, 15, '0', '16.jpg', '2018-12-05'),
(17, 'lg 402', 1, 'Color : black,Size : M', 'common', 'refrigerator', 10, 'electronics', 30000, 0, '0', '17.jpg', '2018-12-05'),
(18, 'Kenmore 50043', 1, 'Color : black,Size : M', 'common', 'refrigerator', 10, 'electronics', 60000, 0, '0', '18.jpg', '2018-12-05'),
(19, 'Canon EOS', 1, 'Color : black\r\nSize : M', 'common', 'camera', 18, 'entertainments', 30000, 0, '0', '19.jpg', '2018-12-05'),
(20, 'Nikon D3400', 1, 'Color : black\r\nSize : M', 'common', 'camera', 17, 'entertainments', 20000, 20, '4', '20.jpg', '2018-12-05'),
(21, 'AmpliVox', 1, 'Color : black\r\nSize : M', 'common', 'sound system', 25, 'entertainments', 20000, 0, '0', '21.jpg', '2018-12-05'),
(22, 'SVS Ultra Tower Surround', 1, 'Color : black\r\nSize : M', 'common', 'sound system', 10, 'entertainments', 25000, 0, '0', '22.jpg', '2018-12-05'),
(23, 'Kitchen Toys      ', 1, 'Color : blackSize : M', 'common', 'toys', 28, 'entertainments', 6000, 5, '0', '23.jpg', '2018-12-05'),
(24, 'Large Minion Soft Toy', 1, 'Color : black\r\nSize : M', 'common', 'toys', 40, 'entertainments', 2000, 0, '0', '24.jpg', '2018-12-05'),
(25, 'Europe Immigration Service', 1, 'Color : black\r\nSize : M', 'common', 'health care', 25, 'daily needs', 20000, 0, '0', '25.jpg', '2018-12-05'),
(26, 'Congressman Don Bacon', 1, 'Color : black\r\nSize : M', 'common', 'health care', 25, 'daily needs', 20000, 10, '4', '26.jpg', '2018-12-05'),
(27, 'Indoor Lighting          ', 1, 'Color : blackSize : L', 'common', 'lighting', 35, 'daily needs', 2000, 35, '0', '27.jpg', '2018-12-05'),
(28, 'Event Lighting         ', 1, 'Color : blackSize : M', 'common', 'lighting', 29, 'daily needs', 1500, 0, '0', '28.jpg', '2018-12-05'),
(29, 'Usha Maxx Air   ', 1, 'Color : blackSize : S', 'common', 'fan', 20, 'daily needs', 2000, 0, '0', '29.jpg', '2018-12-05'),
(30, 'Havells 450', 1, 'Color : black\r\nSize : L', 'common', 'fan', 20, 'daily needs', 3000, 0, '0', '30.jpg', '2018-12-05'),
(31, 'Temple Necklace', 1, 'Color : black\r\nSize : S', 'female', 'jewellery', 10, 'fashion', 30000, 50, '0', '31.jpg', '2018-12-05'),
(32, 'Sukkhi Jewellery ', 1, 'Color : blackSize : M', 'female', 'jewellery', 31, 'fashion', 40000, 0, '0', '32.jpg', '2018-12-05'),
(33, 'Outlet Perfumes', 1, 'Color : black\r\nSize : M', 'male', 'fragrance', 50, 'fashion', 2000, 0, '0', '33.jpg', '2018-12-05'),
(34, 'Flavor Fragrance', 1, 'Color : black\r\nSize : M', 'male', 'fragrance', 40, 'fashion', 3000, 0, '0', '34.jpg', '2018-12-05'),
(35, 'Dheiva Polyester', 1, 'Color : black\r\nSize : M', 'male', 'bag', 35, 'fashion', 3000, 0, '0', '35.jpg', '2018-12-05'),
(36, 'Quilted Camera Bag', 1, 'Color : black\r\nSize : M', 'female', 'bag', 55, 'fashion', 2000, 0, '0', '36.jpg', '2018-12-05'),
(37, 'Gucci Bamboo Perfume', 0, 'Color : Gray, Size: M', 'female', 'fragrance', 20, 'fashion', 1500, 0, '0', '37.jpg', '2018-12-05'),
(38, 'bestsellers', 15, 'color :white, size : M', 'female', 'fragrance', 15, 'fashion', 2000, 5, '0', '38.jpg', '2018-12-05'),
(39, 'manfuni', 15, 'color :white, size : M', 'female', 'bags', 15, 'daily needs', 3000, 40, '0', '39.jpg', '2018-12-05'),
(40, 'acelure', 15, 'color :white, size : M', 'female', 'bags', 35, 'daily needs', 1600, 10, '0', '40.jpg', '2018-12-05'),
(41, 'bag pu waterproof', 15, 'Color : blue, Size : M', 'female', 'bags', 5, 'fashion', 4000, 20, '0', '41.jpg', '2018-12-05');

-- --------------------------------------------------------

--
-- Stand-in structure for view `productinfoshopkeeper`
-- (See below for the actual view)
--
CREATE TABLE `productinfoshopkeeper` (
`pid` int(11)
,`name` varchar(200)
,`quantity` int(10)
,`specification` varchar(500)
,`catagory` varchar(50)
,`price` int(10)
,`discount` int(50)
,`current_price` decimal(61,0)
,`photo` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `value` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`value`, `userid`) VALUES
('Mobile Phone', 0),
('Electronics', 0),
('hp', 0),
('nokia', 0),
('health care', 0),
('camera', 0),
('Electronics', 0),
('asus zenbook 13', 0),
('Electronics', 0),
('ips', 0),
('Entertainments', 2),
('Entertainments', 2),
('Daily Needs', 2),
('Daily Needs', 2),
('Daily Needs', 2),
('Computer', 2),
('camera', 2),
('camera', 2),
('camera', 2),
('hp', 2),
('hp', 2),
('hp', 2),
('hp', 2),
('hp', 2),
('nokia', 2),
('Mobile Phone', 2),
('Computer', 2),
('Mobile Phone', 2),
('Entertainments', 2),
('asus', 0),
('tv', 0),
('tv', 0),
('nokia', 10),
('camera', 10),
('Entertainments', 10),
('nokia', 10),
('nokia', 10),
('camera', 10),
('Mobile Phone', 0),
('refrigerator', 0),
('sound system', 0),
('sound system', 0),
('health care', 0),
('lighting', 0),
('Fashion', 0),
('jewellery', 0),
('fragrance', 0),
('bag', 0),
('nokia', 0),
('mobile', 0),
('nokia', 0),
('Flavor Fragrance', 0),
('j p', 0),
('Flavor Fragrance', 0),
('Flavor Fragrance', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `password`, `type`, `contact_number`, `gender`, `address`, `status`) VALUES
(1, 'Noman saler', 's@s.com', '1111', 'admin', '', 'male', '', 1),
(2, 'jishnu saha', 'jishnusaha@yahoo.com', '123', 'customer', '0182', 'female', 'nikunja', 1),
(3, 'fardin k', 'aa@a.co', 'jis', 'admin', '', 'male', '', 1),
(4, 'j j ', 'jj@gmail.com', '888', 'admin', '', '', '', 1),
(6, 'fardin', 'hhhhhh@i.com', '893', 'customer', '', '', '', 1),
(7, 'j j j j j j jj', 'jjjjjj@g.com', '11111111', 'admin', '', '', '', 0),
(8, 'shop keeper', 's@s.c', '11111111', 'saler', '', 'male', '', 1),
(9, 'j j', 'p@p.com', '111', 'customer', '0909', '', 'afdf', 1),
(10, 'jishnu saha', 'j@j.com', '111', 'customer', '01999999999', 'male', 'chittaganj', 1),
(11, 'j j', 'jj@j.com', '123', 'customer', '01837779995', '', 'y y', 0),
(12, 'jishnu saler', 'jishnusaler@saler.com', 'fff', 'saler', '', '', '', 1),
(13, 'name name', 'name@name.com', '111', 'admin', '', '', '', 1),
(14, 'jishnu customer', 'jishnucustomer@customer.com', 'jjj', 'customer', '', '', '', 1),
(15, 'fardin', 'fardinnoman@gmail.com', '999', 'saler', '', 'male', '', 1),
(16, 'sohan', 'sohan@gmail.com', '555', 'admin', '', 'male', '', 1),
(17, 'sohan', 'sohan@gmail.com', '555', 'admin', '', 'male', '', 1),
(18, 'trk', 'sohan@gmail.com', '1234', 'admin', '', 'male', '', 1);

-- --------------------------------------------------------

--
-- Structure for view `cartinfoshopkeeper`
--
DROP TABLE IF EXISTS `cartinfoshopkeeper`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cartinfoshopkeeper`  AS  select `cart`.`productid` AS `productid`,`cart`.`quantity` AS `quantity`,`cart`.`customerid` AS `customerid`,`cart`.`status` AS `status`,`cart`.`id` AS `id`,`productinfoshopkeeper`.`name` AS `name`,`productinfoshopkeeper`.`current_price` AS `unit_price`,`productinfoshopkeeper`.`quantity` AS `product_quantity`,`productinfoshopkeeper`.`catagory` AS `catagory`,`productinfoshopkeeper`.`specification` AS `specification`,`productinfoshopkeeper`.`photo` AS `photo` from (`cart` join `productinfoshopkeeper`) where ((`productinfoshopkeeper`.`pid` = `cart`.`productid`) and (`cart`.`status` = 'ordered')) ;

-- --------------------------------------------------------

--
-- Structure for view `productinfoshopkeeper`
--
DROP TABLE IF EXISTS `productinfoshopkeeper`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `productinfoshopkeeper`  AS  select `product`.`pid` AS `pid`,`product`.`name` AS `name`,`product`.`quantity` AS `quantity`,`product`.`specification` AS `specification`,`product`.`catagory` AS `catagory`,`product`.`price` AS `price`,`product`.`discount` AS `discount`,round((`product`.`price` - ((`product`.`price` * `product`.`discount`) / 100)),0) AS `current_price`,`product`.`photo` AS `photo` from `product` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
