-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2025 at 08:53 AM
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
-- Table structure for table `quick_guides`
--

CREATE TABLE `quick_guides` (
  `id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `crop` varchar(50) NOT NULL,
  `guide_en` text NOT NULL,
  `guide_hi` text NOT NULL,
  `guide_mr` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quick_guides`
--

INSERT INTO `quick_guides` (`id`, `action`, `crop`, `guide_en`, `guide_hi`, `guide_mr`, `created_at`) VALUES
(1, 'sowing', 'rice', 'Use certified seeds, maintain 20x15 cm spacing.', 'प्रमाणित बीजों का उपयोग करें, 20x15 सेमी दूरी रखें।', 'प्रमाणित बियाणे वापरा, 20x15 सेमी अंतर ठेवा.', '2025-09-05 19:06:04'),
(2, 'fert', 'rice', 'Split nitrogen into 3 doses at basal, tillering, panicle.', 'नाइट्रोजन 3 भागों में डालें - बेसल, टिलरिंग, पैनिकल।', 'नायट्रोजन 3 भागात टाका - बेसल, टिलरिंग, पॅनिकल.', '2025-09-05 19:06:04'),
(3, 'sowing', 'rice', 'Use certified seeds; soak seeds for 24 hrs; maintain 20x15 cm spacing.', 'प्रमाणित बीजों का उपयोग करें; बीजों को 24 घंटे भिगोएँ; 20x15 सेमी दूरी रखें।', 'प्रमाणित बियाणे वापरा; बियाणे 24 तास भिजवा; 20x15 सेमी अंतर ठेवा.', '2025-09-06 03:29:18'),
(4, 'sowing', 'wheat', 'Use disease-free seeds; seed rate 100 kg/ha; line sowing at 20 cm spacing.', 'रोगमुक्त बीजों का उपयोग करें; बीज दर 100 किग्रा/हेक्टेयर; 20 सेमी दूरी पर लाइन बोवाई।', 'रोगमुक्त बियाणे वापरा; बियाणे दर 100 किग्रॅ/हे; 20 सेमी अंतरावर रेषेत पेरा.', '2025-09-06 03:29:18'),
(5, 'fert', 'rice', 'Apply NPK in 3 splits: Basal, Tillering, Panicle initiation.', 'एनपीके 3 बार डालें: बेसल, टिलरिंग, पैनिकल।', 'एनपीके 3 वेळा टाका: बेसल, टिलरिंग, पॅनिकल.', '2025-09-06 03:29:18'),
(6, 'fert', 'wheat', 'Apply 2 splits: 50% basal, 50% at crown root initiation.', '2 बार डालें: 50% बेसल, 50% क्राउन रूट पर।', '2 वेळा टाका: 50% बेसल, 50% क्राउन रूटवर.', '2025-09-06 03:29:18'),
(7, 'irrig', 'rice', 'Maintain 5 cm water after transplanting; drain before harvest.', 'रोपाई के बाद 5 सेमी पानी रखें; कटाई से पहले पानी निकालें।', 'रोपणानंतर 5 सेमी पाणी ठेवा; कापणीपूर्वी पाणी काढा.', '2025-09-06 03:29:18'),
(8, 'irrig', 'wheat', 'First irrigation at 21 DAS, then every 10–12 days.', 'पहली सिंचाई 21 दिन बाद, फिर हर 10–12 दिन।', 'पहिले पाणी 21 दिवसांनी, नंतर दर 10–12 दिवसांनी.', '2025-09-06 03:29:18'),
(9, 'pest', 'rice', 'Monitor for stem borer, leaf folder; use pheromone traps; spray recommended pesticides.', 'स्टेम बोरर, लीफ फोल्डर की निगरानी करें; फेरोमोन ट्रैप लगाएँ; अनुशंसित कीटनाशक छिड़कें।', 'स्टेम बोरर, लीफ फोल्डर तपासा; फेरोमोन ट्रॅप लावा; शिफारस केलेले कीटकनाशक फवारणी करा.', '2025-09-06 03:29:18'),
(10, 'pest', 'wheat', 'Scout for aphids, termites; use neem spray or recommended insecticides.', 'एफिड्स, दीमक की निगरानी करें; नीम स्प्रे या अनुशंसित कीटनाशक का उपयोग करें।', 'एफिड्स, वाळवी तपासा; नीम स्प्रे किंवा शिफारस केलेले कीटकनाशक वापरा.', '2025-09-06 03:29:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quick_guides`
--
ALTER TABLE `quick_guides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quick_guides`
--
ALTER TABLE `quick_guides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
