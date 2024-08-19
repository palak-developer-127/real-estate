-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 05:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `home_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('frnSnyRkXPCHZ2DtsgfJ', 'janvi', '30ff0df078d6a592af7efbfcf5748c30fc8ad907'),
('h9iUYTyhqdulqnmXdHQT', 'dhara', 'f66c9bc6e24b16dbd0312759aa72a28d68934490'),
('sB02M4MyK6bKIrbj6kHz', 'nirav', 'f2a48911e0b63e315609a3e36fdc2e265e082723');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `admin_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `total_floors`, `loan`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`, `admin_id`) VALUES
('4RSuFMt9eqeGuStnlUpM', 'uh4tfIPxzZD2GzoK1jGm', 'div&#39;s home', '11, 14th Street,nandanam Extension, Nandanam, Chennai', '13000000', 'house', 'sale', '5', '3300000', '4', '4', '2', '370', '2', 'available', 'bGOSVWMkodwqYTvP2VY2.jpg', 'au27iEfKRNtfsmpB2q3P.jpg', 'a8pYy0NBUUctna1JfAxS.jpg', 'FlYQflDlpnyzGQKBSJKN.jpg', 'wBidgXm4biKT3lN5RHCs.webp', 'Divyesh&#39;s home in Chennai is a luxurious property valued at 1 crore. Located in one of Chennai&#39;s upscale neighborhoods, it boasts contemporary architecture and exquisite design elements. The exterior facade showcases a blend of modern aesthetics with traditional accents, reflecting the rich cultural heritage of Chennai.', '2024-02-20', ''),
('7PujZEV6IUj9lX9O0Yfi', 'kb0xMSQPb5lh7ukuoIMz', 'yash&#39; home', 'A-86, shivanta row house, gandhi road, vapi', '2', 'house', 'sale', '3', '20000', '2', '2', '1', '956', '2', 'available', 'vDJhLAiHxAMw7IyLGgqo.webp', 'OvH1efxUYnohcVVIE6cC.webp', 'Uj8cfiGXEBYxRd2bixcx.webp', '8Ml8HLbCfbkVGhKFSv1I.jpg', 'QVA8SVFroc6mbSb7yCAG.jpg', 'The house stands as a charming two-story structure, nestled within a quaint neighborhood. Its exterior is adorned with a blend of modern and traditional architectural elements. A well-manicured lawn surrounds the house, bordered by vibrant flower beds, adding a touch of freshness to the property. A pathway leads from the wrought iron gate to the front porch, inviting guests with its warm ambiance.', '2024-02-18', ''),
('8FPCyc29AlBhxNuSELAv', 'Djksld5znPA7TukGK8sv', 'aasu&#39;s home', 'T-32, Aasu Lane, City Center, Kota, Rajasthan', '49000', 'flat', 'rent', '2', '11000', '2', '2', '2', '648', '1', 'not available', 'JjtxE4JCmb248pefxtP3.jpg', 'bztimmyyGEIeG6yL4vX1.webp', 'n4YWRU9fhfMOTjfPyFwq.webp', 'twHDpVMUtNKz6pCODYRm.jpg', 'rUlq8bgRjPMnKWdtYel3.webp', 'Aasu&#39;s house in Kota is a modest but comfortable dwelling located in a residential area of the city. The house is a two-story structure with a simple design, featuring a white exterior and a tiled roof. It has a small front yard with a neatly trimmed lawn and a few potted plants adorning the entrance.', '2024-02-18', ''),
('fkfXKpIQvNLNG1qDhZQp', 'rE88WOLTvkvlaqSSG2H7', 'Serenity Skyline', 'Plot No. 2, Main Mujessar Road, Delhi, Haryana', '200000', 'flat', 'sale', '4', '30000', '4', '4', '2', '410', '1', 'not available', 'fenDsWHaZaoLIQ0sFQxa.webp', 'Lu4iJacQ9EPFxdb0uaCK.jpg', '2GdGA4RmnsVdYsi1XNlP.webp', 'eQfowlnifAx3jR80mKLg.jpg', 'mCuBS4Pzp8wYuG91DUab.jpg', 'The Serenity Skyline is a luxurious apartment located in Delhi, available for rent at a price of 2 lakhs. It boasts a stunning skyline view, offering residents a serene and picturesque backdrop of the city. This spacious apartment is designed with modern amenities and high-end finishes, providing the ultimate comfort and convenience.', '2024-02-20', ''),
('iOTrFDXfs3LUVkLjN7R5', 'BG7o7fQ3oz9U4l7qCUoF', 'Astra Heights', '1,9thcrs,malleswaram,bangalore-03, Malleswaram, Bangalore', '15000000', 'flat', 'sale', '5', '10000000', '4', '5', '4', '530', '3', 'available', 'DZ2tqTDJ9ymZzcjfun82.webp', 'WDVipCEo5y8INVWfogyO.jpg', 'TdDuj93ceKujyagVMKzx.jpg', '8Lug4qyVUThNw1ghXXii.jpg', '28VCJxkmj0pYgLv7UTQP.jpg', 'Astra Heights is a luxurious residential complex located in Bangalore, India. Priced at 1.4 crore, it offers upscale living with a range of modern amenities and facilities. Situated in a prime location in Bangalore, Astra Heights provides residents with easy access to key areas of the city, including business districts, shopping centers, educational institutions, and entertainment venues.', '2024-02-20', ''),
('KseBM7yTDlupD1llQO25', 'PQwd8m8kVJop9QZ7kGkE', 'janvi&#39;s house', '123, Sunshine Apartments, Bandra West, Mumbai', '8000000', 'house', 'sale', '4', '3400000', '3', '3', '2', '886', '2', 'available', 'G87UWmgV3i9T2cbxG3V0.jpg', 'AMeju1FqwTowvi5oNdML.webp', '2O6ReIcXuqNvvVJpzFCQ.jpg', 'v3GGOQhXu6Y4topAQh58.jpg', 'br0y3UEcVqxsoLopokJw.webp', 'Janvi&#39;s house in Mumbai, valued at 8,000,000 rupees, is an elegant and spacious property located in one of the city&#39;s upscale neighborhoods. The house is situated in a prime location, offering convenient access to various amenities, such as shopping centers, restaurants, and entertainment venues.', '2024-02-19', ''),
('LA3StcTrJ22dYpsRiJDC', 'O19Pr5vx1jqfwqMo6z5j', 'Lotus Retreat', '019 Abhirath Oval, New Jagmeet, Kerala, India', '90000000', 'house', 'sale', '4', '9400000', '3', '3', '2', '460', '1', 'available', 'DbreJxozrH2MHsAJeeTA.jpg', 'lLkz4efGm7RfxOEBOsvx.webp', 'OYMVgzqZC7oQeuKNHBdq.jpg', 'sDotf3YSjfHIw6Jhu6Ct.webp', 'Fo4atbvqWpDBbION17Fh.jpg', 'Lotus Retreat is an exquisite luxury estate nestled amidst lush greenery and serene landscapes, offering unparalleled opulence and tranquility. Situated in a prestigious location, this property spans across acres of meticulously landscaped gardens, ensuring privacy and exclusivity for its discerning residents.', '2024-02-20', ''),
('m2T4BpQtCU1WRB2JdR5g', '14x3aZot48PG0KeId6Df', 'dhara&#39;s home', 'Dev Apartment, 5, Kamnath Mahadev Rd, opp. Municipal School, Surat', '22000', 'flat', 'rent', '3', '10000', '2', '2', '2', '647', '1', 'not available', 'nLEUAZ3UmPmxPa0lPneh.jpg', '6f0hPdfIKba626TxIGUB.jpg', 'cQbNhiv85rxCt1d2kVWC.jpg', 'AGaAFscjFbE6KVygp3NM.webp', 'x3xQ36JDSODj6j63yne1.jpg', 'Dhara&#39;s rented home is a cozy and inviting space nestled in a quiet neighborhood. As you approach the house, you&#39;re greeted by a neatly manicured front lawn bordered with colorful flowers, adding a touch of vibrancy to the exterior. The exterior of the house itself is painted in a warm, earthy tone, giving it a welcoming and homely feel.', '2024-02-18', ''),
('mMtvXf1zknjCl19GtKnD', 'xBiDwUnNMpxLCbrLluM9', 'apple luxuriya', '214 Butt Knolls, Pillaibury, karnatka 985 511, India', '86000000', 'flat', 'sale', '5', '10000000', '4', '4', '3', '455', '1', 'available', 'HbmJfqyMs4kXIgzTQJVa.webp', 'pXvqEtShDphU7YqOxqCD.jpg', 'z2bFeDZ9Y8l0jbjVbiX0.jpg', '6GcAJNxDeT7nE8IWLp2f.jpg', '51FGEMXeXp6x6n3yOvZl.jpg', 'Located in the heart of the bustling city, this exquisite penthouse offers unparalleled luxury and comfort. Boasting a price tag of 8 crores and 60 lakhs, this property epitomizes opulence and sophistication.', '2024-02-20', ''),
('XBiFFrVUsbLE7QlhGmv5', 'i8GhrIxnkn6HuChruAWW', 'Nirav&#39;s Home', '26/27, Raheja Towers, 8 Floor, M G Road, Delhi', '7000000', 'flat', 'sale', '3', '2300000', '2', '2', '0', '701', '1', 'available', 'xIPIHKJph8vr2KPQJ9cx.webp', '9usQrmwhaYPfuQmK5eWb.webp', 'wF3yrM3cp7z8Mk0FoQ5F.jpg', 'afe0ZK48Unhj3tWL5vIa.jpg', 'VbA4Ar1hu5BTmqIzYX1K.webp', 'Nirav&#39;s home in Delhi is a charming two-story house nestled in a peaceful residential neighborhood. The exterior is painted in a warm cream color, with a contrasting red door that adds a pop of color to the facade. A neatly trimmed hedge lines the pathway leading up to the entrance, and colorful flowers bloom in the small front garden.\r\n\r\n', '2024-02-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('tNisLknTPegHCA7i89uE', '4RSuFMt9eqeGuStnlUpM', 'kb0xMSQPb5lh7ukuoIMz', 'uh4tfIPxzZD2GzoK1jGm', '2024-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('ZEH9AIp9HCYOpf392m3e', '7PujZEV6IUj9lX9O0Yfi', 'kb0xMSQPb5lh7ukuoIMz');

-- --------------------------------------------------------

--
-- Table structure for table `spay`
--

CREATE TABLE `spay` (
  `id` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('14x3aZot48PG0KeId6Df', 'dhara', '7564539485', 'dhara45@gmail.com', '60bcc8a3a2200b19e8aeef1dd736e33e4caf470e'),
('BG7o7fQ3oz9U4l7qCUoF', 'alpesh', '836485633', 'alpesh92@gmail.com', 'de955bfd7645a3c4e33a322cfc250896d32cf609'),
('Djksld5znPA7TukGK8sv', 'aastha', '8475635241', 'aasu39@gmail.com', '7c009c5263369c96592a86fbdf4fb59d346bf527'),
('i8GhrIxnkn6HuChruAWW', 'nirav', '7463524142', 'niravmavani786@gmail.com', 'afe8a6359c0e5c39d8a980ac73c4efb727d54dd3'),
('kb0xMSQPb5lh7ukuoIMz', 'yash', '465746576', 'yash@123gmail.com', '653561021db6d951b39f64dfd3d6833984fffa53'),
('O19Pr5vx1jqfwqMo6z5j', 'deep', '542387455', 'deep58@gmail.com', '9bb9aeea43ff829892fbeb4e61f424ca0b0b2c32'),
('PQwd8m8kVJop9QZ7kGkE', 'janvi', '8475635241', 'janvi687@gmail.com', 'fed8a9fe5531951664e5026e4e8005cfd6647f61'),
('rE88WOLTvkvlaqSSG2H7', 'priyank', '243746588', 'priyank93@gmail.com', '4fd036d65e16342eb347128a4f22889f60146be5'),
('uh4tfIPxzZD2GzoK1jGm', 'divyesh', '9946344231', 'divyesh454@gmail.com', '39dae1a8c581ff3acadf7811d9527a7d3befca65'),
('xBiDwUnNMpxLCbrLluM9', 'aryan', '3853542372', 'aryan563@gmail.com', '30c659cf566d818f605f792bd7aaf04d64c46d70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spay`
--
ALTER TABLE `spay`
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
-- AUTO_INCREMENT for table `spay`
--
ALTER TABLE `spay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
