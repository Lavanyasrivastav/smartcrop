-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 08:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcropp`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisory`
--

CREATE TABLE `advisory` (
  `id` int(11) NOT NULL,
  `crop` varchar(50) NOT NULL,
  `soil_type` varchar(50) DEFAULT NULL,
  `advice_en` text NOT NULL,
  `advice_hi` text NOT NULL,
  `advice_mr` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ph_range` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisory`
--

INSERT INTO `advisory` (`id`, `crop`, `soil_type`, `advice_en`, `advice_hi`, `advice_mr`, `created_at`, `ph_range`) VALUES
(1, 'rice', 'loamy', 'Apply 80-40-40 NPK in 3 splits. Maintain standing water 5 cm.', '80-40-40 एनपीके 3 बार में डालें। 5 सेमी पानी रखें।', '80-40-40 एनपीके 3 वेळा टाकावे. 5 सेमी पाणी ठेवा.', '2025-09-05 19:05:32', NULL),
(2, 'wheat', 'black', 'Apply 120-60-40 NPK. Irrigate every 10 days.', '120-60-40 एनपीके डालें। हर 10 दिन सिंचाई करें।', '120-60-40 एनपीके घाला. दर 10 दिवसांनी पाणी द्या.', '2025-09-05 19:05:32', NULL),
(3, 'rice', 'sandy', 'Apply 60-30-30 NPK in 3 splits. Ensure frequent irrigation to avoid drought stress.', '60-30-30 एनपीके 3 बार में डालें। सूखे से बचने के लिए बार-बार सिंचाई करें।', '60-30-30 एनपीके 3 वेळा टाका. दुष्काळ टाळण्यासाठी वारंवार पाणी द्या.', '2025-09-06 03:27:33', NULL),
(4, 'wheat', 'loamy', 'Apply 120-60-40 NPK in 2 splits. First irrigation 21 days after sowing.', '120-60-40 एनपीके 2 बार में डालें। पहली सिंचाई 21 दिन बाद करें।', '120-60-40 एनपीके 2 वेळा टाका. पहिले पाणी 21 दिवसांनी द्या.', '2025-09-06 03:27:33', NULL),
(5, 'maize', 'black', 'Apply 120-60-40 NPK. Top dressing at knee height stage.', '120-60-40 एनपीके डालें। घुटने की ऊंचाई पर टॉप ड्रेसिंग करें।', '120-60-40 एनपीके घाला. गुडघ्याच्या उंचीवर टॉप ड्रेसिंग करा.', '2025-09-06 03:27:33', NULL),
(6, 'cotton', 'sandy', 'Apply 75-40-40 NPK. Provide 10 irrigations during crop season.', '75-40-40 एनपीके डालें। फसल सीजन में 10 सिंचाई करें।', '75-40-40 एनपीके घाला. हंगामात 10 सिंचन द्या.', '2025-09-06 03:27:33', NULL),
(7, 'sugarcane', 'loamy', 'Apply 250-150-150 NPK in 3 splits. Keep field well-drained.', '250-150-150 एनपीके 3 बार में डालें। खेत को अच्छी तरह निथारें।', '250-150-150 एनपीके 3 वेळा टाका. शेत व्यवस्थित निचरा ठेवा.', '2025-09-06 03:27:33', NULL),
(8, 'pulses', 'red', 'Apply 20-40-0 NPK as basal dose. Use Rhizobium inoculation.', '20-40-0 एनपीके बेसल डोज डालें। राइजोबियम इनोकुलेशन करें।', '20-40-0 एनपीके बेसल डोस घाला. राइझोबियम इनोक्युलेशन करा.', '2025-09-06 03:27:33', NULL),
(9, 'millets', 'sandy', 'Apply 40-20-0 NPK. Maintain soil moisture for better yield.', '40-20-0 एनपीके डालें। बेहतर उपज के लिए मिट्टी की नमी बनाए रखें।', '40-20-0 एनपीके घाला. चांगल्या उत्पादनासाठी मातीतील ओलावा ठेवा.', '2025-09-06 03:27:33', NULL),
(10, 'vegetables', 'loamy', 'Apply organic manure and NPK based on crop. Irrigate every 5-7 days.', 'फसल के अनुसार जैविक खाद और एनपीके डालें। हर 5-7 दिन सिंचाई करें।', 'पीकानुसार सेंद्रिय खत आणि एनपीके घाला. दर 5-7 दिवसांनी पाणी द्या.', '2025-09-06 03:27:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisory`
--
ALTER TABLE `advisory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crop` (`crop`,`soil_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advisory`
--
ALTER TABLE `advisory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
