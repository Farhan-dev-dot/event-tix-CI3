-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 07:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(1, 2, 'Wayang Orang', 'Tokoh-tokoh yang dilakoni Wayang Orang adalah tokoh dari cerita sejarah agama Hindu, yang ceritanya berasal dari kitab Mahabharata dan Ramayana, sama seperti wayang kulit.', 125000, 'spaghetti-bg1.jpg'),
(8, 2, 'Wayang Kulit', 'Tokoh-tokoh yang dilakoni Wayang Kulit adalah tokoh dari cerita sejarah agama Hindu, yang ceritanya berasal dari kitab Mahabharata dan Ramayana.', 1100000, 'Wayang-Kulit.jpg'),
(11, 4, 'Lengger Calung', 'Lengger memiliki arti penari, dan Calung yang berarti gamelan bambu. Kesenian tradisional khas Jawa Tengah ini merupakan tarian dinamis yang gerakannya mengikuti suara gamelan bambu', 110000, 'Lengger.jpg'),
(20, 3, 'Ketoprak', 'Sumber cerita Ketoprak didapat dari sejarah maupun cerita rakyat yang terkadang diselingi juga dengan komedi. Pemain yang tampil menggunakan baju adat dan diiringi dengan alunan instrumen alat musik khas Jawa Tengah.', 120000, 'Ketoprak-18-Kesenian-Tradisional-Khas-Jawa-Tengah-Terlengkap-Sudah-Tahu.jpg'),
(24, 4, 'Wayang jemblung', 'Wayang Jemblung dikenal sejak dulu sebagai ritual untuk memohon keselamatan atas kelahiran seorang bayi yang baru lahir. Kini, Wayang Jemblung dipertunjukkan sebagai kesenian tradisional Jawa Tengah untuk sarana hiburan yang terus dilestarikan.', 128000, 'Wayang-Jemblung.jpg'),
(29, 3, 'Macapat', 'Kesenian tradisional Jawa Tengah juga memiliki kesenian di bidang sastra. Macapat merupakan tembang atau puisi tradisional yang sudah ada sejak peralihan masa kerajaan Majapahit menuju dimulainya masa perjalanan Wali Songo.', 95000, 'Macapat.jpg'),
(39, 1, 'Tari Gambyong', 'salah satu kesenian tradisional khas Jawa Tengah. Tarian ini ditampilkan dengan gerakan lemah lembut penari yang memiliki kelenturan tubuh. Dahulu, tarian ini dilakukan saat masa panen sebagai wujud rasa syukur petani atas hasil panen.', 120000, 'Tari-Gambyong.jpg'),
(40, 1, 'Tari Bondan Payung', 'Bukan sembarang tarian, Tari Bondan Payung tampil dengan cerita seorang ibu yang menyayangi anaknya. Penari yang menggunakan pakaian khas Jawa Tengah akan berlakon sambil membawa beberapa properti, seperti boneka bayi, payung, dan kendi.', 122000, 'Tari-Bondan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 4, 'Sanggar Agung', 'sanggar1850@gmail.com', '1-555-555-5555', 'sanggaragung.com', '8am', '7pm', 'mon-sat', 'Jalan Cendrawasih Bahagia', 'java.jpg'),
(2, 1, 'pendopo wayang', 'wayangtix@gmail.com', '1-567-567-8888', 'wayangtix.com', '10am', '7pm', '24hr-x7', 'Jalan Seruni Damai', '2024-05-14.jpg'),
(3, 3, 'Terang teater', 'terangtix@gmail.com', '1-333-222-7474', 'terangtix.com', '8am', '8pm', 'mon-sat', 'Jalan Harmoni Sejahtera', '2023.jpg'),
(4, 2, 'Cohyo Budoyo', 'budayatix@hlrt.com', '11555578522', 'budayachy.com', '9am', '8pm', '24hr-x7', 'Jalan Wonosari', 'tamanbudaya.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(1, 'Wayang'),
(2, 'Musik'),
(3, 'Teater'),
(4, 'Tari');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(36, 'iwann', 'irawan', 'wawan', 'iwan@gmail.com', '089612347703', '$2y$10$Pzupndfx0WbGdZ00z8cUg.PRK7h47hz/vCoyWc.VLrWyLRuRYVokS', 'JL. Kenangan NO.25');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(380012, 36, 24, 'Wayang jemblung', 1, 128000, 'closed', '2024-05-26 18:58:09', '2024-05-26 17:05:04', 4),
(380013, 36, 39, 'Tari Gambyong', 3, 360000, 'closed', '2024-05-26 19:06:22', '2024-05-26 17:06:34', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380014;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
