-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2022 at 07:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `address`, `mobile`) VALUES
(1, 'ravi', 'ravi@gmail.com', '123456', '11,umang app,nikol', '8758161539'),
(2, 'Shivam', 'Shivam@gmail.com', 'shivam123456', '24,radhesharnam society, bareja', '8989898989');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_name` varchar(20) NOT NULL,
  `city_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `city_name`) VALUES
(1, 'Amroli', 'surat'),
(2, 'Dumas', 'surat'),
(3, 'Bhestan', 'surat'),
(4, 'Katargam', 'surat'),
(5, 'Adajan', 'surat'),
(6, 'Kosad', 'surat'),
(7, 'piplod', 'surat'),
(8, 'Olpad', 'surat'),
(9, 'Athwalines', 'surat'),
(10, 'Sayan', 'surat'),
(11, 'Satelite', 'Ahmedabad'),
(12, 'C.G Road', 'Ahmedabad'),
(13, 'Chandkheda', 'Ahmedabad'),
(14, 'Sola', 'Ahmedabad'),
(15, 'Sanad', 'Ahmedabad'),
(16, 'Ambavadi', 'Ahmedabad'),
(17, 'Bapunagar', 'Ahmedabad'),
(18, 'Bagodra', 'Ahmedabad'),
(19, 'Bodakdev', 'Ahmedabad'),
(20, 'Bopal', 'Ahmedabad'),
(21, 'Changodar', 'Ahmedabad'),
(22, 'Nikol', 'Ahmedabad'),
(23, 'Ellisbridge', 'Ahmedabad'),
(24, 'Ghodasar', 'Ahmedabad'),
(25, 'Gulbai Tekra', 'Ahmedabad'),
(26, 'Gurukul', 'Ahmedabad'),
(27, 'Hathijan', 'Ahmedabad'),
(28, 'Isanpur', 'Ahmedabad'),
(29, 'Maninagr', 'Ahmedabad'),
(30, 'Shivranjani', 'Ahmedabad'),
(31, 'Memnagar', 'Ahmedabad'),
(32, 'Narol', 'Ahmedabad'),
(33, 'Alkapuri', 'Vadodara'),
(34, 'Bhayli', 'Vadodara'),
(35, 'Dabhoi', 'Vadodara'),
(36, 'Harni', 'Vadodara'),
(37, 'Kevdabaug', 'Vadodara'),
(38, 'Navapura', 'Vadodara'),
(39, 'Ratanpur', 'Vadodara'),
(40, 'Sayajipura', 'Vadodara'),
(41, 'Waghodiya', 'Vadodara');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_img`) VALUES
(1, 'StoryBook', 'image/story1.jpg'),
(2, 'Novels', 'image/novel1.jpg'),
(3, 'StudyBooks', 'image/study1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(2, 'Ahmedabad'),
(3, 'Vadodara'),
(4, 'Bhavnagar'),
(5, 'Jamnagar'),
(6, 'Rajkot'),
(7, 'Navasari'),
(8, 'Bhuj'),
(9, 'Anand'),
(10, 'Veraval'),
(11, 'Gandhinagar'),
(12, 'Patan'),
(13, 'Nadiad'),
(14, 'palanpur'),
(15, 'Vapi'),
(16, 'Dwarka'),
(17, 'Ankleshwar'),
(18, 'Gondal'),
(19, 'Botad'),
(20, 'Bharuch'),
(21, 'Dahod'),
(22, 'Khambhat'),
(23, 'Jetpur'),
(24, 'Keshod'),
(25, 'Vyara'),
(26, 'Visnagar'),
(27, 'Deesa'),
(28, 'Vadnagar'),
(29, 'Unjha'),
(30, 'Rajpipla'),
(31, 'Limdi'),
(32, 'Radhanpur'),
(33, 'Himatnagar'),
(34, 'Mandvi'),
(35, 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `name`, `email`, `telephone`, `message`) VALUES
(1, 'darshan', 'darshan8hesaniya@gmail.com', '8758161539', 'hey guys..This is sample msg for checking '),
(2, 'abc', 'hetvi@gmail.com', '8758161539', ',hjjgvgmn'),
(3, 'abc', 'hetvi@gmail.com', '9874654152', 'dsfadf'),
(4, 'dsdf', 'hemal@gmail.com', '7584996325', 'ssssssss'),
(5, 'sxdf', 'darshan@gmail.com', '4758867895', 'zdvzdvdf'),
(6, 'hetvi', 'hetvi@gmail.com', '9874654152', 'aukscyxiax'),
(7, 'ccc', 'hetvi@gmail.com', '7895423369', 'zdfgzdfgv'),
(8, 'hetviiiiiiii', 'hetvi@gmail.com', '8758161539', 'hiiiiiiiiiiiiiiiiiiiiiiii'),
(9, 'abc', 'hetvi@gmail.com', '7584996325', 'fxg'),
(10, 'abc', 'hetvibpatel272@gmail.com', '8758161539', 'ddzvDS'),
(11, 'abc', 'hetvibpatel272@gmail.com', '8758161539', 'ddzvDS'),
(12, 'abc', 'admin@gmail.com', '4758867895', '31635'),
(13, 'abc', 'admin@gmail.com', '4758867895', '31635'),
(14, 'abc', 'hetvi@gmail.com', '9874654152', 'htrr3H^5ju'),
(15, 'abc', 'hemal@gmail.com', '7584996325', 'ghjrxu'),
(16, 'xyz', 'xyz@gmail.com', '7896541231', 'kuavjyslofiu >asbu;dioaksgrdskq,lfivd'),
(17, 'darshan patel', 'darshan8bhesaniya@gmail.com', '8758161539', 'Hello\r\nMy Order conform');

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `otp_id` int(11) NOT NULL,
  `otp` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_expiry`
--

INSERT INTO `otp_expiry` (`otp_id`, `otp`, `email`) VALUES
(1, '882709', 'darshan8bhesaniya@gmail.com'),
(2, '276314', 'darshan8bhesaniya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `a_id` int(11) NOT NULL,
  `o_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` int(10) NOT NULL,
  `billing_address` varchar(200) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `card_no` int(20) NOT NULL,
  `expiry_date` varchar(20) NOT NULL,
  `order_date` varchar(10) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_quantity` int(200) NOT NULL,
  `product_price` int(20) NOT NULL,
  `total_price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`a_id`, `o_id`, `name`, `email`, `mobile_no`, `billing_address`, `shipping_address`, `city`, `state`, `pincode`, `payment_method`, `card_no`, `expiry_date`, `order_date`, `product_name`, `product_quantity`, `product_price`, `total_price`) VALUES
(2, '5c67a4630489e', 'darshan', 'darshan8bhesaniya@gmail.com', 2147483647, '11,Umang appartment , near cenal , Thakkerbapa Nager Nikol', '11,Umang appartment , near cenal , Thakkerbapa Nager Nikol', 'Ahmedabad', 'Gujrat', 382350, 'card', 2147483647, '2019-07-25', '', 'Raymond color shirt,Fasttrack Gogles,Ralph Lauren Corporation,Caprese Handbag,TCL 459,Iphone 10', 3, 560, 162393),
(3, '621dbc0c92635', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocsBookus', '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocsBookus', 0, '', '', 'Ahmedabad', '', 0, 'cash', 0, '', '', 'One Day life will change,Narendra Modi', 1, 139, 464);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `product_img` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `product_price`, `product_img`, `product_desc`, `subcategory_name`, `category_name`) VALUES
(1, 'S1', 'Software Testing', '560', 'image/bca.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'BCA', 'StudyBooks'),
(2, 'S2', 'formal Patel Pink shirt', '890', 'image/Shirt2.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(3, 'S3', 'Blue Print', '256', 'image/Shirt3.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(4, 'S4', 'Polo Brown shirt', '650', 'image/Shirt4.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(5, 'S5', 'Khalifa Full Slive', '890', 'image/Shirt5.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(6, 'S6', 'Rhythmical Men Cloth', '759', 'image/Shirt6.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(7, 'S7', 'Generic Fashion Men', '759', 'image/Shirt7.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(8, 'S8', 'Men Check navy shirt', '899', 'image/Shirt8.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(9, 'S9', 'Mens Clothing', '799', 'image/Shirt9.jpg', 'A ride to adventure, that is what camouflage signifies. Dyed in the colours that speak lengths about the spirit that makes us explore and go beyond the unknown. Our camouflage collection spreads across various categories', 'Shirt', 'Men'),
(10, 'T1', 'Cotton Febric', '456', 'image/Tshirt.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(11, 'T2', 'Vivid Bharti Black T-Shirt', '599', 'image/Tshirt1.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(12, 'T3', 'Polo Cotton T-shirt', '699', 'image/Tshirt2.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(13, 'T4', 'Trend Men T-Shirt', '499', 'image/Tshirt4.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(14, 'T5', 'Barneys newyork', '899', 'image/Tshirt5.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(15, 'T6', 'American machin', '999', 'image/Tshirt6.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(16, 'T7', 'London Fashion', '877', 'image/Tshirt7.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(17, 'T8', 'Flying Mation', '749', 'image/Tshirt8.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(18, 'T9', 'Tonny Fashion', '466', 'image/Tshirt9.jpg', 'Fit Type: regular_fit\r\nThis brand is available exclusively on Amazon\r\n100% Cotton\r\nHalf sleeve\r\nDo not iron on print\r\nMade in India\r\nBio-wash for soft hand feel\r\nMachine wash cold with similar colors, gentle cycle, only ', 'T-Shirt', 'Men'),
(19, 'J1', 'small town', '600', 'image/Jeans1.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(20, 'J2', 'Under armour jeans', '699', 'image/Jeans2.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(21, 'J3', 'American Eagle', '799', 'image/Jeans3.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(22, 'J4', 'jack & jones', '899', 'image/Jeans4.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(23, 'J5', 'Lee Cooper', '799', 'image/Jeans5.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(24, 'J8', 'Denims', '999', 'image/Jeans8.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(25, 'J9', 'Pepe slim jeans', '600', 'image/Jeans9.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(26, 'F1', 'Beacon flannes', '800', 'image/Formal1.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(27, 'F2', 'Sea island', '700', 'image/Formal2.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(28, 'F3', 'Cotton shirt collection', '756', 'image/Formal3.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(29, 'F4', 'levis ', '866', 'image/Formal4.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(30, 'F5', 'maction', '788', 'image/Formal5.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(31, 'F6', 'louies', '999', 'image/Formal6.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(32, 'F7', 'Vanhusen', '888', 'image/Formal7.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(33, 'F8', 'Mocatail', '777', 'image/Formal8.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(34, 'F9', 'Allen  Solly', '900', 'image/Formal9.jpg', 'We have made these shirts with 90% cotton & 10% Viscose and have made sure that it goes well with the personalities of the men who wears them. This product will keep making you come back for its fine quality.', 'Formal ', 'Men'),
(35, 'W1', 'G-shock', '1733', 'image/W1.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(36, 'W2', 'Police', '1111', 'image/W2.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(37, 'W3', 'Lamex', '1700', 'image/W3.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(38, 'W4', 'Timex', '1200', 'image/W4.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(39, 'W5', 'Titan', '1500', 'image/W5.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(40, 'W6', 'Citizen', '2000', 'image/W6.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(41, 'W7', 'Sonata', '1300', 'image/W7.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(42, 'W8', 'Citizen', '1300', 'image/W8.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(43, 'W9', 'Rado', '1500', 'image/W9.jpg', 'Japanese Quartz Movement\r\nSuitable For-Men And Boys\r\nParty Wear Watch/ Casual Watch/Formal Watch\r\nPackage Includes - A Watch And A Box With Warranty Card\r\n1 Year Warranty Against All Manufacturing Defects.\r\n', 'Watch', 'Men'),
(44, 'WW1', 'Genuine', '399', 'image/genuine.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(45, 'WW2', 'Kavis', '500', 'image/Kavis.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(46, 'WW3', 'Lether brown clip', '400', 'image/leather brown clips.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(47, 'WW4', 'Men wallet', '330', 'image/Men wallet.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(48, 'WW5', 'levis', '599', 'image/s11.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(49, 'WW6', 'Soft men wallet', '499', 'image/softm1.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(50, 'WW7', 'Stylish', '388', 'image/stylish.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(52, 'WW8', 'Lether', '555', 'image/walletsmen.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(53, 'WW9 ', 'Treand', '500', 'image/wallet leath.jpg', 'Jainx Watch & Wallet Combos â€“ This Combo is perfect for Men & Boys with a definitive edge, these watches come in a wide array of funky colors and bold prints. The energy and movement associated with the brand is what translates to all its products. ', 'Wallets', 'Men'),
(54, 'S01', 'RayBan ', '890', 'image/sunglass.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(55, 'S02', 'Fasttrack Gogles', '860', 'image/sunglass3.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(56, 'S03', 'Mykita Fasion Gogles', '690', 'image/sunglass2.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(57, 'S04', 'Warby Paeker Normal Sunglass', '999', 'image/Shs.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(58, 'S05', 'Louis sunglass', '799', 'image/louis.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(59, 'S06', 'Luxry Brand New sungglass', '759', 'image/luxry brand.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(60, 'S07', 'Roman island', '799', 'image/roman island.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(61, 'S08', 'Royal sunglass', '466', 'image/Royal.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(62, 'S09', 'Ray-Bun Rounded Sunglass', '899', 'image/stylish sunglass.jpg', 'Silver Kartz From Genuine Seller Only. Silver Kartz Sunglasses Comes With 6 Months Warranty. We Recommend All The Buyers To Buy Only Through Silver Kartz To Avail Warranty & Services. Silver Kartz Sunglasses Adds Charm To Your Personality With Its Appeali', 'Sunglasses', 'Men'),
(63, 'F01', 'Nike Stylish Shoes ', '999', 'image/black shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(64, 'F02', 'Reebok Sport Shoes', '1500', 'image/normal plan shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(65, 'F03', 'FiLa Casual Shoes', '799', 'image/fila shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(66, 'F04', 'Nike Waking Shoes', '1050', 'image/casual shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(67, 'F05', 'Adidas Normal Shoes', '1599', 'image/nike sport.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(68, 'F06 ', 'LOCOMOTIV Red shoes', '1299', 'image/nike.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(69, 'F07', 'Addidas Casual Shoes', '799', 'image/normal plan shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(70, 'F08', 'Bata shoes', '899', 'image/normal shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(71, 'F09', 'Nike Sport Shoes', '1699', 'image/nike black shoes.jpg', 'A perfect combination of comfort, style, and workmanship, Sparx is all about confidence and making a fashion statement. Its flaunting design pattern sparks a cool statement as you take a step ahead in them.\r\n\r\n', 'Footwear', 'Men'),
(72, 'P1', 'Patel Rose Perfume ', '349', 'image/P1.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(73, 'P2', 'Deo Green Perfume', '469', 'image/P2.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(74, 'P3', 'Coctail Perfume', '790', 'image/P3.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(75, 'P4', 'Colorful Perfume', '369', 'image/perfume4.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(76, 'F5', 'GreenWood Perfume', '499', 'image/P5.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(77, 'P6', 'Jaguar RED Perfume', '999', 'image/P6.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(78, 'P7', 'Normal Perfume', '333', 'image/P7.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(79, 'P8', 'Octoai Perfume', '799', 'image/P8.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(80, 'P9', 'Oriantaed Black Perfume', '799', 'image/P9.jpg', 'A modern feminine interpretation of a traditional floral with a burst of freshness conveyed through the sky of the sky accord and a dense sexiness with a cedar wood base.', 'Perfume', 'Men'),
(81, 'SS1', 'Salini Red shirt', '399', 'image/s1.jpg', 'This storybook is about animals published by Disney', 'Shirt', 'Women'),
(82, 'SS2', 'Gohel Black Shirt', '799', 'image/s2.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(83, 'SS3', 'Rosy Shirt', '499', 'image/s3.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(84, 'SS4', 'ColorFul White shirt', '699', 'image/s4.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(85, 'SS5', 'Vivid Bharti Shirt', '699', 'image/s5.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(86, 'SS6', 'Master Shirt', '699', 'image/s6.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(87, 'SS7', 'Apple colorful Shirt', '699', 'image/s7.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(88, 'SS8', 'Red Black Shirt', '399', 'image/s8.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(89, 'SS9', 'Mostoff Color Fly Shirt', '999', 'image/s9.jpg', 'Trendif brings to you this shirt which is made from viscose and is available in attractive colors. This shirt has been designed keeping in mind the latest trends in contemporary casual fashion. ', 'Shirt', 'Women'),
(90, 'TT1', 'Levi Strauss & Co', '499', 'image/T1.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(91, 'TT2', 'Ralph Lauren Corporation', '699', 'image/T2.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(92, 'TT3', 'Lacoste', '499', 'image/T3.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(93, 'TT4', 'Adidas', '699', 'image/T4.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(94, 'TT5', 'Hugo Boss', '899', 'image/T5.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(95, 'TT6', ' Gucci', '799', 'image/T6.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(96, 'TT7', 'Brooks Brothers', '499', 'image/T7.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(97, 'TT8', ' Paul Stuart', '699', 'image/T8.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(98, 'TT9', 'Tommy Hilfiger', '999', 'image/T9.jpg', 'Go weird with Veirdo. 100 % classy 180g cotton bio wash bright color & texture to give you perfect comfort most suppliers advertise promotional t-shirts from 135-140 g. Veirdo provides good quality. Discharge printing veirdo discharge ink is a water-based', 'T-Shirt', 'Women'),
(99, 'JJ1', 'DIESEL', '988', 'image/J1 SDF.jpg', 'Package contains Broadstar Women\'s Slim Fit Jeans which is acid washable.', 'Jeans', 'Women'),
(100, 'JJ2', 'WRANGLER Black Pent', '1050', 'image/J2 HYU.jpg', 'Package contains Broadstar Women\'s Slim Fit Jeans which is acid washable.', 'Jeans', 'Women'),
(101, 'JJ3', 'LEE Jeans', '1590', 'image/J3 YKE.jpg', 'Package contains Broadstar Women\'s Slim Fit Jeans which is acid washable.', 'Jeans', 'Women'),
(102, 'JJ4', 'SPYKAR Jens', '1599', 'image/J4 OSJ.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(103, 'JJ5', 'PEPE JEANS Blue Jeans', '999', 'image/J5 OES.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(104, 'JJ6', 'FLYING MACHINE Black Pent', '1900', 'image/J6 WAD.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(105, 'JJ7', 'DENIZEN Black Pent', '1280', 'image/J7 WSX.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(106, 'JJ8', 'NUMERO UNO Blue Jeans', '1577', 'image/J8 WED.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(107, 'JJ9', 'BURBERRY', '1899', 'image/J10 XCT.jpg', 'Take A More Relaxed Approach Towards Fashion Wearing These Colored Jeans From The House Of Broadstar. Made Of High Quality, These Jeans Will Keep You Comfortable The Entire Day. Club These Jeans With A Shirt And Peep Toes For A Stunning Look. A Stylish En', 'Jeans', 'Women'),
(108, 'K1', 'Biba ', '799', 'image/K1.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(109, 'K2', 'Sangria', '999', 'image/K2.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(110, 'K3', 'Libas Pink Kurti', '699', 'image/K3.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(111, 'K4', ' Rangriti', '899', 'image/K4.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(112, 'K5', 'W for Women', '945', 'image/K5.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(113, 'K6', 'Global Desi', '499', 'image/K6.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(114, 'K7', 'Soch', '749', 'image/K7.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(115, 'K8', 'Aurelia', '499', 'image/K8.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(116, 'K9', 'Melange By Lifestyle', '999', 'image/K9.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Kurties', 'Women'),
(117, 'SS1', 'AOFLY women sunglass', '499', 'image/AOFLY women.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(118, 'SS2', 'IDEE Sunglass', '777', 'image/IDEE.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(119, 'SS3', 'Koreanstyle Sunglasses', '799', 'image/koreanstyle.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(120, 'SS4', 'Polarized Sunglass', '799', 'image/polarized.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(121, 'SS5', 'PRAND Sunglass', '499', 'image/PRAND.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(122, 'SS6', 'Round Metal Retro Sunglass', '499', 'image/round metal retro.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(123, 'SS7', 'Stylishwomen Sunglass', '699', 'image/stylishwomen.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(124, 'SS8', 'Sungless black glass', '444', 'image/SUNGLESS.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(125, 'SS9', 'Rounded Sunglass', '999', 'image/womensungless.jpg', 'Look Stunning In This Latest Ethanic Designer Kurti. This Is Light Weight Material and it will Be Soft on Your Skin.', 'Sunglasses', 'Women'),
(126, 'H1', 'Butterfiles Handbag', '1599', 'image/butterfilesw3.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(127, 'H2', 'Clutch Handbag', '1499', 'image/clutch.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(128, 'H3', 'Lavie  Hand bag', '1699', 'image/handbage33.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(129, 'H4', 'Caprese Handbag', '1799', 'image/download (2).jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(130, 'H5', ' Baggit', '1800', 'image/The House Of Tara.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(131, 'H6', 'Ladida', '1999', 'image/leather.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(132, 'H7', 'Michel Handbag', '1799', 'image/michel.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(133, 'H8', ' Da Milano', '1200', 'image/handbages.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(134, 'H9', 'Totesw', '1649', 'image/Totesw1.jpg', 'Get a hold of the hottest trend this season with this beige tote bag by Lavie - its satin soft faux leather finish and metallic buckle detailing add up to create the perfect looking arm-candy! And added for extra comfort is a full detachable and adjustabl', 'Hand-Bags', 'Women'),
(135, 'FF1', 'adidas', '1600', 'image/aferfds.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(136, 'FF2', 'Bata Shoes', '1599', 'image/bata.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(137, 'FF3', 'Alan Payne', '1499', 'image/bata1.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(138, 'FF4', 'ALL BLACK', '1699', 'image/dsgsr.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(139, 'FF5', 'Altra Running', '1900', 'image/wgrsr.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(140, 'FF6', 'Born', '1499', 'image/sgthr.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(141, 'FF7', 'Brenda Zaro', '1963', 'image/gaeerg.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(142, 'FF8', 'Eileen Fisher', '1423', 'image/XZCV.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(143, 'FF9', 'Jack Rogers', '1699', 'image/wefszd.jpg', 'Bata India is the largest and leading manufacturer of footwear in India and is a part of the Bata Shoe Organization. We are passionate about delighting our customers. Exceptionally stylish, this pair of footwear from the house of Bata features a refined a', 'Footwear', 'Women'),
(144, 'TV1', 'One Day life will change', '139', 'image/fiction1.jpg', 'Book is about changing life', 'Fiction', 'Novels'),
(145, 'fiction2', 'Kristin Hannah', '200', 'image/fiction2.jpg', '', 'Fiction', 'Novels'),
(146, 'fiction3', 'Every Last year', '360', 'image/fiction3.jpg', 'Micromax 80 cm (32 Inches) HD Ready LED TV Unite (Black) (2017 model)', 'Fiction', 'Novels'),
(147, 'fiction4', 'The Lost World', '230', 'image/fiction4.jpg', 'Sony 80 cm (32 Inches) HD Ready LED TV KLV-32R202F (Black) (2018 model)\r\n', 'Fiction', 'Novels'),
(148, 'fiction5', 'All The Light We Can\'t See', '230', 'image/fiction5.jpg', 'Sony Bravia 108 cm (43 Inches) Full HD LED Smart TV KLV-43W662F (Black) (2018 model)', 'Fiction', 'Novels'),
(149, 'fiction6', 'Prosopects of Women', '460', 'image/fiction6.jpg', 'Samsung 80 cm (32 Inches) M Series HD Ready LED TV 32M4100 (Black) (2017 model)', 'Fiction', 'Novels'),
(150, 'fiction7', 'War Between Us', '450', 'image/fiction7.jpg', 'Samsung 80 cm (32 Inches) M Series HD Ready LED TV 32M4100 (Black) (2017 model)', 'Fiction', 'Novels'),
(151, 'fiction8', 'A Witch in Time', '269', 'image/fiction8.jpg', 'TCL  80 cm (32 Inches) M Series HD Ready LED TV 32M4100 (Black) (2017 model)', 'Fiction', 'Novels'),
(153, 'non1', 'India Positive', '150', 'image/non1.jpg', 'Honor 9N (Sapphire Blue, 32 GB) (3 GB RAM)', 'Non-Fiction', 'Novels'),
(154, 'non2', '400 Days', '16', 'image/non2.jpg', 'Honor 10 (Sapphire Blue, 32 GB) (3 GB RAM)', 'Non-Fiction', 'Novels'),
(155, 'non3', 'One Indian Girl', '390', 'image/non3.jpg', 'Apple iPhone Xs Max (Silver, 4GB RAM, 256GB Storage, 12 MP Dual Camera, 458 PPI Display)', 'Non-Fiction', 'Novels'),
(156, 'non4', 'Your Dreams are Mine now', '690', 'image/non4.jpg', 'Display: 1.77-inch QCIF 128*160, Dual Sim, 1000 mAh Lithium-ion battery capacity, 0.3 MP Camera, Bluetooth, GPRS, FM, Flashlight, 32MB Ram, 64MB Rom and 8GB Expandable memory, MP3 and MP4 Player Supported', 'Non-Fiction', 'Novels'),
(157, 'non5', '2 States', '315', 'image/non5.jpg', 'Realme 1 (Solar Red, 4GB RAM, 64GB Storage)', 'Non-Fiction', 'Novels'),
(158, 'non6', 'Revolution 2020', '159', 'image/non6.jpg', 'Mi A2 (White, 4GB RAM, 64GB Storage)', 'Non-Fiction', 'Novels'),
(159, 'non7', 'LionHeart', '379', 'image/non7.jpg', 'Samsung Galaxy Note 8 (Midnight Black, 6GB RAM, 64GB Storage) with Offers', 'Non-Fiction', 'Novels'),
(160, 'non8', 'Wings of Fire', '500', 'image/non8.jpg', 'Samsung Galaxy Note 9 (Midnight Black, 6GB RAM, 64GB Storage) with Offers', 'Non-Fiction', 'Novels'),
(161, 'sci1', 'Imagination', '300', 'image/sci1.jpg', 'Vivo NEX (Black, 8GB RAM, 128GB Storage)', 'Science', 'Novels'),
(162, 'J6', 'polo jeans', '1900', 'image/Jeans6.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(163, 'J7', 'denim jeans', '1200', 'image/Jeans7.jpg', 'Fit Type: Slim Fit\r\nThis brand is available exclusively on Amazon\r\n98% Cotton and 2% stretch\r\nZip fly with button closure\r\nSkinny Fit\r\nDue to the inherent nature of indigo, sulphur dyed fabrics, the surface color may ble', 'Jeans', 'Men'),
(172, 'sci2', 'The Doors of Eden', '260', 'image/sci2.jpg', 'dvsdvfdbdgb', 'Science', 'Novels'),
(173, 'sci3', 'Shards of Earth', '180', 'image/sci3.jpg', 'dvsdvsfbs', 'Science', 'Novels'),
(174, 'sci4', 'War of World', '450', 'image/sci4.jpg', 'dvSDVFbFb', 'Science', 'Novels'),
(175, 'sci5', 'Space Acedemy', '315', 'image/sci5.jpg', 'wwscscdvfwr', 'Science', 'Novels'),
(176, 'sci6', 'The missing found', '180', 'image/sci6.jpeg', 'dsfvjhdivf', 'Science', 'Novels'),
(178, 'auto1', 'Gandhiji', '175', 'image/auto1.jpg', 'fhivfhi kdf', 'Autobiography', 'Novels'),
(179, 'auto2', 'Barack Obama', '430', 'image/auto2.jpg', 'dvdfvf', 'Autobiography', 'Novels'),
(180, 'auto3', 'Narendra Modi', '325', 'image/auto9.jpg', '', 'Autobiography', 'Novels'),
(181, 'auto4', 'APJ Abdul Kalam', '315', 'image/auto3.jpg', '', 'Autobiography', 'Novels'),
(182, 'auto5', 'Nelson Mandela', '400', 'image/auto4.jpg', 'dochsdivf', 'Autobiography', 'Novels'),
(183, 'auto6', 'Helen Keller', '250', 'image/auto5.jpg', '', 'Autobiography', 'Novels'),
(184, 'auto7', 'Vivekananda', '190', 'image/auto8.jpg', '', 'Autobiography', 'Novels');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `name`, `email`, `rate`) VALUES
(1, 'darshan', 'darshan@gmail.com', 5),
(2, 'hetvi', 'hetvi@gmail.com', 4),
(3, 'abc', 'abc@gmail.com', 2),
(4, 'bhesaniya', 'bhesaniya@gmail.com', 4),
(5, 'yash', 'xyz@gmail.com', 4),
(6, 'darshan patel', 'darshan8bhesaniya@gmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `registration_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `postalcode` varchar(6) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`registration_id`, `name`, `email`, `password`, `address`, `city`, `area`, `postalcode`, `gender`, `mobile`) VALUES
(1, 'hetvi', 'hetvi@gmail.com', '12345', '11,radhesharnam society bareja.', 'ahmedabad', 'bareja', '382425', 'female', '9624259675'),
(2, 'darshan', 'darshan@gmail.com', 'darshan', '11,umang appartment..', 'ahmedabad', 'nikol', '382435', 'male', '8758161539'),
(3, 'mohit', 'mohit@gmail.com', 'mohit', 'airport road...', 'ahmedabad', 'airport', '382475', 'male', '8974556221'),
(4, 'param', 'param@gmail.com', 'param12345', 'B-51,haridwar society,old kosad road.amroli', 'surat', 'amroli', '394107', 'male', '9758641158'),
(5, 'Amroli', 'tilak@gmail.com', 'tilak', 'radhres', '', '', '382475', 'male', '7854932189'),
(6, 'xyz', 'xyz@gmail.com', 'xyz123', 'kctiwwyrwieu', 'Jamnagar', 'Amroli', '789654', 'female', '5896471235'),
(7, 'abc', 'abc@gmail.com', 'abc', 'vfk', 'Vadodara', 'Waghodiya', '589674', 'female', '9856447123'),
(8, 'hetvi', 'hetvibpatel272@gmail.com', 'hetvipatel', 'radhesharnam society ', 'Ahmedabad', 'Satelite', '382475', 'female', '9624259675'),
(9, 'darshan', 'darshan8bhesaniya@gmail.com', 'darshanpatel', 'nikol', 'Ahmedabad', 'Nikol', '382475', 'female', '8758161539'),
(10, 'abc', 'abc@gmail.com', 'abc123', 'kyqwbrlietw', 'Ahmedabad', 'Nikol', '382350', 'male', '8758161539'),
(11, 'Darshan Bhesaniya', 'darshan8bhesaniya@gmail.com', 'darshanpatel', '11,umang appartment near cenal', 'Ahmedabad', 'Nikol', '382350', 'male', '8758161539'),
(12, 'darshan patel', 'darshan8bhesaniya@gmail.com', 'darshanpatel', '11, Umang appartment,near cenal , thakkerbapa nager road,ahmedabad ', 'Ahmedabad', 'Nikol', '382350', 'male', '8758161539');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `subcategory_img` varchar(255) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`subcategory_id`, `subcategory_name`, `subcategory_img`, `category_name`) VALUES
(1, 'BCA', 'image/bca.jpg', 'StudyBooks'),
(2, 'Bcom', 'image/bcom.jpg', 'StoryBook'),
(3, 'BBA', 'image/bba.png', 'StoryBook'),
(4, 'Arts', 'image/arts.jpg', 'StoryBook'),
(5, 'General Knowledge', 'image/gk.png', 'Study Books'),
(7, 'Computers', 'image/computer.jpg', 'StoryBook'),
(8, 'Science', 'image/science.jpg', 'Study Books'),
(9, 'English', 'image/english.jpg', 'StoryBook'),
(10, 'Social Studies', 'image/ss.jpg', 'StoryBook'),
(11, 'Disney', 'image/disney.jpg', 'StoryBook'),
(12, 'Car', 'image/car.jpg', 'StoryBook'),
(13, 'Pixar', 'image/pixar.jpg', 'StoryBook'),
(14, 'Fiction', 'image/fiction.jpg', 'Novels'),
(15, 'Non-fiction', 'image/nonf.jpg', 'Novels'),
(16, 'Autobiography', 'image/autobio.jpg', 'Novels'),
(17, 'Science', '', 'Novels'),
(18, 'Autobiography', '', 'Novels');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view1`
-- (See below for the actual view)
--
CREATE TABLE `view1` (
`id` int(11)
,`name` varchar(20)
,`email` varchar(50)
,`password` varchar(50)
,`address` varchar(50)
,`mobile` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `view1`
--
DROP TABLE IF EXISTS `view1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1`  AS SELECT `admin`.`id` AS `id`, `admin`.`name` AS `name`, `admin`.`email` AS `email`, `admin`.`password` AS `password`, `admin`.`address` AS `address`, `admin`.`mobile` AS `mobile` FROM `admin` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
