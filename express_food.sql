-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2018 at 01:21 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaint_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reason` enum('NOT_DELIVERED','LATE_DELIVERY','DAMAGED_DELIVERY','INCOMPLETE_DELIVERY','SPOILED_FOOD') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ASSIGNED','PROCESSING','RESOLVED') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_accepted` date NOT NULL,
  `date_resolved` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`complaint_id`, `order_id`, `reason`, `status`, `date_accepted`, `date_resolved`) VALUES
(1, 4, 'LATE_DELIVERY', 'RESOLVED', '2018-06-29', '2018-06-30'),
(2, 8, 'DAMAGED_DELIVERY', 'ASSIGNED', '2018-07-01', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_type` enum('MAIN_DISH','DESSERT') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(4,2) NOT NULL,
  `is_actual` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_type`, `name`, `description`, `price`, `is_actual`) VALUES
(3, 'MAIN_DISH', 'Creamy Asparagus Tagliatelle', 'Whole wheat pasta, Light cream, Asparagus, Parmesan, Parsley, Lemon juice', '5.90', 1),
(4, 'MAIN_DISH', 'Shrimp Scampi Pasta', 'Shrimp, Garlic, Whole Wheat Pasta, Parsley, White vine, Butter, Olive oil, Crushed red pepper flakes', '9.90', 1),
(5, 'MAIN_DISH', 'Tuna Burger', 'Tuna, Bread crumbs, Peppers sauce, Mustard, Egg, Olive oil', '4.80', 1),
(6, 'DESSERT', 'Peanut Butter Cookies', 'Peanut butter, Sugar, Egg', '1.90', 1),
(7, 'DESSERT', 'Apple Pie Crumble Cake', 'Sugar, Cinnamon, Nutmeg, Granny Smith apples, Whipped cream, Butter', '2.70', 1),
(8, 'MAIN_DISH', 'Gerardo\'s roast pork shoulder with vegetables', 'Pork shoulder, Onions, Garlic, Carrots, Celery', '9.80', 1),
(9, 'MAIN_DISH', 'Tina\'s Greek stuffed peppers with feta cheese', 'Peppers, Farmer\'s cheese, Feta cheese, Oregano', '4.80', 1),
(10, 'MAIN_DISH', 'Freekeh tacos with mango salsa', 'Freekeh, Low-fat natural yoghurt, Tofu, Mushrooms, Black beans, Mango, Oregano', '7.70', 1),
(11, 'DESSERT', 'Chocolate Fudge Cake', 'Layers of dark chocolate sponge, topped with a rich chocolate ganache and white & dark chocolate curls ', '4.50', 1),
(12, 'DESSERT', 'Banoffee Torte', 'Banana and toffee ice creams decorated with chocolate ice cream, hazelnuts & toffee sauce', '4.50', 1),
(13, 'DESSERT', 'Strawberry Cheesecake ', 'Set on a biscuit base, made with cream cheese and a hint of vanilla & topped with a strawberry fruit topping', '4.50', 0),
(14, 'DESSERT', 'Ferraro Rocher', 'Ferrero Rocher ice cream combined with thick chocolate sauce topped with Ferrero Rocher', '4.50', 1),
(15, 'DESSERT', 'Amarena', 'Traditional Turkish style yogurt ice cream, infused with our fresh Amarena cherry sauce', '4.50', 1),
(16, 'MAIN_DISH', 'Chicken Pizzaiola', 'Grilled free-range chicken breast, tomato, Calabrian chilli, Leccino olive & caper sauce, rocket, Parmesan & your choice of side', '10.50', 1),
(17, 'MAIN_DISH', 'Trout Vignole', 'Pan-seared Chalk Stream trout fillet with crispy skin, Roman pea stew & a mint, lemon & garlic mayo', '12.50', 1),
(18, 'MAIN_DISH', 'Sicilian-style Cauliflower', 'Whole roasted with a lentil ragù, pomegranate & pine nuts', '9.00', 1),
(19, 'MAIN_DISH', 'Super Green Burger', 'Quinoa, kale & bean patty, sticky balsamic onions, cottage cheese, tomato, baby gem & your choice of side', '8.50', 1),
(20, 'MAIN_DISH', 'Seared Swordfish', 'Swordfish steak with smashed avocado & a cherry tomato, basil, caper & red onion salad', '14.00', 0),
(21, 'DESSERT', 'Epic Tiramisu', 'A chocolate dome stuffed with mascarpone, coffee-soaked sponge & a hot chocolate & espresso sauce', '6.50', 1),
(22, 'DESSERT', 'Semifreddo', 'White chocoltate & honeycomb semifreddo, strawberry compote & baby basil', '6.00', 1),
(23, 'MAIN_DISH', 'Chicken Al Mattone', 'Marinated, grilled free-range chicken breast, Jamie’s herby almond pesto, rocket, lemon & your choice of side', '12.50', 1),
(24, 'MAIN_DISH', 'Pork Milanese', 'Higher-welfare pork coated in herby Parmesan breadcrumbs, topped with a fried free-range egg, cheesy fonduta & Parmesan \r\nAdd truffle for £1.50', '10.20', 1),
(25, 'MAIN_DISH', 'Our Original Beef Burger', 'Prime British beef in a brioche bun, sticky balsamic onions, tomato, mostarda di Cremona secret sauce & your choice of side\r\nAdd pancetta for £1.50 / Add Westcombe Cheddar for £1', '10.50', 1),
(26, 'MAIN_DISH', 'Trout Vignole', 'Pan-seared Chalk Stream trout fillet with crispy skin, Roman pea stew & a mint, lemon & garlic mayo', '12.50', 1),
(27, 'MAIN_DISH', 'Tuscan Lamb', 'Slow-cooked lamb breast rolled with a Tuscan-style herby stuffng, served with sweet & sour peppers & salsa verde', '13.50', 1),
(28, 'MAIN_DISH', 'Agnolotti', 'Roves des Garrigues, Broad beans, Peas, Marjoram', '12.50', 1),
(29, 'DESSERT', 'Churros', 'Warm Mexican doughnut rings dusted in cinnamon sugar served with dulce de leche caramel sauce or chocolate sauce, served with ice cream', '5.95', 1),
(30, 'DESSERT', 'Banana Burrito', 'Chopped banana and cinnamon sugar wrapped \'burrito-style\' in a tortilla and deep fried. Served with dulce de luche caramel sauce and vanilla ice cream', '6.15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enc_pwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enabled` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `phone`, `email`, `username`, `enc_pwd`, `is_enabled`) VALUES
(1, 'Max', 'Boyle', '070 3816 3444', 'max.boyle@gmail.com', 'boyle', '2F36EB7EDC0FC39EDB245964ED76AB84F3F6AD4531FC438FC351169B875BA84C', 1),
(2, 'Evie ', 'Burke', '079 4424 7443', 'evie.burke@gmail.com', 'burke', 'F2B046F74B14A9D795D0F9FA6A5AB6F3F98D5606E517384FA5BA9642C5DE3241', 1),
(3, 'Hayden', 'Pearce', '070 6916 4202', 'hayden30@hotmail.com', 'hayden30', '6D8AF74B7AFC122135FEBEB51EC7198E108BD5949A80ACAF4CF8A19C6A4E4AB5', 1),
(4, 'George', 'Holland', '078 8457 1589', 'george.holland@gmail.com', 'georgeholl', '1809807E668333C9D4F8609F5F05849E5056E3386A820866792DCFABF39F5210', 1),
(5, 'Danielle', 'Burton', '077 6008 6213', 'danielle@babefree.com', 'danielleb', 'DE6B22AE4D0183871DAC835CA89DAE9610191688CF1DA203DBE47D62E39F5F4E', 1),
(6, 'Mollie', 'Bond', '070 7092 1151', 'mollie@babefree.com', 'mbond', '2ABDF890271A1F5D4FE38031CAE82D09180DAA9B79E92551B981E7334DC12192', 1),
(7, 'Shannon', 'Palmer', '079 8028 0186', 'shannon_purple@hotmail.com', 'spurple', '57A323355F079E501E62FC2663B77FD815E4779CAB4E467416A3409F402370DC', 1),
(8, 'Harvey', 'Field', '077 1535 3990', 'garry@babefree.com', 'garry', '972EC25577232E8A366F1A617ADD664B606D4F85D97B257C444C1645B7EC4ACB', 1),
(9, 'Libby', 'Hardy', '079 6490 4551', 'libby@hawaiiremembers.com', 'libby_hawaii', 'E40AF5C22FFE9847D2461139C3679206029DE2EF2FD86F0DA7AF2A03F7CAA980', 1),
(10, 'Victoria', 'Noble', '077 6013 9998', 'vicorian@grebbo.com', 'thurman.mu', 'C9E9B642BE81E68F1BB96195CF095B23CCCEB0CF28513B40C3A685B1B6EA62C6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_num` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_current` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`address_id`, `customer_id`, `city`, `street_num`, `street`, `zip_code`, `is_current`) VALUES
(1, 1, 'Boylestone', '32', 'Henley Road', 'DE6 6HT', 0),
(2, 2, 'Brampford Speke', '43', 'Abingdon Road', 'EX5 4SA', 1),
(3, 3, 'Ericstane', '70 ', 'Red Lane', 'DG10 0GJ', 1),
(4, 4, 'Ericstane', '17', 'Felix Lane', 'OX15 0DP', 1),
(5, 1, 'Boylestone', '145', 'Roundstreet Common', 'RH14 2LR', 1),
(6, 5, 'Ericstane', '243', 'Holburn Lane', 'NR13 5YE', 1),
(7, 6, 'Brampford Speke', '104', 'Hindhead Road', 'NR13 5YE', 1),
(8, 7, 'Ericstane', '109', 'Ash Lane', 'EX22 5GX', 0),
(9, 8, 'Boulby', '23C', 'Marcham Rd', 'TS13 0ST', 1),
(10, 9, 'Brampford Speke', '295', 'Preston Rd', 'EX34 1NY', 1),
(11, 10, 'Boulby', '99', 'Southern Way', 'BN14 2RY', 1),
(12, 7, 'Ericstane', '19', 'Pendwyallt Road', 'DG7 4ZQ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu_items`
--

CREATE TABLE `daily_menu_items` (
  `date` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `stock_num` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu_items`
--

INSERT INTO `daily_menu_items` (`date`, `course_id`, `stock_num`) VALUES
('2018-06-27', 9, 0),
('2018-06-27', 11, 2),
('2018-06-27', 13, 3),
('2018-06-27', 20, 3),
('2018-06-28', 6, 1),
('2018-06-28', 8, 1),
('2018-06-28', 15, 0),
('2018-06-28', 27, 6),
('2018-06-29', 7, 1),
('2018-06-29', 15, 3),
('2018-06-29', 23, 1),
('2018-06-29', 28, 4),
('2018-06-30', 11, 2),
('2018-06-30', 15, 4),
('2018-06-30', 18, 8),
('2018-06-30', 25, 4),
('2018-07-01', 4, 2),
('2018-07-01', 12, 7),
('2018-07-01', 16, 1),
('2018-07-01', 29, 1),
('2018-07-02', 10, 3),
('2018-07-02', 16, 6),
('2018-07-02', 29, 2),
('2018-07-02', 30, 4),
('2018-07-03', 3, 17),
('2018-07-03', 4, 14),
('2018-07-03', 6, 6),
('2018-07-03', 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_biker`
--

CREATE TABLE `delivery_biker` (
  `biker_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_biker`
--

INSERT INTO `delivery_biker` (`biker_id`, `first_name`, `last_name`, `phone`, `is_active`) VALUES
(1, 'Toby', 'Short', '070 6649 3755', 1),
(2, 'Kai', 'Harrison', '079 5899 2228', 1),
(3, 'Henry', 'Richardson', '070 1485 7684', 1),
(4, 'Sebastian', 'Conway', '078 5497 4579', 1),
(5, 'Louie', 'Rose', '070 2561 3883', 1),
(6, 'Leon', 'Walsh', '078 6679 5513', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meal_order`
--

CREATE TABLE `meal_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `biker_id` int(11) DEFAULT NULL,
  `del_city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_street_num` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_street` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_zip_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_datetime` datetime NOT NULL,
  `del_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('ACCEPTED','PROCESSING','ON_HOLD','CANCELLED','DECLINED','SHIPPED','DELIVERED','RETURNED','REFUNDED','PARTIALLY_REFUNDED','UNKNOWN','COMPLAINT_PROCESS') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_order`
--

INSERT INTO `meal_order` (`order_id`, `customer_id`, `biker_id`, `del_city`, `del_street_num`, `del_street`, `del_zip_code`, `ord_datetime`, `del_datetime`, `status`) VALUES
(1, 7, 3, 'Ericstane', '109', 'Ash Lane', 'EX22 5GX', '2018-06-27 12:26:23', '2018-06-27 12:42:17', 'DELIVERED'),
(2, 4, 4, 'Ericstane', '89', 'Hindhead Road', 'HP18 3PN', '2018-06-27 12:14:00', '2018-06-27 12:40:00', 'DELIVERED'),
(3, 4, 2, 'Ericstane', '17', 'Felix Lane', 'OX15 0DP', '2018-06-27 14:16:25', '2018-06-27 14:35:00', 'DELIVERED'),
(4, 6, 5, 'Brampford Speke', '104', 'Hindhead Road', 'NR13 5YE', '2018-06-28 16:23:17', '2018-06-28 17:31:07', 'DELIVERED'),
(5, 8, 1, 'Boulby', '23C', 'Marcham Rd', 'TS13 0ST', '2018-06-28 17:44:02', '2018-06-28 18:10:08', 'DELIVERED'),
(6, 9, NULL, 'Brampford Speke 	', '295', 'Preston Rd', 'EX34 1NY', '2018-06-28 17:05:00', '0000-00-00 00:00:00', 'CANCELLED'),
(7, 10, 6, 'Boulby', '99', 'Southern Way', 'BN14 2RY', '2018-06-29 11:35:07', '2018-06-29 11:54:06', 'DELIVERED'),
(8, 1, 3, 'Boylestone', '32', 'Henley Road', 'DE6 6HT', '2018-06-29 17:56:08', '2018-06-29 18:08:08', 'COMPLAINT_PROCESS');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

CREATE TABLE `ordered_items` (
  `order_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`order_id`, `course_id`, `quantity`, `price`) VALUES
(1, 9, 3, '4.80'),
(1, 11, 3, '4.50'),
(2, 13, 3, '4.50'),
(2, 20, 4, '14.00'),
(3, 9, 2, '4.80'),
(3, 13, 3, '4.50'),
(4, 6, 1, '1.90'),
(4, 8, 1, '9.80'),
(5, 15, 2, '4.50'),
(5, 27, 2, '13.50'),
(6, 6, 3, '1.90'),
(6, 27, 2, '13.50'),
(7, 7, 6, '2.70'),
(7, 28, 6, '12.50'),
(8, 7, 4, '2.70'),
(8, 23, 5, '12.50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `daily_menu_items`
--
ALTER TABLE `daily_menu_items`
  ADD PRIMARY KEY (`date`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `delivery_biker`
--
ALTER TABLE `delivery_biker`
  ADD PRIMARY KEY (`biker_id`);

--
-- Indexes for table `meal_order`
--
ALTER TABLE `meal_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `meal_order_ibfk_2` (`customer_id`),
  ADD KEY `meal_order_ibfk_3` (`biker_id`);

--
-- Indexes for table `ordered_items`
--
ALTER TABLE `ordered_items`
  ADD PRIMARY KEY (`order_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delivery_biker`
--
ALTER TABLE `delivery_biker`
  MODIFY `biker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meal_order`
--
ALTER TABLE `meal_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `meal_order` (`order_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer_address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `daily_menu_items`
--
ALTER TABLE `daily_menu_items`
  ADD CONSTRAINT `daily_menu_items_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meal_order`
--
ALTER TABLE `meal_order`
  ADD CONSTRAINT `meal_order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `meal_order_ibfk_3` FOREIGN KEY (`biker_id`) REFERENCES `delivery_biker` (`biker_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ordered_items`
--
ALTER TABLE `ordered_items`
  ADD CONSTRAINT `ordered_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `meal_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordered_items_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
