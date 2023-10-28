-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2023 at 04:28 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vietnamvisacorp_idcorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `area_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) NOT NULL,
  `area_lat` float NOT NULL,
  `area_lng` float NOT NULL,
  `area_active` enum('Y','N') NOT NULL DEFAULT 'N',
  `area_order` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `area_lat`, `area_lng`, `area_active`, `area_order`) VALUES
(1, 'Asia Pacific', 17.0324, 97.6826, 'Y', 1),
(2, 'Europe', 54.526, 15.2551, 'Y', 2),
(3, 'America - Caribbean', 37.0902, -95.7129, 'Y', 3),
(4, 'Middle East', 29.2985, 42.551, 'Y', 4),
(5, 'Africa', -8.78319, 34.5085, 'Y', 5);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `author_id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'author id',
  `author_name` varchar(255) NOT NULL COMMENT 'author name',
  `author_order` int(11) NOT NULL,
  `author_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_order`, `author_active`) VALUES
(1, 'Ronaldo', 1, 'Y'),
(4, 'Messi', 2, 'Y'),
(5, 'De bruyne', 3, 'Y'),
(6, 'Ozilllll', 5, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_iso_alpha2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_iso_alpha3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_iso_numeric` int(10) UNSIGNED DEFAULT NULL,
  `country_phone_code` smallint(6) DEFAULT NULL,
  `country_continent_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `country_currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_active` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`country_id`),
  KEY `country_list` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_iso_alpha2`, `country_iso_alpha3`, `country_iso_numeric`, `country_phone_code`, `country_continent_code`, `country_currency_code`, `country_active`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 93, 'AF', '', 'Y'),
(2, 'Albania', 'AL', 'ALB', 8, 355, 'EU', '', 'Y'),
(3, 'Algeria', 'DZ', 'DZA', 12, 213, 'AF', '', 'Y'),
(4, 'American Samoa', 'AS', 'ASM', 16, 1, ' ', NULL, 'Y'),
(5, 'Andorra', 'AD', 'AND', 20, 376, 'EU', '', 'Y'),
(6, 'Angola', 'AO', 'AGO', 24, 244, 'AF', '', 'Y'),
(7, 'Anguilla', 'AI', 'AIA', 660, 1, ' ', NULL, 'Y'),
(8, 'Antarctica', 'AQ', 'ATA', 10, NULL, ' ', NULL, 'Y'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 28, 1, 'NA', '', 'Y'),
(10, 'Argentina', 'AR', 'ARG', 32, 54, ' ', NULL, 'Y'),
(11, 'Armenia', 'AM', 'ARM', 51, 374, ' ', NULL, 'Y'),
(12, 'Aruba', 'AW', 'ABW', 533, 297, ' ', NULL, 'Y'),
(13, 'Australia', 'AU', 'AUS', 36, 61, 'AS', NULL, 'Y'),
(14, 'Austria', 'AT', 'AUT', 40, 43, 'EU', '', 'Y'),
(15, 'Azerbaijan', 'AZ', 'AZE', 31, 994, 'EU', '', 'Y'),
(16, 'Bahamas', 'BS', 'BHS', 44, NULL, 'NA', '', 'Y'),
(17, 'Bahrain', 'BH', 'BHR', 48, 973, 'AS', '', 'Y'),
(18, 'Bangladesh', 'BD', 'BGD', 50, 880, 'AS', '', 'Y'),
(19, 'Barbados', 'BB', 'BRB', 52, 1, 'NA', '', 'Y'),
(20, 'Belarus', 'BY', 'BLR', 112, 375, 'EU', '', 'Y'),
(21, 'Belgium', 'BE', 'BEL', 56, 32, 'EU', '', 'Y'),
(22, 'Belize', 'BZ', 'BLZ', 84, 501, 'NA', '', 'Y'),
(23, 'Benin', 'BJ', 'BEN', 204, 229, 'AF', '', 'Y'),
(24, 'Bermuda', 'BM', 'BMU', 60, 1, '', NULL, 'Y'),
(25, 'Bhutan', 'BT', 'BTN', 64, 975, 'AS', '', 'Y'),
(26, 'Bolivia', 'BO', 'BOL', 68, 591, 'NA', '', 'Y'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 387, 'EU', '', 'Y'),
(28, 'Botswana', 'BW', 'BWA', 72, 267, 'AF', '', 'Y'),
(29, 'Bouvet Island', 'BV', 'BVT', 74, NULL, '', NULL, 'Y'),
(30, 'Brazil', 'BR', 'BRA', 76, 55, 'NA', '', 'Y'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 246, '', NULL, 'Y'),
(32, 'British Virgin Islands', 'VG', 'VGB', 92, 1, '', NULL, 'Y'),
(33, 'Brunei', 'BN', 'BRN', 96, 673, 'AS', '', 'Y'),
(34, 'Bulgaria', 'BG', 'BGR', 100, 359, 'EU', '', 'Y'),
(35, 'Burkina Faso', 'BF', 'BFA', 854, 226, '', NULL, 'Y'),
(36, 'Burundi', 'BI', 'BDI', 108, 257, 'AF', '', 'Y'),
(37, 'Cambodia', 'KH', 'KHM', 116, 855, 'AS', '', 'Y'),
(38, 'Cameroon', 'CM', 'CMR', 120, 237, 'AF', '', 'Y'),
(39, 'Canada', 'CA', 'CAN', 124, 1, 'NA', '', 'Y'),
(40, 'Cape Verde', 'CV', 'CPV', 132, 238, 'AF', '', 'Y'),
(41, 'Cayman Islands', 'KY', 'CYM', 136, 1, '', NULL, 'Y'),
(42, 'Central African Republic', 'CF', 'CAF', 140, 236, 'AF', '', 'Y'),
(43, 'Chad', 'TD', 'TCD', 148, 235, 'AF', '', 'Y'),
(44, 'Chile', 'CL', 'CHL', 152, 56, 'NA', '', 'Y'),
(45, 'China', 'CN', 'CHN', 156, 86, 'AS', '', 'Y'),
(46, 'Christmas Island', 'CX', 'CXR', 162, NULL, '', NULL, 'Y'),
(48, 'Colombia', 'CO', 'COL', 170, 57, 'NA', '', 'Y'),
(49, 'Comoros', 'KM', 'COM', 174, 269, 'AF', '', 'Y'),
(50, 'Cook Islands', 'CK', 'COK', 184, 682, '', NULL, 'Y'),
(51, 'Costa Rica', 'CR', 'CRI', 188, 506, 'NA', '', 'Y'),
(52, 'Croatia', 'HR', 'HRV', 191, 385, 'EU', '', 'Y'),
(53, 'Cuba', 'CU', 'CUB', 192, 53, 'NA', '', 'Y'),
(54, 'Cyprus', 'CY', 'CYP', 196, 357, 'EU', '', 'Y'),
(55, 'Czech Republic', 'CZ', 'CZE', 203, 420, 'EU', '', 'Y'),
(56, 'Congo - Kinshasa', 'CD', 'COD', 180, 243, 'AF', '', 'Y'),
(57, 'Denmark', 'DK', 'DNK', 208, 45, 'EU', '', 'Y'),
(58, 'Djibouti', 'DJ', 'DJI', 262, 253, 'AF', '', 'Y'),
(59, 'Dominica', 'DM', 'DMA', 212, 1, 'NA', '', 'Y'),
(60, 'Dominican Republic', 'DO', 'DOM', 214, 1, 'NA', '', 'Y'),
(61, 'East Timor', 'TL', 'TLS', 626, 670, 'AS', '', 'N'),
(62, 'Ecuador', 'EC', 'ECU', 218, 593, 'NA', '', 'Y'),
(63, 'Egypt', 'EG', 'EGY', 818, 20, 'AF', '', 'Y'),
(64, 'El Salvador', 'SV', 'SLV', 222, 503, 'NA', '', 'Y'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 240, 'AF', '', 'Y'),
(66, 'Eritrea', 'ER', 'ERI', 232, 291, 'AF', '', 'Y'),
(67, 'Estonia', 'EE', 'EST', 233, 372, 'EU', '', 'Y'),
(68, 'Ethiopia', 'ET', 'ETH', 231, 251, 'AF', '', 'Y'),
(69, 'Falkland Islands', 'FK', 'FLK', 238, 500, '', NULL, 'Y'),
(70, 'Faroe Islands', 'FO', 'FRO', 234, 298, '', NULL, 'Y'),
(71, 'Fiji', 'FJ', 'FJI', 242, 679, '', NULL, 'Y'),
(72, 'Finland', 'FI', 'FIN', 246, 358, 'EU', '', 'Y'),
(73, 'France', 'FR', 'FRA', 250, 33, 'EU', '', 'Y'),
(74, 'French Guiana', 'GF', 'GUF', 254, 594, '', NULL, 'Y'),
(75, 'French Polynesia', 'PF', 'PYF', 258, 689, '', NULL, 'Y'),
(76, 'French Southern Territories', 'TF', 'ATF', 260, NULL, '', NULL, 'Y'),
(77, 'Gabon', 'GA', 'GAB', 266, 241, 'AF', '', 'Y'),
(78, 'Gambia', 'GM', 'GMB', 270, 220, 'AF', '', 'Y'),
(79, 'Georgia', 'GE', 'GEO', 268, 995, 'EU', '', 'Y'),
(80, 'Germany', 'DE', 'DEU', 276, 49, 'EU', '', 'Y'),
(81, 'Ghana', 'GH', 'GHA', 288, 233, 'AF', '', 'Y'),
(82, 'Gibraltar', 'GI', 'GIB', 292, 350, '', NULL, 'Y'),
(83, 'Greece', 'GR', 'GRC', 300, 30, 'EU', '', 'Y'),
(84, 'Greenland', 'GL', 'GRL', 304, 299, '', NULL, 'Y'),
(85, 'Grenada', 'GD', 'GRD', 308, 1, 'NA', '', 'Y'),
(86, 'Guadeloupe', 'GP', 'GLP', 312, 590, '', NULL, 'Y'),
(87, 'Guam', 'GU', 'GUM', 316, 1, '', NULL, 'Y'),
(88, 'Guatemala', 'GT', 'GTM', 320, 502, 'NA', '', 'Y'),
(89, 'Guinea', 'GN', 'GIN', 324, 224, '', NULL, 'Y'),
(90, 'Guinea-Bissau', 'GW', 'GNB', 624, 245, '', NULL, 'Y'),
(91, 'Guyana', 'GY', 'GUY', 328, 592, 'NA', '', 'Y'),
(92, 'Haiti', 'HT', 'HTI', 332, 509, 'NA', '', 'Y'),
(93, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, NULL, '', NULL, 'Y'),
(94, 'Honduras', 'HN', 'HND', 340, 504, 'NA', '', 'Y'),
(95, 'Hong Kong', 'HK', 'HKG', 344, 852, 'AS', NULL, 'Y'),
(96, 'Hungary', 'HU', 'HUN', 348, 36, 'EU', '', 'Y'),
(97, 'Iceland', 'IS', 'ISL', 352, 354, 'EU', '', 'Y'),
(98, 'India', 'IN', 'IND', 356, 91, 'AS', '', 'Y'),
(99, 'Indonesia', 'ID', 'IDN', 360, 62, 'AS', '', 'Y'),
(100, 'Iran', 'IR', 'IRN', 364, 98, 'AS', '', 'Y'),
(101, 'Iraq', 'IQ', 'IRQ', 368, 964, 'AS', '', 'Y'),
(102, 'Ireland', 'IE', 'IRL', 372, 353, 'EU', '', 'Y'),
(103, 'Israel', 'IL', 'ISR', 376, 972, 'AS', '', 'Y'),
(104, 'Italy', 'IT', 'ITA', 380, 39, 'EU', '', 'Y'),
(105, 'Côte d’Ivoire', 'CI', 'CIV', 384, 225, 'AF', '', 'Y'),
(106, 'Jamaica', 'JM', 'JAM', 388, 1, 'NA', '', 'Y'),
(107, 'Japan', 'JP', 'JPN', 392, 81, 'AS', '', 'Y'),
(108, 'Jordan', 'JO', 'JOR', 400, 962, 'AS', '', 'Y'),
(109, 'Kazakhstan', 'KZ', 'KAZ', 398, 7, 'AS', '', 'Y'),
(110, 'Kenya', 'KE', 'KEN', 404, 254, 'NA', '', 'Y'),
(111, 'Kiribati', 'KI', 'KIR', 296, 686, '', NULL, 'Y'),
(112, 'Kuwait', 'KW', 'KWT', 414, 965, 'AS', '', 'Y'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 417, 996, 'AS', '', 'Y'),
(114, 'Laos', 'LA', 'LAO', 418, 856, 'AS', '', 'Y'),
(115, 'Latvia', 'LV', 'LVA', 428, 371, 'EU', '', 'Y'),
(116, 'Lebanon', 'LB', 'LBN', 422, 961, 'AS', '', 'Y'),
(117, 'Lesotho', 'LS', 'LSO', 426, 266, 'AF', '', 'Y'),
(118, 'Liberia', 'LR', 'LBR', 430, 231, 'AF', '', 'Y'),
(119, 'Libya', 'LY', 'LBY', 434, 218, 'AF', '', 'Y'),
(120, 'Liechtenstein', 'LI', 'LIE', 438, 423, 'EU', '', 'Y'),
(121, 'Lithuania', 'LT', 'LTU', 440, 370, 'EU', '', 'Y'),
(122, 'Luxembourg', 'LU', 'LUX', 442, 352, 'EU', '', 'Y'),
(123, 'Macau', 'MO', 'MAC', 446, 853, '', NULL, 'Y'),
(124, 'Macedonia', 'MK', 'MKD', 807, 389, 'EU', '', 'Y'),
(125, 'Madagascar', 'MG', 'MDG', 450, 261, 'AF', '', 'Y'),
(126, 'Malawi', 'MW', 'MWI', 454, 265, 'AF', '', 'Y'),
(127, 'Malaysia', 'MY', 'MYS', 458, 60, 'AS', '', 'Y'),
(128, 'Maldives', 'MV', 'MDV', 462, 960, 'AS', '', 'Y'),
(129, 'Mali', 'ML', 'MLI', 466, 223, 'AF', '', 'Y'),
(130, 'Malta', 'MT', 'MLT', 470, 356, 'EU', '', 'Y'),
(131, 'Marshall Islands', 'MH', 'MHL', 584, 692, '', NULL, 'Y'),
(132, 'Martinique', 'MQ', 'MTQ', 474, 596, '', NULL, 'Y'),
(133, 'Mauritania', 'MR', 'MRT', 478, 222, 'AF', '', 'Y'),
(134, 'Mauritius', 'MU', 'MUS', 480, 230, 'AF', '', 'Y'),
(135, 'Mayotte', 'YT', 'MYT', 175, 262, '', NULL, 'Y'),
(136, 'Mexico', 'MX', 'MEX', 484, 52, 'NA', '', 'Y'),
(137, 'Micronesia', 'FM', 'FSM', 583, 691, '', NULL, 'Y'),
(138, 'Moldova', 'MD', 'MDA', 498, 373, 'EU', '', 'Y'),
(139, 'Monaco', 'MC', 'MCO', 492, 377, 'EU', '', 'Y'),
(140, 'Mongolia', 'MN', 'MNG', 496, 976, 'AS', '', 'Y'),
(141, 'Montserrat', 'MS', 'MSR', 500, 1, '', NULL, 'Y'),
(142, 'Morocco', 'MA', 'MAR', 504, 212, 'AF', '', 'Y'),
(143, 'Mozambique', 'MZ', 'MOZ', 508, 258, 'AF', '', 'Y'),
(144, 'Myanmar', 'MM', 'MMR', 104, 95, 'AS', '', 'Y'),
(145, 'Namibia', 'NA', 'NAM', 516, 264, 'AF', '', 'Y'),
(146, 'Nauru', 'NR', 'NRU', 520, 674, '', NULL, 'Y'),
(147, 'Nepal', 'NP', 'NPL', 524, 977, 'AS', '', 'Y'),
(148, 'Netherlands', 'NL', 'NLD', 528, 31, 'EU', '', 'Y'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 530, 599, 'EU', '', 'Y'),
(150, 'New Caledonia', 'NC', 'NCL', 540, 687, '', NULL, 'Y'),
(151, 'New Zealand', 'NZ', 'NZL', 554, 64, '', NULL, 'Y'),
(152, 'Nicaragua', 'NI', 'NIC', 558, 505, 'NA', '', 'Y'),
(153, 'Niger', 'NE', 'NER', 562, 227, 'AF', '', 'Y'),
(154, 'Nigeria', 'NG', 'NGA', 566, 234, 'AF', '', 'Y'),
(155, 'Niue', 'NU', 'NIU', 570, 683, '', NULL, 'Y'),
(156, 'Norfolk Island', 'NF', 'NFK', 574, 672, '', NULL, 'Y'),
(157, 'North Korea', 'KP', 'PRK', 408, 850, 'AS', '', 'Y'),
(158, 'Northern Mariana Islands', 'MP', 'MNP', 580, 1, '', NULL, 'Y'),
(159, 'Norway', 'NO', 'NOR', 578, 47, 'EU', '', 'Y'),
(160, 'Oman', 'OM', 'OMN', 512, 968, 'AS', '', 'Y'),
(161, 'Pakistan', 'PK', 'PAK', 586, 92, 'AS', '', 'Y'),
(162, 'Palau', 'PW', 'PLW', 585, 680, '', NULL, 'Y'),
(163, 'Palestine', 'PS', 'PSE', 275, 970, '', NULL, 'Y'),
(164, 'Panama', 'PA', 'PAN', 591, 507, 'NA', '', 'Y'),
(165, 'Papua New Guinea', 'PG', 'PNG', 598, 675, '', NULL, 'Y'),
(166, 'Paraguay', 'PY', 'PRY', 600, 595, 'NA', '', 'Y'),
(167, 'Peru', 'PE', 'PER', 604, 51, 'NA', '', 'Y'),
(168, 'Philippines', 'PH', 'PHL', 608, 63, 'AS', '', 'Y'),
(169, 'Pitcairn', 'PN', 'PCN', 612, NULL, '', NULL, 'Y'),
(170, 'Poland', 'PL', 'POL', 616, 48, 'EU', '', 'Y'),
(171, 'Portugal', 'PT', 'PRT', 620, 351, 'EU', '', 'Y'),
(172, 'Puerto Rico', 'PR', 'PRI', 630, 1, '', NULL, 'Y'),
(173, 'Qatar', 'QA', 'QAT', 634, 974, 'AS', '', 'Y'),
(174, 'Congo - Brazzaville', 'CG', 'COG', 178, 242, 'AF', '', 'Y'),
(175, 'Reunion', 'RE', 'REU', 638, 262, '', NULL, 'Y'),
(176, 'Romania', 'RO', 'ROU', 642, 40, 'EU', '', 'Y'),
(177, 'Russia', 'RU', 'RUS', 643, 7, 'AS', '', 'Y'),
(178, 'Rwanda', 'RW', 'RWA', 646, 250, 'AF', '', 'Y'),
(179, 'Saint Helena', 'SH', 'SHN', 654, 290, '', NULL, 'Y'),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 1, 'NA', '', 'Y'),
(181, 'Saint Lucia', 'LC', 'LCA', 662, 1, 'NA', '', 'Y'),
(182, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 508, '', NULL, 'Y'),
(183, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 1, '', NULL, 'Y'),
(184, 'Samoa', 'WS', 'WSM', 882, 685, '', NULL, 'Y'),
(185, 'San Marino', 'SM', 'SMR', 674, 378, 'EU', '', 'Y'),
(186, 'Sao Tome and Principe', 'ST', 'STP', 678, 239, 'AF', '', 'Y'),
(187, 'Saudi Arabia', 'SA', 'SAU', 682, 966, 'AS', '', 'Y'),
(188, 'Senegal', 'SN', 'SEN', 686, 221, 'AF', '', 'Y'),
(189, 'Serbia and Montenegro', 'CS', 'SCG', 891, NULL, 'EU', '', 'Y'),
(190, 'Seychelles', 'SC', 'SYC', 690, 248, 'AF', '', 'Y'),
(191, 'Sierra Leone', 'SL', 'SLE', 694, 232, 'AF', '', 'Y'),
(192, 'Singapore', 'SG', 'SGP', 702, 65, 'AS', NULL, 'Y'),
(193, 'Slovakia', 'SK', 'SVK', 703, 421, 'EU', '', 'Y'),
(194, 'Slovenia', 'SI', 'SVN', 705, 386, 'EU', '', 'Y'),
(195, 'Solomon Islands', 'SB', 'SLB', 90, 677, '', NULL, 'Y'),
(196, 'Somalia', 'SO', 'SOM', 706, 252, 'AF', '', 'Y'),
(197, 'South Africa', 'ZA', 'ZAF', 710, 27, 'AF', '', 'Y'),
(198, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, NULL, '', NULL, 'Y'),
(199, 'South Korea', 'KR', 'KOR', 410, 82, 'AS', '', 'Y'),
(200, 'Spain', 'ES', 'ESP', 724, 34, 'EU', '', 'Y'),
(201, 'Sri Lanka', 'LK', 'LKA', 144, 94, 'AS', '', 'Y'),
(202, 'Sudan', 'SD', 'SDN', 736, 249, 'AF', '', 'Y'),
(203, 'Suriname', 'SR', 'SUR', 740, 597, 'NA', '', 'Y'),
(204, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, NULL, '', NULL, 'Y'),
(205, 'Swaziland', 'SZ', 'SWZ', 748, 268, 'AF', '', 'Y'),
(206, 'Sweden', 'SE', 'SWE', 752, 46, 'EU', '', 'Y'),
(207, 'Switzerland', 'CH', 'CHE', 756, 41, 'EU', '', 'Y'),
(208, 'Syria', 'SY', 'SYR', 760, 963, 'AS', '', 'Y'),
(209, 'Taiwan', 'TW', 'TWN', 158, 886, 'AS', '', 'Y'),
(210, 'Tajikistan', 'TJ', 'TJK', 762, 992, 'AS', '', 'Y'),
(211, 'Tanzania', 'TZ', 'TZA', 834, 255, 'AF', '', 'Y'),
(212, 'Thailand', 'TH', 'THA', 764, 66, 'AS', '', 'Y'),
(213, 'Togo', 'TG', 'TGO', 768, 228, 'AF', '', 'Y'),
(214, 'Tokelau', 'TK', 'TKL', 772, 690, '', NULL, 'Y'),
(215, 'Tonga', 'TO', 'TON', 776, 676, '', NULL, 'Y'),
(216, 'Trinidad and Tobago', 'TT', 'TTO', 780, 1, 'NA', '', 'Y'),
(217, 'Tunisia', 'TN', 'TUN', 788, 216, 'NA', '', 'Y'),
(218, 'Turkey', 'TR', 'TUR', 792, 90, 'AS', '', 'Y'),
(219, 'Turkmenistan', 'TM', 'TKM', 795, 993, 'AS', '', 'Y'),
(220, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 1, '', NULL, 'Y'),
(221, 'Tuvalu', 'TV', 'TUV', 798, 688, '', NULL, 'Y'),
(222, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 1, '', NULL, 'Y'),
(223, 'Uganda', 'UG', 'UGA', 800, 256, 'AF', '', 'Y'),
(224, 'Ukraine', 'UA', 'UKR', 804, 380, 'EU', '', 'Y'),
(225, 'United Arab Emirates', 'AE', 'ARE', 784, 971, 'AS', '', 'Y'),
(226, 'United Kingdom', 'GB', 'GBR', 826, 44, 'EU', NULL, 'Y'),
(227, 'United States', 'US', 'USA', 840, 1, 'NA', NULL, 'Y'),
(229, 'Uruguay', 'UY', 'URY', 858, 598, 'NA', '', 'Y'),
(230, 'Uzbekistan', 'UZ', 'UZB', 860, 998, 'AS', '', 'Y'),
(231, 'Vanuatu', 'VU', 'VUT', 548, 678, 'EU', '', 'Y'),
(232, 'Vatican', 'VA', 'VAT', 336, 39, '', NULL, 'Y'),
(233, 'Venezuela', 'VE', 'VEN', 862, 58, 'NA', '', 'Y'),
(234, 'Vietnam', 'VN', 'VNM', 704, 84, 'AS', 'VND', 'Y'),
(235, 'Wallis and Futuna', 'WF', 'WLF', 876, 681, '', NULL, 'Y'),
(236, 'Western Sahara', 'EH', 'ESH', 732, NULL, '', NULL, 'Y'),
(237, 'Yemen', 'YE', 'YEM', 887, 967, 'AS', '', 'Y'),
(238, 'Zambia', 'ZM', 'ZMB', 894, 260, 'AF', '', 'Y'),
(239, 'Zimbabwe', 'ZW', 'ZWE', 716, 263, 'AF', '', 'Y'),
(240, 'ÅLand Islands', 'AX', 'ALA', NULL, NULL, ' ', NULL, 'Y'),
(241, 'Saint BarthÉLemy', 'BL', 'BLM', NULL, 590, '', NULL, 'Y'),
(242, 'Bonaire, Sint Eustatius And Saba', 'BQ', 'BES', NULL, NULL, '', NULL, 'N'),
(243, 'CuraÇAo', 'CW', 'CW', NULL, NULL, '', NULL, 'Y'),
(244, 'Guernsey', 'GG', 'GGY', NULL, NULL, '', NULL, 'Y'),
(245, 'Isle Of Man', 'IM', 'IMN', NULL, NULL, '', NULL, 'Y'),
(246, 'Jersey', 'JE', 'JEY', NULL, NULL, '', NULL, 'Y'),
(247, 'Montenegro', 'ME', 'MNE', 0, 382, 'EU', '', 'Y'),
(248, 'Saint Martin (French Part)', 'MF', 'MAF', NULL, 590, '', NULL, 'Y'),
(249, 'Serbia', 'RS', 'SRB', 0, 381, 'EU', '', 'Y'),
(250, 'South Sudan', 'SS', 'SSD', 0, NULL, 'AF', '', 'Y'),
(251, 'Sint Maarten (Dutch Part)', 'SX', 'SXM', NULL, NULL, '', NULL, 'Y'),
(252, 'Kosovo', 'XK', 'XKX', 0, 381, 'EU', NULL, 'Y'),
(253, 'Ascension Island', 'AC', 'ASC', 247, NULL, 'AF', NULL, 'Y'),
(254, 'Canary Islands', 'IC', NULL, NULL, NULL, '', NULL, 'Y'),
(255, 'Caribbean Netherlands', 'KY', NULL, NULL, 1, '', NULL, 'N'),
(256, 'Ceuta and Melilla', 'TD', 'TCD', NULL, 235, '', NULL, 'Y'),
(257, 'Clipperton Island', 'CC', 'CCK', 166, NULL, '', NULL, 'Y'),
(258, 'Timor-Leste', 'TL', 'TLS', 626, 670, '', NULL, 'Y'),
(259, 'Tristan da Cunha', 'TA', NULL, 290, NULL, '', NULL, 'Y'),
(260, 'U.S. Outlying Islands', 'UM', 'UMI', 581, NULL, '', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Currency ID',
  `currency_title` varchar(255) NOT NULL COMMENT 'Currency title',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency code',
  `currency_symbol_left` varchar(8) NOT NULL DEFAULT '' COMMENT 'Left symbol',
  `currency_symbol_right` varchar(8) NOT NULL DEFAULT '' COMMENT 'Right symbol',
  `currency_value` decimal(15,8) NOT NULL COMMENT 'Currency rated by USD',
  `currency_active` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'Active Y or N',
  `currency_date_modified` int(11) NOT NULL DEFAULT '0' COMMENT 'Last updated date',
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_title`, `currency_code`, `currency_symbol_left`, `currency_symbol_right`, `currency_value`, `currency_active`, `currency_date_modified`) VALUES
(1, 'United Arab Emirates Dirham', 'AED', '', '', '3.67301400', 'Y', 1468897207),
(2, 'Afghan Afghani', 'AFN', '', '', '68.69999700', 'Y', 1468897207),
(3, 'Albanian Lek', 'ALL', '', '', '122.55000300', 'Y', 1468897207),
(4, 'Armenian Dram', 'AMD', '', '', '476.45001200', 'Y', 1468897207),
(5, 'Netherlands Antillean Guilder', 'ANG', '', '', '1.77031700', 'Y', 1468897207),
(6, 'Angolan Kwanza', 'AOA', '', '', '165.06100500', 'Y', 1468897207),
(7, 'Argentine Peso', 'ARS', '', '', '14.87997300', 'Y', 1468897207),
(8, 'Australian Dollar', 'AUD', '', '', '1.32859800', 'Y', 1468897207),
(9, 'Aruban Florin', 'AWG', '', '', '1.79000000', 'Y', 1468897207),
(10, 'Azerbaijani Manat', 'AZN', '', '', '1.55949400', 'Y', 1468897207),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', '', '', '1.76859800', 'Y', 1468897207),
(12, 'Barbadian Dollar', 'BBD', '', '', '2.00000000', 'Y', 1468897207),
(13, 'Bangladeshi Taka', 'BDT', '', '', '78.37999700', 'Y', 1468897207),
(14, 'Bulgarian Lev', 'BGN', '', '', '1.76950000', 'Y', 1468897207),
(15, 'Bahraini Dinar', 'BHD', '', '', '0.37740100', 'Y', 1468897207),
(16, 'Burundian Franc', 'BIF', '', '', '1642.75000000', 'Y', 1468897207),
(17, 'Bermudan Dollar', 'BMD', '', '', '1.00005000', 'Y', 1468897207),
(18, 'Brunei Dollar', 'BND', '', '', '1.34849900', 'Y', 1468897207),
(19, 'Bolivian Boliviano', 'BOB', '', '', '6.80984700', 'Y', 1468897207),
(20, 'Brazilian Real', 'BRL', '', '', '3.25309900', 'Y', 1468897207),
(21, 'Bahamian Dollar', 'BSD', '', '', '1.00000000', 'Y', 1468897207),
(22, 'Bitcoin', 'BTC', '', '', '0.00148400', 'Y', 1468897207),
(23, 'Bhutanese Ngultrum', 'BTN', '', '', '67.05000300', 'Y', 1468897207),
(24, 'Botswanan Pula', 'BWP', '', '', '10.72460200', 'Y', 1468897207),
(25, 'Belarusian Ruble', 'BYR', '', '', '20020.00000000', 'Y', 1468897207),
(26, 'Belize Dollar', 'BZD', '', '', '1.98036600', 'Y', 1468897207),
(27, 'Canadian Dollar', 'CAD', '', '', '1.29833000', 'Y', 1468897207),
(28, 'Congolese Franc', 'CDF', '', '', '937.00005100', 'Y', 1468897207),
(29, 'Swiss Franc', 'CHF', '', '', '0.98261000', 'Y', 1468897207),
(30, 'Chilean Unit of Account (UF)', 'CLF', '', '', '0.02459000', 'Y', 1468897207),
(31, 'Chilean Peso', 'CLP', '', '', '647.90002400', 'Y', 1468897207),
(32, 'Chinese Yuan', 'CNY', '', '', '6.69697400', 'Y', 1468897207),
(33, 'Colombian Peso', 'COP', '', '', '2923.00000000', 'Y', 1468897207),
(34, 'Costa Rican Colón', 'CRC', '', '', '541.40002400', 'Y', 1468897207),
(35, 'Cuban Convertible Peso', 'CUC', '', '', '0.99500000', 'Y', 1468897207),
(36, 'Cuban Peso', 'CUP', '', '', '1.00023600', 'Y', 1468897207),
(37, 'Cape Verdean Escudo', 'CVE', '', '', '99.69999700', 'Y', 1468897207),
(38, 'Czech Republic Koruna', 'CZK', '', '', '24.39800100', 'Y', 1468897207),
(39, 'Djiboutian Franc', 'DJF', '', '', '175.80000300', 'Y', 1468897207),
(40, 'Danish Krone', 'DKK', '', '', '6.71717000', 'Y', 1468897207),
(41, 'Dominican Peso', 'DOP', '', '', '45.79999900', 'Y', 1468897207),
(42, 'Algerian Dinar', 'DZD', '', '', '110.30000300', 'Y', 1468897207),
(43, 'Estonian Kroon', 'EEK', '', '', '14.13102800', 'Y', 1468897207),
(44, 'Egyptian Pound', 'EGP', '', '', '8.87989900', 'Y', 1468897207),
(45, 'Eritrean Nakfa', 'ERN', '', '', '15.47957400', 'Y', 1468897207),
(46, 'Ethiopian Birr', 'ETB', '', '', '21.84439600', 'Y', 1468897207),
(47, 'Euro', 'EUR', '', '', '0.90279700', 'Y', 1468897207),
(48, 'Fijian Dollar', 'FJD', '', '', '2.04950200', 'Y', 1468897207),
(49, 'Falkland Islands Pound', 'FKP', '', '', '0.75419700', 'Y', 1468897207),
(50, 'British Pound Sterling', 'GBP', '', '', '0.75634000', 'Y', 1468897207),
(51, 'Georgian Lari', 'GEL', '', '', '2.34009700', 'Y', 1468897207),
(52, 'Guernsey Pound', 'GGP', '', '', '0.75639900', 'Y', 1468897207),
(53, 'Ghanaian Cedi', 'GHS', '', '', '3.95496900', 'Y', 1468897207),
(54, 'Gibraltar Pound', 'GIP', '', '', '0.75440400', 'Y', 1468897207),
(55, 'Gambian Dalasi', 'GMD', '', '', '42.29000100', 'Y', 1468897207),
(56, 'Guinean Franc', 'GNF', '', '', '8815.99985500', 'Y', 1468897207),
(57, 'Guatemalan Quetzal', 'GTQ', '', '', '7.59950200', 'Y', 1468897207),
(58, 'Guyanaese Dollar', 'GYD', '', '', '204.35000600', 'Y', 1468897207),
(59, 'Hong Kong Dollar', 'HKD', '', '', '7.80000000', 'Y', 1468897207),
(60, 'Honduran Lempira', 'HNL', '', '', '22.75016300', 'Y', 1468897207),
(61, 'Croatian Kuna', 'HRK', '', '', '6.73110400', 'Y', 1468897207),
(62, 'Haitian Gourde', 'HTG', '', '', '63.25999800', 'Y', 1468897207),
(63, 'Hungarian Forint', 'HUF', '', '', '283.95001200', 'Y', 1468897207),
(64, 'Indonesian Rupiah', 'IDR', '', '', '13054.00000000', 'Y', 1468897207),
(65, 'Israeli New Sheqel', 'ILS', '', '', '3.85229700', 'Y', 1468897207),
(66, 'Manx pound', 'IMP', '', '', '0.75639900', 'Y', 1468897207),
(67, 'Indian Rupee', 'INR', '', '', '67.13999900', 'Y', 1468897207),
(68, 'Iraqi Dinar', 'IQD', '', '', '1169.40002400', 'Y', 1468897207),
(69, 'Iranian Rial', 'IRR', '', '', '30075.00002000', 'Y', 1468897207),
(70, 'Icelandic Króna', 'ISK', '', '', '121.73999800', 'Y', 1468897207),
(71, 'Jersey Pound', 'JEP', '', '', '0.75639900', 'Y', 1468897207),
(72, 'Jamaican Dollar', 'JMD', '', '', '126.19999700', 'Y', 1468897207),
(73, 'Jordanian Dinar', 'JOD', '', '', '0.70750100', 'Y', 1468897207),
(74, 'Japanese Yen', 'JPY', '', '', '105.91500100', 'Y', 1468897207),
(75, 'Kenyan Shilling', 'KES', '', '', '101.40000200', 'Y', 1468897207),
(76, 'Kyrgystani Som', 'KGS', '', '', '67.19300100', 'Y', 1468897207),
(77, 'Cambodian Riel', 'KHR', '', '', '4034.99981900', 'Y', 1468897207),
(78, 'Comorian Franc', 'KMF', '', '', '425.25039900', 'Y', 1468897207),
(79, 'North Korean Won', 'KPW', '', '', '900.00004900', 'Y', 1468897207),
(80, 'South Korean Won', 'KRW', '', '', '1139.19995100', 'Y', 1468897207),
(81, 'Kuwaiti Dinar', 'KWD', '', '', '0.30195800', 'Y', 1468897207),
(82, 'Cayman Islands Dollar', 'KYD', '', '', '0.82028300', 'Y', 1468897207),
(83, 'Kazakhstani Tenge', 'KZT', '', '', '339.10000600', 'Y', 1468897207),
(84, 'Laotian Kip', 'LAK', '', '', '8080.00014800', 'Y', 1468897207),
(85, 'Lebanese Pound', 'LBP', '', '', '1504.40002400', 'Y', 1468897207),
(86, 'Sri Lankan Rupee', 'LKR', '', '', '145.74991900', 'Y', 1468897207),
(87, 'Liberian Dollar', 'LRD', '', '', '89.99970900', 'Y', 1468897207),
(88, 'Lesotho Loti', 'LSL', '', '', '14.31990500', 'Y', 1468897207),
(89, 'Lithuanian Litas', 'LTL', '', '', '3.04870100', 'Y', 1468897207),
(90, 'Latvian Lats', 'LVL', '', '', '0.62055000', 'Y', 1468897207),
(91, 'Libyan Dinar', 'LYD', '', '', '1.38799800', 'Y', 1468897207),
(92, 'Moroccan Dirham', 'MAD', '', '', '9.78030600', 'Y', 1468897207),
(93, 'Moldovan Leu', 'MDL', '', '', '19.73962100', 'Y', 1468897207),
(94, 'Malagasy Ariary', 'MGA', '', '', '3027.99996400', 'Y', 1468897207),
(95, 'Macedonian Denar', 'MKD', '', '', '55.40000200', 'Y', 1468897207),
(96, 'Myanma Kyat', 'MMK', '', '', '1181.99982800', 'Y', 1468897207),
(97, 'Mongolian Tugrik', 'MNT', '', '', '2010.00017400', 'Y', 1468897207),
(98, 'Macanese Pataca', 'MOP', '', '', '7.98700600', 'Y', 1468897207),
(99, 'Mauritanian Ouguiya', 'MRO', '', '', '349.99946800', 'Y', 1468897207),
(100, 'Mauritian Rupee', 'MUR', '', '', '35.27999900', 'Y', 1468897207),
(101, 'Maldivian Rufiyaa', 'MVR', '', '', '15.09842100', 'Y', 1468897207),
(102, 'Malawian Kwacha', 'MWK', '', '', '706.45001200', 'Y', 1468897207),
(103, 'Mexican Peso', 'MXN', '', '', '18.42350300', 'Y', 1468897207),
(104, 'Malaysian Ringgit', 'MYR', '', '', '3.98339800', 'Y', 1468897207),
(105, 'Mozambican Metical', 'MZN', '', '', '65.62000300', 'Y', 1468897207),
(106, 'Namibian Dollar', 'NAD', '', '', '14.30703100', 'Y', 1468897207),
(107, 'Nigerian Naira', 'NGN', '', '', '295.00008700', 'Y', 1468897207),
(108, 'Nicaraguan Córdoba', 'NIO', '', '', '28.68239800', 'Y', 1468897207),
(109, 'Norwegian Krone', 'NOK', '', '', '8.45213000', 'Y', 1468897207),
(110, 'Nepalese Rupee', 'NPR', '', '', '107.09999800', 'Y', 1468897207),
(111, 'New Zealand Dollar', 'NZD', '', '', '1.42150300', 'Y', 1468897207),
(112, 'Omani Rial', 'OMR', '', '', '0.38501600', 'Y', 1468897207),
(113, 'Panamanian Balboa', 'PAB', '', '', '1.00364500', 'Y', 1468897207),
(114, 'Peruvian Nuevo Sol', 'PEN', '', '', '3.27702100', 'Y', 1468897207),
(115, 'Papua New Guinean Kina', 'PGK', '', '', '3.16209800', 'Y', 1468897207),
(116, 'Philippine Peso', 'PHP', '', '', '46.81973600', 'Y', 1468897207),
(117, 'Pakistani Rupee', 'PKR', '', '', '104.80000300', 'Y', 1468897207),
(118, 'Polish Zloty', 'PLN', '', '', '3.94309400', 'Y', 1468897207),
(119, 'Paraguayan Guarani', 'PYG', '', '', '5536.00018400', 'Y', 1468897207),
(120, 'Qatari Rial', 'QAR', '', '', '3.64140200', 'Y', 1468897207),
(121, 'Romanian Leu', 'RON', '', '', '4.02870000', 'Y', 1468897207),
(122, 'Serbian Dinar', 'RSD', '', '', '111.05460400', 'Y', 1468897207),
(123, 'Russian Ruble', 'RUB', '', '', '62.89160200', 'Y', 1468897207),
(124, 'Rwandan Franc', 'RWF', '', '', '780.40002400', 'Y', 1468897207),
(125, 'Saudi Riyal', 'SAR', '', '', '3.74999400', 'Y', 1468897207),
(126, 'Solomon Islands Dollar', 'SBD', '', '', '7.87150100', 'Y', 1468897207),
(127, 'Seychellois Rupee', 'SCR', '', '', '13.21598600', 'Y', 1468897207),
(128, 'Sudanese Pound', 'SDG', '', '', '6.07967500', 'Y', 1468897207),
(129, 'Swedish Krona', 'SEK', '', '', '8.55968000', 'Y', 1468897207),
(130, 'Singapore Dollar', 'SGD', '', '', '1.45000000', 'Y', 1468897207),
(131, 'Saint Helena Pound', 'SHP', '', '', '0.75439800', 'Y', 1468897207),
(132, 'Sierra Leonean Leone', 'SLL', '', '', '5498.00029800', 'Y', 1468897207),
(133, 'Somali Shilling', 'SOS', '', '', '540.00011400', 'Y', 1468897207),
(134, 'Surinamese Dollar', 'SRD', '', '', '7.03982400', 'Y', 1468897207),
(135, 'São Tomé and Príncipe Dobra', 'STD', '', '', '22175.00000000', 'Y', 1468897207),
(136, 'Salvadoran Colón', 'SVC', '', '', '8.72198200', 'Y', 1468897207),
(137, 'Syrian Pound', 'SYP', '', '', '215.85000600', 'Y', 1468897207),
(138, 'Swazi Lilangeni', 'SZL', '', '', '14.33339900', 'Y', 1468897207),
(139, 'Thai Baht', 'THB', '', '', '34.97000100', 'Y', 1468897207),
(140, 'Tajikistani Somoni', 'TJS', '', '', '7.86750000', 'Y', 1468897207),
(141, 'Turkmenistani Manat', 'TMT', '', '', '3.41000000', 'Y', 1468897207),
(142, 'Tunisian Dinar', 'TND', '', '', '2.20996100', 'Y', 1468897207),
(143, 'Tongan Paʻanga', 'TOP', '', '', '2.25080200', 'Y', 1468897207),
(144, 'Turkish Lira', 'TRY', '', '', '2.98340100', 'Y', 1468897207),
(145, 'Trinidad and Tobago Dollar', 'TTD', '', '', '6.66978400', 'Y', 1468897207),
(146, 'New Taiwan Dollar', 'TWD', '', '', '32.00600100', 'Y', 1468897207),
(147, 'Tanzanian Shilling', 'TZS', '', '', '2185.00052600', 'Y', 1468897207),
(148, 'Ukrainian Hryvnia', 'UAH', '', '', '24.83499900', 'Y', 1468897207),
(149, 'Ugandan Shilling', 'UGX', '', '', '3356.99982500', 'Y', 1468897207),
(150, 'United States Dollar', 'USD', '', '', '1.00000000', 'Y', 1468897207),
(151, 'Uruguayan Peso', 'UYU', '', '', '30.17012300', 'Y', 1468897207),
(152, 'Uzbekistan Som', 'UZS', '', '', '2944.99984400', 'Y', 1468897207),
(153, 'Venezuelan Bolívar Fuerte', 'VEF', '', '', '9.97480400', 'Y', 1468897207),
(154, 'Vietnamese Dong', 'VND', '', '', '22300.00000000', 'Y', 1468897207),
(155, 'Vanuatu Vatu', 'VUV', '', '', '105.65000200', 'Y', 1468897207),
(156, 'Samoan Tala', 'WST', '', '', '2.55500700', 'Y', 1468897207),
(157, 'CFA Franc BEAC', 'XAF', '', '', '591.82000700', 'Y', 1468897207),
(158, 'Silver (troy ounce)', 'XAG', '', '', '0.05018800', 'Y', 1468897207),
(159, 'Gold (troy ounce)', 'XAU', '', '', '0.00075400', 'Y', 1468897207),
(160, 'East Caribbean Dollar', 'XCD', '', '', '2.70033800', 'Y', 1468897207),
(161, 'Special Drawing Rights', 'XDR', '', '', '0.72003000', 'Y', 1468897207),
(162, 'CFA Franc BCEAO', 'XOF', '', '', '593.20001200', 'Y', 1468897207),
(163, 'CFP Franc', 'XPF', '', '', '107.37999700', 'Y', 1468897207),
(164, 'Yemeni Rial', 'YER', '', '', '249.94999700', 'Y', 1468897207),
(165, 'South African Rand', 'ZAR', '', '', '14.25801900', 'Y', 1468897207),
(166, 'Zambian Kwacha (pre-2013)', 'ZMK', '', '', '5156.09958700', 'Y', 1468897207),
(167, 'Zambian Kwacha', 'ZMW', '', '', '9.87998600', 'Y', 1468897207),
(168, 'Zimbabwean Dollar', 'ZWL', '', '', '322.35501100', 'Y', 1468897207);

-- --------------------------------------------------------

--
-- Table structure for table `email_unsubscribe`
--

DROP TABLE IF EXISTS `email_unsubscribe`;
CREATE TABLE IF NOT EXISTS `email_unsubscribe` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id_insert` bigint(20) DEFAULT NULL COMMENT 'User ID',
  `site_ids` varchar(255) DEFAULT NULL,
  `bounce` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '"Y" is YES,"N" is NO',
  `spamreport` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '"Y" is YES,"N" is NO',
  `dropped` int(5) DEFAULT '0',
  `dropped_reason` text,
  `note` text,
  `email_insert_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Email creation time',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_unsubscribe`
--

INSERT INTO `email_unsubscribe` (`email`, `user_id_insert`, `site_ids`, `bounce`, `spamreport`, `dropped`, `dropped_reason`, `note`, `email_insert_time`) VALUES
('dang123@test.com', 2, NULL, 'Y', 'N', 0, NULL, NULL, 0),
('haidan123g@mobcec.com', 2, '', 'Y', 'Y', 0, '', '', 0),
('haidan444g@mobcec.com', 2, '', 'Y', 'N', 0, '', '', 0),
('haidang1@mobcec.com', NULL, '', 'N', 'N', 0, '', '', 0),
('haidang555@mobcec.com', 2, '', 'N', 'Y', 0, '', '', 0),
('haidang678@mobcec.com', 2, '', 'N', 'N', 0, '', '', 0),
('huuthinh1@bincg.com', 2, '49', 'N', 'N', 0, '', '', 1680063236),
('jdvdfvdfvade.q@gisgl.com', NULL, NULL, 'Y', 'N', 0, NULL, NULL, 1686736996),
('nancy.mburu@hotmail.com', NULL, NULL, 'Y', 'N', 0, NULL, NULL, 1686736996),
('njb@gmail.com', NULL, NULL, 'Y', 'N', 0, NULL, NULL, 1686736996),
('rhesfbdv@gmail.com', NULL, NULL, 'Y', 'N', 0, NULL, NULL, 1686736996),
('testaddmail@mobcec.com', 2, '', 'N', 'N', 0, '', '', 1679975677),
('testtoday@gmail.com', 2, '', 'N', 'N', 0, '', '', 1679975988);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gvcgl_currency`
--

DROP TABLE IF EXISTS `gvcgl_currency`;
CREATE TABLE IF NOT EXISTS `gvcgl_currency` (
  `currency_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Currency ID',
  `currency_title` varchar(255) NOT NULL COMMENT 'Currency title',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency code',
  `currency_symbol_left` varchar(8) NOT NULL DEFAULT '' COMMENT 'Left symbol',
  `currency_symbol_right` varchar(8) NOT NULL DEFAULT '' COMMENT 'Right symbol',
  `currency_value` decimal(15,8) NOT NULL COMMENT 'Currency rated by USD',
  `currency_decimal` int(11) NOT NULL DEFAULT '2',
  `currency_active` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'Active Y or N',
  `currency_date_modified` int(11) NOT NULL DEFAULT '0' COMMENT 'Last updated date',
  `currency_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gvcgl_currency`
--

INSERT INTO `gvcgl_currency` (`currency_id`, `currency_title`, `currency_code`, `currency_symbol_left`, `currency_symbol_right`, `currency_value`, `currency_decimal`, `currency_active`, `currency_date_modified`, `currency_order`) VALUES
(1, 'US Dollar', 'USD', 'US$', '$', '1.00026800', 2, 'Y', 1659629103, 1),
(2, 'Pound Sterling', 'GBP', '£', '', '0.74543400', 2, 'N', 1636790729, 1),
(3, 'Australian Dollar', 'AUD', 'AU$', '', '1.49994800', 2, 'Y', 1678726744, 2),
(4, 'Singapore Dollar', 'SGD', 'SG$', '', '1.34729500', 2, 'Y', 1678726744, 3),
(5, 'Hong Kong Dollar', 'HKD', 'HK$', '', '7.84139700', 2, 'Y', 1678726744, 4),
(6, 'Swiss Franc', 'CHF', 'CHF', '', '0.96059500', 2, 'N', 1586921255, 5),
(8, 'United Arab Emirates Dirham', 'AED', 'AED', '', '3.67310000', 2, 'N', 1639378879, 1),
(9, 'Afghan Afghani', 'AFN', 'AFN', '', '68.69999700', 2, 'N', 1468897207, 1),
(10, 'Albanian Lek', 'ALL', 'ALL', '', '122.55000300', 2, 'N', 1468897207, 1),
(11, 'Armenian Dram', 'AMD', 'AMD', '', '476.45001200', 2, 'N', 1468897207, 1),
(12, 'Netherlands Antillean Guilder', 'ANG', 'ANG', '', '1.77031700', 2, 'N', 1468897207, 1),
(13, 'Angolan Kwanza', 'AOA', 'AOA', '', '165.06100500', 2, 'N', 1468897207, 1),
(14, 'Argentine Peso', 'ARS', 'ARS', '', '14.87997300', 2, 'N', 1468897207, 1),
(15, 'Aruban Florin', 'AWG', 'AWG', '', '1.79000000', 2, 'N', 1468897207, 1),
(16, 'Azerbaijani Manat', 'AZN', 'AZN', '', '1.55949400', 2, 'N', 1468897207, 1),
(17, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'BAM', '', '1.76859800', 2, 'N', 1468897207, 1),
(18, 'Barbadian Dollar', 'BBD', 'BBD', '', '2.00000000', 2, 'N', 1468897207, 1),
(19, 'Bangladeshi Taka', 'BDT', 'BDT', '', '78.37999700', 2, 'N', 1468897207, 1),
(20, 'Bulgarian Lev', 'BGN', 'BGN', '', '1.76950000', 2, 'N', 1468897207, 1),
(21, 'Bahraini Dinar', 'BHD', 'BHD', '', '0.37740100', 2, 'N', 1468897207, 1),
(22, 'Burundian Franc', 'BIF', 'BIF', '', '1642.75000000', 2, 'N', 1468897207, 1),
(23, 'Bermudan Dollar', 'BMD', 'BMD', '', '1.00005000', 2, 'N', 1468897207, 1),
(24, 'Brunei Dollar', 'BND', 'BND', '', '1.34849900', 2, 'N', 1468897207, 1),
(25, 'Bolivian Boliviano', 'BOB', 'BOB', '', '6.80984700', 2, 'N', 1468897207, 1),
(26, 'Brazilian Real', 'BRL', 'BRL', '', '3.25309900', 2, 'N', 1468897207, 1),
(27, 'Bahamian Dollar', 'BSD', 'BSD', '', '1.00000000', 2, 'N', 1468897207, 1),
(28, 'Bitcoin', 'BTC', 'BTC', '', '0.00148400', 2, 'N', 1469087871, 1),
(29, 'Bhutanese Ngultrum', 'BTN', 'BTN', '', '67.05000300', 2, 'N', 1468897207, 1),
(30, 'Botswanan Pula', 'BWP', 'BWP', '', '10.72460200', 2, 'N', 1468897207, 1),
(31, 'Belarusian Ruble', 'BYR', 'BYR', '', '20020.00000000', 2, 'N', 1468897207, 1),
(32, 'Belize Dollar', 'BZD', 'BZD', '', '1.98036600', 2, 'N', 1468897207, 1),
(33, 'Canadian Dollar', 'CAD', 'CAD', '', '1.29833000', 2, 'N', 1468897207, 1),
(34, 'Congolese Franc', 'CDF', 'CDF', '', '937.00005100', 2, 'N', 1468897207, 1),
(35, 'Chilean Unit of Account (UF)', 'CLF', 'CLF', '', '0.02459000', 2, 'N', 1468897207, 1),
(36, 'Chilean Peso', 'CLP', 'CLP', '', '647.90002400', 2, 'N', 1468897207, 1),
(37, 'Chinese Yuan', 'CNY', 'CNY', '', '6.69697400', 2, 'N', 1468897207, 1),
(38, 'Colombian Peso', 'COP', 'COP', '', '2923.00000000', 2, 'N', 1468897207, 1),
(39, 'Costa Rican Colón', 'CRC', 'CRC', '', '541.40002400', 2, 'N', 1468897207, 1),
(40, 'Cuban Convertible Peso', 'CUC', 'CUC', '', '0.99500000', 2, 'N', 1468897207, 1),
(41, 'Cuban Peso', 'CUP', 'CUP', '', '1.00023600', 2, 'N', 1468897207, 1),
(42, 'Cape Verdean Escudo', 'CVE', 'CVE', '', '99.69999700', 2, 'N', 1468897207, 1),
(43, 'Czech Republic Koruna', 'CZK', 'CZK', '', '24.39800100', 2, 'N', 1468897207, 1),
(44, 'Djiboutian Franc', 'DJF', 'DJF', '', '175.80000300', 2, 'N', 1468897207, 1),
(45, 'Danish Krone', 'DKK', 'DKK', '', '6.71717000', 2, 'N', 1468897207, 1),
(46, 'Dominican Peso', 'DOP', 'DOP', '', '45.79999900', 2, 'N', 1468897207, 1),
(47, 'Algerian Dinar', 'DZD', 'DZD', '', '110.30000300', 2, 'N', 1468897207, 1),
(48, 'Estonian Kroon', 'EEK', 'EEK', '', '14.13102800', 2, 'N', 1468897207, 1),
(49, 'Egyptian Pound', 'EGP', 'EGP', '', '8.87989900', 2, 'N', 1468897207, 1),
(50, 'Eritrean Nakfa', 'ERN', 'ERN', '', '15.47957400', 2, 'N', 1468897207, 1),
(51, 'Ethiopian Birr', 'ETB', 'ETB', '', '21.84439600', 2, 'N', 1468897207, 1),
(52, 'Euro', 'EUR', '€', '', '0.93137000', 2, 'Y', 1678726744, 1),
(53, 'Fijian Dollar', 'FJD', 'FJD', '', '2.04950200', 2, 'N', 1468897207, 1),
(54, 'Falkland Islands Pound', 'FKP', 'FKP', '', '0.75419700', 2, 'N', 1468897207, 1),
(55, 'Georgian Lari', 'GEL', 'GEL', '', '2.34009700', 2, 'N', 1468897207, 1),
(56, 'Guernsey Pound', 'GGP', 'GGP', '', '0.75639900', 2, 'N', 1468897207, 1),
(57, 'Ghanaian Cedi', 'GHS', 'GHS', '', '3.95496900', 2, 'N', 1468897207, 1),
(58, 'Gibraltar Pound', 'GIP', 'GIP', '', '0.75440400', 2, 'N', 1468897207, 1),
(59, 'Gambian Dalasi', 'GMD', 'GMD', '', '42.29000100', 2, 'N', 1468897207, 1),
(60, 'Guinean Franc', 'GNF', 'GNF', '', '8815.99985500', 2, 'N', 1468897207, 1),
(61, 'Guatemalan Quetzal', 'GTQ', 'GTQ', '', '7.59950200', 2, 'N', 1468897207, 1),
(62, 'Guyanaese Dollar', 'GYD', 'GYD', '', '204.35000600', 2, 'N', 1468897207, 1),
(63, 'Honduran Lempira', 'HNL', 'HNL', '', '22.75016300', 2, 'N', 1468897207, 1),
(64, 'Croatian Kuna', 'HRK', 'HRK', '', '6.73110400', 2, 'N', 1468897207, 1),
(65, 'Haitian Gourde', 'HTG', 'HTG', '', '63.25999800', 2, 'N', 1468897207, 1),
(66, 'Hungarian Forint', 'HUF', 'HUF', '', '283.95001200', 2, 'N', 1468897207, 1),
(67, 'Indonesian Rupiah', 'IDR', 'IDR', '', '13054.00000000', 2, 'N', 1468897207, 1),
(68, 'Israeli New Sheqel', 'ILS', 'ILS', '', '3.85229700', 2, 'N', 1468897207, 1),
(69, 'Manx pound', 'IMP', 'IMP', '', '0.75639900', 2, 'N', 1468897207, 1),
(70, 'Indian Rupee', 'INR', 'INR', '', '67.13999900', 2, 'N', 1468897207, 1),
(71, 'Iraqi Dinar', 'IQD', 'IQD', '', '1169.40002400', 2, 'N', 1468897207, 1),
(72, 'Iranian Rial', 'IRR', 'IRR', '', '30075.00002000', 2, 'N', 1468897207, 1),
(73, 'Icelandic Króna', 'ISK', 'ISK', '', '121.73999800', 2, 'N', 1468897207, 1),
(74, 'Jersey Pound', 'JEP', 'JEP', '', '0.75639900', 2, 'N', 1468897207, 1),
(75, 'Jamaican Dollar', 'JMD', 'JMD', '', '126.19999700', 2, 'N', 1468897207, 1),
(76, 'Jordanian Dinar', 'JOD', 'JOD', '', '0.70750100', 2, 'N', 1468897207, 1),
(77, 'Japanese Yen', 'JPY', 'JPY', '', '105.91500100', 2, 'N', 1468897207, 1),
(78, 'Kenyan Shilling', 'KES', 'KES', '', '101.40000200', 2, 'N', 1468897207, 1),
(79, 'Kyrgystani Som', 'KGS', 'KGS', '', '67.19300100', 2, 'N', 1468897207, 1),
(80, 'Cambodian Riel', 'KHR', 'KHR', '', '4034.99981900', 2, 'N', 1468897207, 1),
(81, 'Comorian Franc', 'KMF', 'KMF', '', '425.25039900', 2, 'N', 1468897207, 1),
(82, 'North Korean Won', 'KPW', 'KPW', '', '900.00004900', 2, 'N', 1468897207, 1),
(83, 'South Korean Won', 'KRW', 'KRW', '', '1139.19995100', 2, 'N', 1468897207, 1),
(84, 'Kuwaiti Dinar', 'KWD', 'KWD', '', '0.30195800', 2, 'N', 1468897207, 1),
(85, 'Cayman Islands Dollar', 'KYD', 'KYD', '', '0.82028300', 2, 'N', 1468897207, 1),
(86, 'Kazakhstani Tenge', 'KZT', 'KZT', '', '339.10000600', 2, 'N', 1468897207, 1),
(87, 'Laotian Kip', 'LAK', 'LAK', '', '8080.00014800', 2, 'N', 1468897207, 1),
(88, 'Lebanese Pound', 'LBP', 'LBP', '', '1504.40002400', 2, 'N', 1468897207, 1),
(89, 'Sri Lankan Rupee', 'LKR', 'LKR', '', '145.74991900', 2, 'N', 1468897207, 1),
(90, 'Liberian Dollar', 'LRD', 'LRD', '', '89.99970900', 2, 'N', 1468897207, 1),
(91, 'Lesotho Loti', 'LSL', 'LSL', '', '14.31990500', 2, 'N', 1468897207, 1),
(92, 'Lithuanian Litas', 'LTL', 'LTL', '', '3.04870100', 2, 'N', 1468897207, 1),
(93, 'Latvian Lats', 'LVL', 'LVL', '', '0.62055000', 2, 'N', 1468897207, 1),
(94, 'Libyan Dinar', 'LYD', 'LYD', '', '1.38799800', 2, 'N', 1468897207, 1),
(95, 'Moroccan Dirham', 'MAD', 'MAD', '', '9.78030600', 2, 'N', 1468897207, 1),
(96, 'Moldovan Leu', 'MDL', 'MDL', '', '19.73962100', 2, 'N', 1468897207, 1),
(97, 'Malagasy Ariary', 'MGA', 'MGA', '', '3027.99996400', 2, 'N', 1468897207, 1),
(98, 'Macedonian Denar', 'MKD', 'MKD', '', '55.40000200', 2, 'N', 1468897207, 1),
(99, 'Myanma Kyat', 'MMK', 'MMK', '', '1181.99982800', 2, 'N', 1468897207, 1),
(100, 'Mongolian Tugrik', 'MNT', 'MNT', '', '2010.00017400', 2, 'N', 1468897207, 1),
(101, 'Macanese Pataca', 'MOP', 'MOP', '', '7.98700600', 2, 'N', 1468897207, 1),
(102, 'Mauritanian Ouguiya', 'MRO', 'MRO', '', '349.99946800', 2, 'N', 1468897207, 1),
(103, 'Mauritian Rupee', 'MUR', 'MUR', '', '35.27999900', 2, 'N', 1468897207, 1),
(104, 'Maldivian Rufiyaa', 'MVR', 'MVR', '', '15.09842100', 2, 'N', 1468897207, 1),
(105, 'Malawian Kwacha', 'MWK', 'MWK', '', '706.45001200', 2, 'N', 1468897207, 1),
(106, 'Mexican Peso', 'MXN', 'MXN', '', '18.42350300', 2, 'N', 1468897207, 1),
(107, 'Malaysian Ringgit', 'MYR', 'MYR', '', '3.98339800', 2, 'N', 1468897207, 1),
(108, 'Mozambican Metical', 'MZN', 'MZN', '', '65.62000300', 2, 'N', 1468897207, 1),
(109, 'Namibian Dollar', 'NAD', 'NAD', '', '14.30703100', 2, 'N', 1468897207, 1),
(110, 'Nigerian Naira', 'NGN', 'NGN', '', '295.00008700', 2, 'N', 1468897207, 1),
(111, 'Nicaraguan Córdoba', 'NIO', 'NIO', '', '28.68239800', 2, 'N', 1468897207, 1),
(112, 'Norwegian Krone', 'NOK', 'NOK', '', '8.45213000', 2, 'N', 1468897207, 1),
(113, 'Nepalese Rupee', 'NPR', 'NPR', '', '107.09999800', 2, 'N', 1468897207, 1),
(114, 'New Zealand Dollar', 'NZD', 'NZD', '', '1.42150300', 2, 'N', 1468897207, 1),
(115, 'Omani Rial', 'OMR', 'OMR', '', '0.38501600', 2, 'N', 1468897207, 1),
(116, 'Panamanian Balboa', 'PAB', 'PAB', '', '1.00364500', 2, 'N', 1468897207, 1),
(117, 'Peruvian Nuevo Sol', 'PEN', 'PEN', '', '3.27702100', 2, 'N', 1468897207, 1),
(118, 'Papua New Guinean Kina', 'PGK', 'PGK', '', '3.16209800', 2, 'N', 1468897207, 1),
(119, 'Philippine Peso', 'PHP', 'PHP', '', '46.81973600', 2, 'N', 1468897207, 1),
(120, 'Pakistani Rupee', 'PKR', 'PKR', '', '104.80000300', 2, 'N', 1468897207, 1),
(121, 'Polish Zloty', 'PLN', 'PLN', '', '3.94309400', 2, 'N', 1468897207, 1),
(122, 'Paraguayan Guarani', 'PYG', 'PYG', '', '5536.00018400', 2, 'N', 1468897207, 1),
(123, 'Qatari Rial', 'QAR', 'QAR', '', '3.64140200', 2, 'N', 1468897207, 1),
(124, 'Romanian Leu', 'RON', 'RON', '', '4.02870000', 2, 'N', 1468897207, 1),
(125, 'Serbian Dinar', 'RSD', 'RSD', '', '111.05460400', 2, 'N', 1468897207, 1),
(126, 'Russian Ruble', 'RUB', 'RUB', '', '62.89160200', 2, 'N', 1468897207, 1),
(127, 'Rwandan Franc', 'RWF', 'RWF', '', '780.40002400', 2, 'N', 1468897207, 1),
(128, 'Saudi Riyal', 'SAR', 'SAR', '', '3.74999400', 2, 'N', 1468897207, 1),
(129, 'Solomon Islands Dollar', 'SBD', 'SBD', '', '7.87150100', 2, 'N', 1468897207, 1),
(130, 'Seychellois Rupee', 'SCR', 'SCR', '', '13.21598600', 2, 'N', 1468897207, 1),
(131, 'Sudanese Pound', 'SDG', 'SDG', '', '6.07967500', 2, 'N', 1468897207, 1),
(132, 'Swedish Krona', 'SEK', 'SEK', '', '8.55968000', 2, 'N', 1468897207, 1),
(133, 'Saint Helena Pound', 'SHP', 'SHP', '', '0.75439800', 2, 'N', 1468897207, 1),
(134, 'Sierra Leonean Leone', 'SLL', 'SLL', '', '5498.00029800', 2, 'N', 1468897207, 1),
(135, 'Somali Shilling', 'SOS', 'SOS', '', '540.00011400', 2, 'N', 1468897207, 1),
(136, 'Surinamese Dollar', 'SRD', 'SRD', '', '7.03982400', 2, 'N', 1468897207, 1),
(137, 'São Tomé and Príncipe Dobra', 'STD', 'STD', '', '22175.00000000', 2, 'N', 1468897207, 1),
(138, 'Salvadoran Colón', 'SVC', 'SVC', '', '8.72198200', 2, 'N', 1468897207, 1),
(139, 'Syrian Pound', 'SYP', 'SYP', '', '215.85000600', 2, 'N', 1468897207, 1),
(140, 'Swazi Lilangeni', 'SZL', 'SZL', '', '14.33339900', 2, 'N', 1468897207, 1),
(141, 'Thai Baht', 'THB', 'THB', '', '34.97000100', 2, 'N', 1468897207, 1),
(142, 'Tajikistani Somoni', 'TJS', 'TJS', '', '7.86750000', 2, 'N', 1468897207, 1),
(143, 'Turkmenistani Manat', 'TMT', 'TMT', '', '3.41000000', 2, 'N', 1468897207, 1),
(144, 'Tunisian Dinar', 'TND', 'TND', '', '2.20996100', 2, 'N', 1468897207, 1),
(145, 'Tongan Paʻanga', 'TOP', 'TOP', '', '2.25080200', 2, 'N', 1468897207, 1),
(146, 'Turkish Lira', 'TRY', 'TRY', '', '2.98340100', 2, 'N', 1468897207, 1),
(147, 'Trinidad and Tobago Dollar', 'TTD', 'TTD', '', '6.66978400', 2, 'N', 1468897207, 1),
(148, 'New Taiwan Dollar', 'TWD', 'TWD', '', '32.00600100', 2, 'N', 1468897207, 1),
(149, 'Tanzanian Shilling', 'TZS', 'TZS', '', '2185.00052600', 2, 'N', 1468897207, 1),
(150, 'Ukrainian Hryvnia', 'UAH', 'UAH', '', '24.83499900', 2, 'N', 1468897207, 1),
(151, 'Ugandan Shilling', 'UGX', 'UGX', '', '3356.99982500', 2, 'N', 1468897207, 1),
(152, 'Uruguayan Peso', 'UYU', 'UYU', '', '30.17012300', 2, 'N', 1468897207, 1),
(153, 'Uzbekistan Som', 'UZS', 'UZS', '', '2944.99984400', 2, 'N', 1468897207, 1),
(154, 'Venezuelan Bolívar Fuerte', 'VEF', 'VEF', '', '9.97480400', 2, 'N', 1468897207, 1),
(155, 'Vietnamese Dong', 'VND', 'VND', 'đ', '23587.50000000', 2, 'Y', 1678726744, 1),
(156, 'Vanuatu Vatu', 'VUV', 'VUV', '', '105.65000200', 2, 'N', 1468897207, 1),
(157, 'Samoan Tala', 'WST', 'WST', '', '2.55500700', 2, 'N', 1468897207, 1),
(158, 'CFA Franc BEAC', 'XAF', 'XAF', '', '591.82000700', 2, 'N', 1468897207, 1),
(159, 'Silver (troy ounce)', 'XAG', 'XAG', '', '0.05018800', 2, 'N', 1469087880, 1),
(160, 'Gold (troy ounce)', 'XAU', 'XAU', '', '0.00075400', 2, 'N', 1469087888, 1),
(161, 'East Caribbean Dollar', 'XCD', 'XCD', '', '2.70033800', 2, 'N', 1469087897, 1),
(162, 'Special Drawing Rights', 'XDR', 'XDR', '', '0.72003000', 2, 'N', 1469087906, 1),
(163, 'CFA Franc BCEAO', 'XOF', 'XOF', '', '593.20001200', 2, 'N', 1469088312, 1),
(164, 'CFP Franc', 'XPF', 'XPF', '', '107.37999700', 2, 'N', 1469088327, 1),
(165, 'Yemeni Rial', 'YER', 'YER', '', '249.94999700', 2, 'N', 1468897207, 1),
(166, 'South African Rand', 'ZAR', 'ZAR', '', '14.25801900', 2, 'N', 1468897207, 1),
(167, 'Zambian Kwacha (pre-2013)', 'ZMK', 'ZMK', '', '5156.09958700', 2, 'N', 1468897207, 1),
(168, 'Zambian Kwacha', 'ZMW', 'ZMW', '', '9.87998600', 2, 'N', 1468897207, 1),
(169, 'Zimbabwean Dollar', 'ZWL', 'ZWL', '', '322.35501100', 2, 'N', 1468897207, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gvcgl_gateway`
--

DROP TABLE IF EXISTS `gvcgl_gateway`;
CREATE TABLE IF NOT EXISTS `gvcgl_gateway` (
  `gateway_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) NOT NULL,
  `gateway_key` varchar(20) NOT NULL,
  `gateway_symbol` varchar(255) DEFAULT NULL,
  `gateway_is_direct` enum('N','Y') NOT NULL,
  `gateway_is_offline` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT 'Y: Offline payment, N: Online Payment',
  `gateway_type` enum('webview','app') NOT NULL DEFAULT 'webview',
  `gateway_content` text,
  `gateway_title` varchar(255) DEFAULT NULL,
  `gateway_version` varchar(20) DEFAULT NULL,
  `gateway_end_point` varchar(255) DEFAULT NULL,
  `gateway_icon` varchar(255) DEFAULT NULL,
  `gateway_icon_thumbnail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gateway_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gvcgl_gateway`
--

INSERT INTO `gvcgl_gateway` (`gateway_id`, `gateway_name`, `gateway_key`, `gateway_symbol`, `gateway_is_direct`, `gateway_is_offline`, `gateway_type`, `gateway_content`, `gateway_title`, `gateway_version`, `gateway_end_point`, `gateway_icon`, `gateway_icon_thumbnail`) VALUES
(1, 'Credit/Debit Card (2C2P)', '2c2p', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'Y', 'N', 'webview', NULL, 'Credit Card (processed by 2C2P)', '9.9', '#', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/2c2p-1632383764.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/2c2p-1632383764.svg'),
(2, 'Credit/Debit Card (Amex)', 'amex', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'Y', 'N', 'webview', '', 'Credit/Debit Card (Amex)', '57', '#', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/amex-1632383764.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/amex-1633595264.svg'),
(3, 'PayPal', 'paypal_checkout', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-paypal-1631593908.svg', 'N', 'N', 'webview', '', 'PayPal', '', '#', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/paypal-1632383765.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/paypal-1633595241.svg'),
(4, 'Bank Transfer', 'bank_transfer', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-bank-tranfer-1631593907.svg', 'N', 'Y', 'webview', '', 'Wire Bank Transfer', '', '#', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-transferbank-1637378279.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-transferbank-1637378279.svg'),
(5, 'VNPay', 'vnpay', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'N', 'N', 'webview', '', 'VNPay', '', '', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-vnpay-1637373975.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-vnpay-1637373975.svg'),
(6, 'Credit Card (processed by OnePay)', 'onepay', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'N', 'N', 'webview', NULL, 'Credit Card (processed by OnePay)', '', '', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/onepay-1632383765.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/onepay-1632383765.svg'),
(7, 'Momo', 'momo', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'N', 'N', 'app', '', 'Momo', '', '', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/momo3-1635242639.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/momo-vector-1634877715.svg'),
(8, 'Mastercard', 'mastercard', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'Y', 'N', 'webview', '', 'Credit or Debit Card (processed by VPBank)', '61', '#', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-vpbank-1635473739.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-vpbank-1635473739.svg'),
(9, 'Credit/Debit Card', 'paypal_direct', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads/icon-credit-cards-1631593907.svg', 'Y', 'N', 'webview', '', 'Credit/Debit Card', '', '', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads_test/method-visa-master-1666582230.svg', 'https://d1ubwt7z1ubyyw.cloudfront.net/uploads_test/method-visa-master-1666582230.svg');

-- --------------------------------------------------------

--
-- Table structure for table `gvcgl_gateway_transaction`
--

DROP TABLE IF EXISTS `gvcgl_gateway_transaction`;
CREATE TABLE IF NOT EXISTS `gvcgl_gateway_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_site_id` int(11) NOT NULL,
  `transaction_order_id` int(11) NOT NULL,
  `transaction_reference` varchar(255) NOT NULL,
  `transaction_amount` float NOT NULL,
  `transaction_currency` varchar(5) NOT NULL,
  `transaction_payment_gateway_id` int(11) NOT NULL,
  `transaction_payment_gateway_name` varchar(255) NOT NULL,
  `transaction_type` enum('ApplyVisa','MakePayment','OrderInsurance') NOT NULL,
  `transaction_insert_date` int(11) NOT NULL,
  `transaction_pay_date` int(11) DEFAULT NULL,
  `transaction_ipaddress` varchar(50) NOT NULL,
  `transaction_response` text,
  `transaction_fail_reason` longtext,
  `transaction_fail_count` int(11) NOT NULL DEFAULT '0',
  `transaction_status` enum('Pending','Success','Fail') NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gvcgl_gateway_transaction`
--

INSERT INTO `gvcgl_gateway_transaction` (`transaction_id`, `transaction_site_id`, `transaction_order_id`, `transaction_reference`, `transaction_amount`, `transaction_currency`, `transaction_payment_gateway_id`, `transaction_payment_gateway_name`, `transaction_type`, `transaction_insert_date`, `transaction_pay_date`, `transaction_ipaddress`, `transaction_response`, `transaction_fail_reason`, `transaction_fail_count`, `transaction_status`) VALUES
(74, 49, 7785980, '735e7e73-4683-496a-bbe0-7d126cd1ff7a', 666, 'USD', 1, 'Credit/Debit Card (2C2P)', 'ApplyVisa', 1698463705, NULL, '127.0.0.1', NULL, NULL, 0, 'Pending'),
(75, 49, 5541187, '8eb408c3-faa5-4ba5-acc5-ac622fa0ff17', 998, 'USD', 1, 'Credit/Debit Card (2C2P)', 'ApplyVisa', 1698463822, NULL, '127.0.0.1', NULL, NULL, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `gvcgl_merchant`
--

DROP TABLE IF EXISTS `gvcgl_merchant`;
CREATE TABLE IF NOT EXISTS `gvcgl_merchant` (
  `merchant_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `merchant_gateway_id` int(10) UNSIGNED NOT NULL,
  `merchant_type` enum('TEST','LIVE') CHARACTER SET utf8 NOT NULL,
  `merchant_mid` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'Merchant ID',
  `merchant_secret_key` text CHARACTER SET utf8 NOT NULL COMMENT 'Merchant Secret Key',
  `merchant_accesscode` varchar(255) DEFAULT NULL,
  `merchant_username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `merchant_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `merchant_url` text CHARACTER SET utf8 NOT NULL,
  `merchant_currency` varchar(3) CHARACTER SET utf8 NOT NULL,
  `merchant_markup` float NOT NULL,
  `merchant_min` float NOT NULL COMMENT 'Minimum payment amount',
  `merchant_max` float NOT NULL COMMENT 'Maximum payment amount ',
  `merchant_statement` text CHARACTER SET utf8 NOT NULL,
  `merchant_description` longtext,
  `merchant_order` int(11) NOT NULL,
  `merchant_active` enum('Y','N') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gvcgl_merchant`
--

INSERT INTO `gvcgl_merchant` (`merchant_id`, `merchant_gateway_id`, `merchant_type`, `merchant_mid`, `merchant_secret_key`, `merchant_accesscode`, `merchant_username`, `merchant_password`, `merchant_url`, `merchant_currency`, `merchant_markup`, `merchant_min`, `merchant_max`, `merchant_statement`, `merchant_description`, `merchant_order`, `merchant_active`) VALUES
(1, 6, 'TEST', 'ONEPAY', 'A3EFDFABA8653DF2342E8DAC29B51AF0', 'D67342C2', '', '', 'https://mtf.onepay.vn/onecomm-pay/vpc.op', 'VND', 1, 1, 1e28, '#', NULL, 0, 'Y'),
(2, 5, 'TEST', 'RYIYTDWH', 'JUOJELWKKCCNTYRMISMAVPZZDEHXIOUR', '', '', '', 'http://sandbox.vnpayment.vn/paymentv2/vpcpay.html', 'VND', 1, 1, 100000000, '#', NULL, 1, 'Y'),
(3, 1, 'TEST', '702840000001472', '3CC060CE9205249321585548BF4172931A74FD5471580B13077255F1D8FD8A9D', NULL, '', '', 'https://demo2.2c2p.com/2C2PFrontEnd/SecurePayment', 'USD', 1, 1, 1e28, 'In your credit/debit card bank statement for this transaction will show: 2C2P, 2C2P*GLOBAL VISA, 2C2P*GLOBAL VISA SERVICE.', NULL, 0, 'Y'),
(4, 1, 'TEST', '702702000001174', 'B69DED1D1D2E155184ABEFCB57D7D59DA69741EBF90066EE21EDF581D19E17E4', NULL, '', '', 'https://demo2.2c2p.com/2C2PFrontEnd/SecurePayment', 'USD', 1, 1, 1e28, 'In your credit/debit card bank statement for this transaction will show: 2C2P, 2C2P*GLOBAL VISA, 2C2P*GLOBAL VISA SERVICE.', NULL, 0, 'Y'),
(5, 2, 'TEST', 'TEST9590711750', '4b8014d796e1f8891299f40784773b0d', '', '', '', 'https://gateway-japa.americanexpress.com/api/rest', 'USD', 1, 1, 100000000, 'In your credit/debit card bank statement for this transaction will show: WWW ASIAEVISA COM', NULL, 1, 'Y'),
(6, 3, 'TEST', 'ATb3hlnZ1UZc_XWFORR74zcsKRT5u7gmGeU5WYyVbRq1lRHNBymWqJb3z5EzWbVsvmNnTvxCfckxMM51', 'EHpZcGZ4GSM2VxkiivwPZatnI_WirBiKWkiRSlcVsZp4UEuvG0pnxUlpChYkyUJQzfK7qGVhvSgf0LCv', 'Ai7qhZHzydyXwmbCT7vldFzKptR3AXmhC2hse542lu8by2bc1CeD--Fd', 'sb-pgkpm5187420_api1.business.example.com', 'FNTZF5J84CFPEXGK', 'https://api-3t.sandbox.paypal.com/nvp', 'USD', 1, 1, 100000000, 'In your credit/debit card bank statement for this transaction will show: Paypal*GLOBAL VISA, Paypal*GLOBAL VISA SERVICE.', NULL, 1, 'Y'),
(7, 4, 'TEST', '#', '#', '', '', '', '#', 'USD', 1, 1, 100000000, '#', '<p>You can transfer the total booking amount as shown on your invoice to one of the following bank accounts to confirm your booking. Please ensure you include Invoice number(s) in your payment and email the remittance slip as soon as possible to <a href=\"mailto:support@travelner.com\" target=\"_blank\">support@travelner.com</a> for verification purposes. We take no responsibility for late payments that result in losing the temporarily held reservation or price changes.</p> <div class=\"row\"> <div class=\"col-md-3\"> <img src=\"https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-hsbc-1636010720.svg\" alt=\"HSBC SINGAPORE\" title=\"HSBC SINGAPORE\"> </div> <div class=\"col-md-9\"> <ul> <li>Bank name: <strong>HSBC SINGAPORE</strong></li> <li>Account Name: <strong>GALAXY ONE PTE LTD</strong></li> <li>Account Numbers: 052-404027-001</li> <li>SWIFT: BIC: <strong>HSBCSGSGXXX</strong></li></ul> </div> </div>', 1, 'Y'),
(8, 8, 'TEST', '112-M-225678', '', NULL, 'merchant.112-M-225678', 'c2de5d72914dd4d55d23a4320c41d843', 'https://test-gateway.mastercard.com/api/rest', 'VND', 1, 1, 100000000, '#', NULL, 0, 'Y'),
(9, 9, 'TEST', 'ATb3hlnZ1UZc_XWFORR74zcsKRT5u7gmGeU5WYyVbRq1lRHNBymWqJb3z5EzWbVsvmNnTvxCfckxMM51', 'ECEk5v3UYfjsSwx6vXCTcjAsrwBQ72WKkaWAnGMmuQIcsmFEM1N4IZmUyh5m7SttZMTTUth5RFP1fdnL', NULL, NULL, NULL, 'https://api.sandbox.paypal.com', 'USD', 1, 1, 1e28, 'In your credit/debit card bank statement for this transaction will show: Paypal*GLOBAL VISA, Paypal*GLOBAL VISA SERVICE.', NULL, 0, 'Y'),
(10, 4, 'TEST', '#', '#', '', '', '', '#', 'VND', 1, 1, 100000000, '#', '<p>You can transfer the total booking amount as shown on your invoice to one of the following bank accounts to confirm your booking. Please ensure you include Invoice number(s) in your payment and email the remittance slip as soon as possible to <a href=\"mailto:support@travelner.com\" target=\"_blank\">support@travelner.com</a> for verification purposes. We take no responsibility for late payments that result in losing the temporarily held reservation or price changes.</p> <div class=\"row\"> <div class=\"col-md-3\"> <img src=\"https://d1ubwt7z1ubyyw.cloudfront.net/uploads/logo-hsbc-1636010720.svg\" alt=\"HSBC SINGAPORE\" title=\"HSBC SINGAPORE\"> </div> <div class=\"col-md-9\"> <ul> <li>Bank name: <strong>HSBC SINGAPORE</strong></li> <li>Account Name: <strong>GALAXY ONE PTE LTD</strong></li> <li>Account Numbers: 052-404027-001</li> <li>SWIFT: BIC: <strong>HSBCSGSGXXX</strong></li></ul> </div> </div>', 1, 'Y'),
(11, 7, 'TEST', 'MOMOEO2X20211012', 'aOYlZ0b5J9Hz9xlEpt54vBflgHE87u5b', 'Nt0vEPrRU8hZjjUa', '', '', 'https://test-payment.momo.vn', 'VND', 1, 10000, 10000000000, 'Momo', '', 1, 'Y'),
(12, 11, 'TEST', 'cs3qTpns5f205yh22HroZVuFhSYtW7', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCAMTgrY/RfmQ5GHD0tbQaRV2FMzJbUvoYFon6/Kpb0voxHHVQemwyT4tfiK/KNBZn1tvanrcKLCbZN8zrUVaIDv/RnlvmJ+bNu1ZmEFi61S3HHDLmYJH/sa8Lhy/kpKCYsub5G7+GLFIxtNmUJLfj6ljOhpAIxNJ8XaqmfIfJC2QIDAQAB', 'M32XuYAggrWlzxTa0YbM1DGHqZ6fcq', '', '', 'https://alepay-v3-sandbox.nganluong.vn/api', 'VND', 1, 5000, 100000000, '#', '', 1, 'Y'),
(14, 11, 'TEST', 'cs3qTpns5f205yh22HroZVuFhSYtW7', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCAMTgrY/RfmQ5GHD0tbQaRV2FMzJbUvoYFon6/Kpb0voxHHVQemwyT4tfiK/KNBZn1tvanrcKLCbZN8zrUVaIDv/RnlvmJ+bNu1ZmEFi61S3HHDLmYJH/sa8Lhy/kpKCYsub5G7+GLFIxtNmUJLfj6ljOhpAIxNJ8XaqmfIfJC2QIDAQAB', 'M32XuYAggrWlzxTa0YbM1DGHqZ6fcq', '', '', 'https://alepay-v3-sandbox.nganluong.vn/api', 'USD', 1, 1, 10000000000, '#', '', 1, 'Y'),
(15, 12, 'TEST', 'cs3qTpns5f205yh22HroZVuFhSYtW7', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCAMTgrY/RfmQ5GHD0tbQaRV2FMzJbUvoYFon6/Kpb0voxHHVQemwyT4tfiK/KNBZn1tvanrcKLCbZN8zrUVaIDv/RnlvmJ+bNu1ZmEFi61S3HHDLmYJH/sa8Lhy/kpKCYsub5G7+GLFIxtNmUJLfj6ljOhpAIxNJ8XaqmfIfJC2QIDAQAB', 'M32XuYAggrWlzxTa0YbM1DGHqZ6fcq', '', '', 'https://alepay-v3-sandbox.nganluong.vn/pay', 'VND', 1, 10000, 1000000000, '#', '', 1, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `gvcgl_site_currency`
--

DROP TABLE IF EXISTS `gvcgl_site_currency`;
CREATE TABLE IF NOT EXISTS `gvcgl_site_currency` (
  `site_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_country_trawick`
--

DROP TABLE IF EXISTS `home_country_trawick`;
CREATE TABLE IF NOT EXISTS `home_country_trawick` (
  `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `country_code` varchar(5) CHARACTER SET utf8 NOT NULL,
  `country_active` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_country_trawick`
--

INSERT INTO `home_country_trawick` (`country_id`, `country_name`, `country_code`, `country_active`) VALUES
(1, 'Afghanistan', 'AF', 'Y'),
(2, 'Aland Islands', 'AX', 'Y'),
(3, 'Albania', 'AL', 'Y'),
(4, 'Algeria', 'DZ', 'Y'),
(5, 'American Samoa', 'AS', 'Y'),
(6, 'Andorra', 'AD', 'Y'),
(7, 'Angola', 'AO', 'Y'),
(8, 'Anguilla', 'AI', 'Y'),
(9, 'Antarctica', 'AQ', 'Y'),
(10, 'Antigua and Barbuda', 'AG', 'Y'),
(11, 'Argentina', 'AR', 'Y'),
(12, 'Armenia', 'AM', 'Y'),
(13, 'Aruba', 'AW', 'Y'),
(14, 'Australia', 'AU', 'Y'),
(15, 'Austria', 'AT', 'Y'),
(16, 'Azerbaijan', 'AZ', 'Y'),
(17, 'Bahamas', 'BS', 'Y'),
(18, 'Bahrain', 'BH', 'Y'),
(19, 'Bangladesh', 'BD', 'Y'),
(20, 'Barbados', 'BB', 'Y'),
(21, 'Belarus', 'BY', 'Y'),
(22, 'Belgium', 'BE', 'Y'),
(23, 'Belize', 'BZ', 'Y'),
(24, 'Benin', 'BJ', 'Y'),
(25, 'Bermuda', 'BM', 'Y'),
(26, 'Bhutan', 'BT', 'Y'),
(27, 'Bolivia', 'BO', 'Y'),
(28, 'Bonaire', 'BQ', 'Y'),
(29, 'Bosnia and Herzegovina', 'BA', 'Y'),
(30, 'Botswana', 'BW', 'Y'),
(31, 'Bouvet Island', 'BV', 'Y'),
(32, 'Brazil', 'BR', 'Y'),
(33, 'British Indian Ocean Territory', 'IO', 'Y'),
(34, 'Brunei Darussalam', 'BN', 'Y'),
(35, 'Bulgaria', 'BG', 'Y'),
(36, 'Burkina Faso', 'BF', 'Y'),
(37, 'Burundi', 'BI', 'Y'),
(38, 'Cambodia', 'KH', 'Y'),
(39, 'Cameroon', 'CM', 'Y'),
(40, 'Canada', 'CA', 'Y'),
(41, 'Cape Verde', 'CV', 'Y'),
(42, 'Caribbean', 'CB', 'Y'),
(43, 'Cayman Islands', 'KY', 'Y'),
(44, 'Central African Republic', 'CF', 'Y'),
(45, 'Chad', 'TD', 'Y'),
(46, 'Chile', 'CL', 'Y'),
(47, 'China', 'CN', 'Y'),
(48, 'Christmas Island', 'CX', 'Y'),
(49, 'Cocos (Keeling) Islands', 'CC', 'Y'),
(50, 'Colombia', 'CO', 'Y'),
(51, 'Comoros', 'KM', 'Y'),
(52, 'Congo', 'CG', 'Y'),
(53, 'Cook Islands', 'CK', 'Y'),
(54, 'Costa Rica', 'CR', 'Y'),
(55, 'Cote D\'Ivoire', 'CI', 'Y'),
(56, 'Croatia', 'HR', 'Y'),
(57, 'Cuba', 'CU', 'Y'),
(58, 'Curacao', 'CW', 'Y'),
(59, 'Cyprus', 'CY', 'Y'),
(60, 'Czech Republic', 'CZ', 'Y'),
(61, 'Denmark', 'DK', 'Y'),
(62, 'Djibouti', 'DJ', 'Y'),
(63, 'Dominica', 'DM', 'Y'),
(64, 'Dominican Republic', 'DO', 'Y'),
(65, 'East Timor', 'TP', 'Y'),
(66, 'Eastern Europe', 'EE', 'Y'),
(67, 'Ecuador', 'EC', 'Y'),
(68, 'Egypt', 'EG', 'Y'),
(69, 'El Salvador', 'SV', 'Y'),
(70, 'Equatorial Guinea', 'GQ', 'Y'),
(71, 'Eritrea', 'ER', 'Y'),
(72, 'Estonia', 'EE', 'Y'),
(73, 'Ethiopia', 'ET', 'Y'),
(74, 'Falkland Islands (Malvinas)', 'FK', 'Y'),
(75, 'Faroe Islands', 'FO', 'Y'),
(76, 'Fiji', 'FJ', 'Y'),
(77, 'Finland', 'FI', 'Y'),
(78, 'France', 'FR', 'Y'),
(79, 'France, Metropolitan', 'FR', 'Y'),
(80, 'French Guiana', 'GF', 'Y'),
(81, 'French Polynesia', 'PF', 'Y'),
(82, 'French Southern Territories', 'TF', 'Y'),
(83, 'Gabon', 'GA', 'Y'),
(84, 'Gambia', 'GM', 'Y'),
(85, 'Georgia', 'GE', 'Y'),
(86, 'Germany', 'DE', 'Y'),
(87, 'Ghana', 'GH', 'Y'),
(88, 'Gibraltar', 'GI', 'Y'),
(89, 'Greece', 'GR', 'Y'),
(90, 'Greenland', 'GL', 'Y'),
(91, 'Grenada', 'GD', 'Y'),
(92, 'Guadeloupe', 'GP', 'Y'),
(93, 'Guam', 'GU', 'Y'),
(94, 'Guatemala', 'GT', 'Y'),
(95, 'Guernsey', 'GG', 'Y'),
(96, 'Guinea', 'GN', 'Y'),
(97, 'Guinea-Bissau', 'GW', 'Y'),
(98, 'Guyana', 'GY', 'Y'),
(99, 'Haiti', 'HT', 'Y'),
(100, 'Heard and McDonald Islands', 'HM', 'Y'),
(101, 'Honduras', 'HN', 'Y'),
(102, 'Hong Kong', 'HK', 'Y'),
(103, 'Hungary', 'HU', 'Y'),
(104, 'Iceland', 'IS', 'Y'),
(105, 'India', 'IN', 'Y'),
(106, 'Indonesia', 'ID', 'Y'),
(107, 'Iran (Islamic Republic of)', 'IR', 'Y'),
(108, 'Iraq', 'IQ', 'Y'),
(109, 'Ireland', 'IE', 'Y'),
(110, 'Isle of Man', 'IM', 'Y'),
(111, 'Israel', 'IL', 'Y'),
(112, 'Italy', 'IT', 'Y'),
(113, 'Jamaica', 'JM', 'Y'),
(114, 'Japan', 'JP', 'Y'),
(115, 'Jersey', 'JE', 'Y'),
(116, 'Jordan', 'JO', 'Y'),
(117, 'Kazakhstan', 'KZ', 'Y'),
(118, 'Kenya', 'KE', 'Y'),
(119, 'Kiribati', 'KI', 'Y'),
(120, 'Korea, Democratic People\'s Republic of', 'KP', 'Y'),
(121, 'Korea, Republic of', 'KR', 'Y'),
(122, 'Kuwait', 'KW', 'Y'),
(123, 'Kyrgyzstan', 'KG', 'Y'),
(124, 'Lao People\'s Democratic Republic', 'LA', 'Y'),
(125, 'Latvia', 'LV', 'Y'),
(126, 'Lebanon', 'LB', 'Y'),
(127, 'Lesotho', 'LS', 'Y'),
(128, 'Liberia', 'LR', 'Y'),
(129, 'Libyan Arab Jamahiriya', 'LY', 'Y'),
(130, 'Liechtenstein', 'LI', 'Y'),
(131, 'Lithuania', 'LT', 'Y'),
(132, 'Luxembourg', 'LU', 'Y'),
(133, 'Macau', 'MO', 'Y'),
(134, 'Macedonia, the Former Yugoslav Republic of', 'MK', 'Y'),
(135, 'Madagascar', 'MG', 'Y'),
(136, 'Malawi', 'MW', 'Y'),
(137, 'Malaysia', 'MY', 'Y'),
(138, 'Maldives', 'MV', 'Y'),
(139, 'Mali', 'ML', 'Y'),
(140, 'Malta', 'MT', 'Y'),
(141, 'Marshall Islands', 'MH', 'Y'),
(142, 'Martinique', 'MQ', 'Y'),
(143, 'Mauritania', 'MR', 'Y'),
(144, 'Mauritius', 'MU', 'Y'),
(145, 'Mayotte', 'YT', 'Y'),
(146, 'Mexico', 'MX', 'Y'),
(147, 'Micronesia (Federated States of)', 'FM', 'Y'),
(148, 'Moldova, Republic of', 'MD', 'Y'),
(149, 'Monaco', 'MC', 'Y'),
(150, 'Mongolia', 'MN', 'Y'),
(151, 'Montenegro', 'ME', 'Y'),
(152, 'Montserrat', 'MS', 'Y'),
(153, 'Morocco', 'MA', 'Y'),
(154, 'Mozambique', 'MZ', 'Y'),
(155, 'Myanmar', 'MM', 'Y'),
(156, 'Namibia', 'NA', 'Y'),
(157, 'Nauru', 'NR', 'Y'),
(158, 'Nepal', 'NP', 'Y'),
(159, 'Netherlands', 'NL', 'Y'),
(160, 'Netherlands Antilles', 'AN', 'Y'),
(161, 'New Caledonia', 'NC', 'Y'),
(162, 'New Zealand', 'NZ', 'Y'),
(163, 'Nicaragua', 'NI', 'Y'),
(164, 'Niger', 'NE', 'Y'),
(165, 'Nigeria', 'NG', 'Y'),
(166, 'Niue', 'NU', 'Y'),
(167, 'Norfolk Island', 'NF', 'Y'),
(168, 'Northern Mariana Islands', 'MP', 'Y'),
(169, 'Norway', 'NO', 'Y'),
(170, 'Oman', 'OM', 'Y'),
(171, 'Pakistan', 'PK', 'Y'),
(172, 'Palau', 'PW', 'Y'),
(173, 'Palestine', 'PS', 'Y'),
(174, 'Panama', 'PA', 'Y'),
(175, 'Papua New Guinea', 'PG', 'Y'),
(176, 'Paraguay', 'PY', 'Y'),
(177, 'Peru', 'PE', 'Y'),
(178, 'Philippines', 'PH', 'Y'),
(179, 'Pitcairn', 'PN', 'Y'),
(180, 'Poland', 'PL', 'Y'),
(181, 'Portugal', 'PT', 'Y'),
(182, 'Puerto Rico', 'PR', 'Y'),
(183, 'Qatar', 'QA', 'Y'),
(184, 'Reunion', 'RE', 'Y'),
(185, 'Romania', 'RO', 'Y'),
(186, 'Russian Federation', 'RU', 'Y'),
(187, 'Rwanda', 'RW', 'Y'),
(188, 'Saint Barthelemy', 'BL', 'Y'),
(189, 'Saint Kitts and Nevis', 'KN', 'Y'),
(190, 'Saint Lucia', 'LC', 'Y'),
(191, 'Saint Martin', 'MF', 'Y'),
(192, 'Saint Vincent and the Grenadines', 'VC', 'Y'),
(193, 'Samoa', 'WS', 'Y'),
(194, 'San Marino', 'SM', 'Y'),
(195, 'Sao Tome and Principe', 'ST', 'Y'),
(196, 'Saudi Arabia', 'SA', 'Y'),
(197, 'Senegal', 'SN', 'Y'),
(198, 'Serbia', 'RS', 'Y'),
(199, 'Seychelles', 'SC', 'Y'),
(200, 'Sierra Leone', 'SL', 'Y'),
(201, 'Singapore', 'SG', 'Y'),
(202, 'Saint Maarten', 'SX', 'Y'),
(203, 'Slovakia', 'SK', 'Y'),
(204, 'Slovenia', 'SI', 'Y'),
(205, 'Solomon Islands', 'SB', 'Y'),
(206, 'Somalia', 'SO', 'Y'),
(207, 'South Africa', 'ZA', 'Y'),
(208, 'South Georgia and the South Sandwich Islands', 'GS', 'Y'),
(209, 'South Sudan', 'SS', 'Y'),
(210, 'Spain', 'ES', 'Y'),
(211, 'Sri Lanka', 'LK', 'Y'),
(212, 'St. Helena', 'SH', 'Y'),
(213, 'St. Pierre and Miquelon', 'PM', 'Y'),
(214, 'Sudan', 'SD', 'Y'),
(215, 'South Sudan', 'SS', 'Y'),
(216, 'St. Martin', 'SX', 'Y'),
(217, 'Suriname', 'SR', 'Y'),
(218, 'Svalbard and Jan Mayen Islands', 'SJ', 'Y'),
(219, 'Swaziland', 'SZ', 'Y'),
(220, 'Sweden', 'SE', 'Y'),
(221, 'Switzerland', 'CH', 'Y'),
(222, 'Syrian Arab Republic', 'SY', 'Y'),
(223, 'Taiwan', 'TW', 'Y'),
(224, 'Tajikistan', 'TJ', 'Y'),
(225, 'Tanzania, United Republic of', 'TZ', 'Y'),
(226, 'Thailand', 'TH', 'Y'),
(227, 'Timor-Leste', 'TL', 'Y'),
(228, 'Togo', 'TG', 'Y'),
(229, 'Tokelau', 'TK', 'Y'),
(230, 'Tonga', 'TO', 'Y'),
(231, 'Trinidad and Tobago', 'TT', 'Y'),
(232, 'Tunisia', 'TN', 'Y'),
(233, 'Turkey', 'TR', 'Y'),
(234, 'Turkmenistan', 'TM', 'Y'),
(235, 'Turks and Caicos Islands', 'TC', 'Y'),
(236, 'Tuvalu', 'TV', 'Y'),
(237, 'Uganda', 'UG', 'Y'),
(238, 'Ukraine', 'UA', 'Y'),
(239, 'United Arab Emirates', 'AE', 'Y'),
(240, 'United Kingdom', 'GB', 'Y'),
(241, 'United States Minor Outlying Islands', 'UM', 'Y'),
(242, 'United States of America', 'US', 'Y'),
(243, 'Uruguay', 'UY', 'Y'),
(244, 'Uzbekistan', 'UZ', 'Y'),
(245, 'Vanuatu', 'VU', 'Y'),
(246, 'Vatican City State (Holy See)', 'VA', 'Y'),
(247, 'Venezuela', 'VE', 'Y'),
(248, 'Viet Nam', 'VN', 'Y'),
(249, 'Virgin Islands (British)', 'VG', 'Y'),
(250, 'Virgin Islands (U.S.)', 'VI', 'Y'),
(251, 'Wallis and Futuna Islands', 'WF', 'Y'),
(252, 'Western Sahara', 'EH', 'Y'),
(253, 'Yemen', 'YE', 'Y'),
(254, 'Zaire', 'CD', 'Y'),
(255, 'Zambia', 'ZM', 'Y'),
(256, 'Zimbabwe', 'ZW', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(47, 'default', '{\"uuid\":\"14fde20c-8442-411f-8d73-3fb8e067193e\",\"displayName\":\"App\\\\Jobs\\\\GoogleSheet\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GoogleSheet\",\"command\":\"O:20:\\\"App\\\\Jobs\\\\GoogleSheet\\\":12:{s:8:\\\"\\u0000*\\u0000param\\\";a:15:{s:2:\\\"ID\\\";s:1:\\\"|\\\";s:5:\\\"Email\\\";s:35:\\\"huuhieu@bincg.com|huuhieu@bincg.com\\\";s:12:\\\"Phone Number\\\";s:25:\\\"+84902204551|+84902204551\\\";s:10:\\\"First Name\\\";s:8:\\\"|huuhieu\\\";s:9:\\\"Last Name\\\";s:8:\\\"|huuhieu\\\";s:10:\\\"Event Name\\\";s:10:\\\"lead-form|\\\";s:15:\\\"Conversion Name\\\";s:1:\\\"|\\\";s:15:\\\"Conversion Time\\\";s:1:\\\"|\\\";s:16:\\\"Conversion Value\\\";s:1:\\\"|\\\";s:19:\\\"Conversion Currency\\\";s:1:\\\"|\\\";s:15:\\\"Google Click ID\\\";s:1:\\\"|\\\";s:7:\\\"Zipcode\\\";s:6:\\\"|73206\\\";s:7:\\\"Country\\\";s:3:\\\"|VN\\\";s:5:\\\"sheet\\\";s:3:\\\"0|5\\\";s:13:\\\"numberofsheet\\\";i:2;}s:11:\\\"\\u0000*\\u0000endpoint\\\";s:112:\\\"https:\\/\\/script.google.com\\/macros\\/s\\/AKfycbwWV9JyeAyJmMGDmLFdFxVSbyFX46UXw8tWYR3vvcoqvDa-PQsGBHOuEpYqfz7iJxAi\\/exec\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1692847267, 1692847267);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_02_08_022338_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `site_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Site ID',
  `site_name` varchar(255) DEFAULT NULL COMMENT 'Site Name',
  `site_database_host` varchar(255) DEFAULT NULL COMMENT 'database host',
  `site_database_user` varchar(255) DEFAULT NULL COMMENT 'database user',
  `site_database_pass` varchar(255) DEFAULT NULL COMMENT 'database pass',
  `site_database_name` varchar(255) DEFAULT NULL COMMENT 'database name',
  `site_active` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'site active',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`site_id`, `site_name`, `site_database_host`, `site_database_user`, `site_database_pass`, `site_database_name`, `site_active`) VALUES
(2, 'cambodiavisacorp.com', NULL, NULL, NULL, NULL, 'N'),
(3, 'vietnamvisaco.org', NULL, NULL, NULL, NULL, 'N'),
(4, 'vietnamvisaco.com', NULL, NULL, NULL, NULL, 'N'),
(6, 'globalvisacorp.com', NULL, NULL, NULL, NULL, 'Y'),
(7, 'cambodiaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(8, 'turkeyimmigration.org', NULL, NULL, NULL, NULL, 'N'),
(9, 'turkey-immigration.org', NULL, NULL, NULL, NULL, 'N'),
(10, 'srilankaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(11, 'vietnamimmigration.com.au', NULL, NULL, NULL, NULL, 'Y'),
(12, 'turkeyimmigration.au.org', NULL, NULL, NULL, NULL, 'N'),
(13, 'thevietnamimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(14, 'vietnamimmigration.org.uk', NULL, NULL, NULL, NULL, 'N'),
(16, 'srilankaimmigration.org.uk', NULL, NULL, NULL, NULL, 'N'),
(17, 'srilankaimmigration.org.in', NULL, NULL, NULL, NULL, 'N'),
(18, 'srilankaimmigration.de', NULL, NULL, NULL, NULL, 'N'),
(19, 'srilankaimmigration.fr', NULL, NULL, NULL, NULL, 'N'),
(20, 'srilankaimmigration.ca', NULL, NULL, NULL, NULL, 'N'),
(21, 'srilankaimmigration.us', NULL, NULL, NULL, NULL, 'N'),
(22, 'srilankaimmigration.org.my', NULL, NULL, NULL, NULL, 'N'),
(23, 'srilankaimmigration.com.sg', NULL, NULL, NULL, NULL, 'N'),
(24, 'srilankaimmigration.uae.org', NULL, NULL, NULL, NULL, 'N'),
(25, 'srilankaimmigration.com.au', NULL, NULL, NULL, NULL, 'N'),
(26, 'srilankaimmigration.com', NULL, NULL, NULL, NULL, 'N'),
(27, 'vietnamimmigration.org.in', NULL, NULL, NULL, NULL, 'N'),
(28, 'vietnamimmigration.org.my', NULL, NULL, NULL, NULL, 'N'),
(29, 'vietnamimmigration.ca', NULL, NULL, NULL, NULL, 'N'),
(30, 'vietnamimmigration.org.nz', NULL, NULL, NULL, NULL, 'N'),
(31, 'vietnamimmigration.com.sg', NULL, NULL, NULL, NULL, 'N'),
(32, 'vietnamimmigration.com.hk', NULL, NULL, NULL, NULL, 'N'),
(33, 'kenyaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(34, 'srilankavisa.lk', NULL, NULL, NULL, NULL, 'Y'),
(35, 'myanmarvisaco.com', NULL, NULL, NULL, NULL, 'N'),
(36, 'srilankavisacorp.com', NULL, NULL, NULL, NULL, 'N'),
(37, 'srilankavisago.com', NULL, NULL, NULL, NULL, 'N'),
(38, 'myanmarvisacorp.com', NULL, NULL, NULL, NULL, 'N'),
(39, 'vietnamvisacorp.com', NULL, NULL, NULL, NULL, 'Y'),
(40, 'vietnamimmigrationcorp.com', NULL, NULL, NULL, NULL, 'N'),
(41, 'azerbaijanimmigration.com', NULL, NULL, NULL, NULL, 'Y'),
(43, 'taiwanimmigration.com.tw', NULL, NULL, NULL, NULL, 'Y'),
(45, 'indiavisacorp.com', NULL, NULL, NULL, NULL, 'N'),
(49, 'indianimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(50, 'egyptimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(51, 'kuwaitimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(52, 'qatarimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(54, 'myanmarimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(55, 'ugandaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(58, 'indianvisaonlinegov.com', NULL, NULL, NULL, NULL, 'N'),
(60, 'indiaimmigration.org', NULL, NULL, NULL, NULL, 'N'),
(61, 'turkeyvisaonlinegov.org', NULL, NULL, NULL, NULL, 'N'),
(63, 'turkishimmigration.org', NULL, NULL, NULL, NULL, 'N'),
(64, 'gistd.com', NULL, NULL, NULL, NULL, 'N'),
(65, 'australianimmigrationonline.org', NULL, NULL, NULL, NULL, 'Y'),
(66, 'indianvisagov.org', NULL, NULL, NULL, NULL, 'N'),
(69, 'indiaimmigration.org.in', NULL, NULL, NULL, NULL, 'N'),
(71, 'rwandaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(72, 'travelner.com', NULL, NULL, NULL, NULL, 'N'),
(76, 'laoevisa.org', NULL, NULL, NULL, NULL, 'Y'),
(77, 'thecanadianimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(81, 'tanzaniaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(82, 'ethiopiaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(83, 'uaeimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(84, 'ivorycoastimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(85, 'saudiarabiaimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(86, 'taiwanimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(87, 'auimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(88, 'australian-immigration.org', NULL, NULL, NULL, NULL, 'Y'),
(89, 'zambianimmigration.org', NULL, NULL, NULL, NULL, 'Y'),
(90, 'uaevisa.ae', NULL, NULL, NULL, NULL, 'Y'),
(91, 'newzealandimmigrationonline.org', NULL, NULL, NULL, NULL, 'Y'),
(92, 'visaonline.sg', NULL, NULL, NULL, NULL, 'Y'),
(93, 'evisa.com.sg', NULL, NULL, NULL, NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

DROP TABLE IF EXISTS `site_config`;
CREATE TABLE IF NOT EXISTS `site_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_site_id` int(11) NOT NULL,
  `config_local_gmt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_local_gmt_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_image` json DEFAULT NULL,
  `config_description` text COLLATE utf8_unicode_ci,
  `config_content` json DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state_trawick`
--

DROP TABLE IF EXISTS `state_trawick`;
CREATE TABLE IF NOT EXISTS `state_trawick` (
  `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `state_code` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `state_active` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `state_trawick`
--

INSERT INTO `state_trawick` (`state_id`, `state_name`, `state_code`, `state_active`) VALUES
(1, ' Alaska', 'AK', 'Y'),
(2, ' Alabama', 'AL', 'Y'),
(3, ' Arkansas', 'AR', 'Y'),
(4, ' Arizona', 'AZ', 'Y'),
(5, ' California', 'CA', 'Y'),
(6, ' Colorado', 'CO', 'Y'),
(7, ' Connecticut', 'CT', 'Y'),
(8, ' District of Columbia', 'DC', 'Y'),
(9, ' Delaware', 'DE', 'Y'),
(10, ' Florida', 'FL', 'Y'),
(11, ' Georgia', 'GA', 'Y'),
(12, ' Hawaii', 'HI', 'Y'),
(13, ' Iowa', 'IA', 'Y'),
(14, ' Idaho', 'ID', 'Y'),
(15, ' Illinois', 'IL', 'Y'),
(16, ' Indiana', 'IN', 'Y'),
(17, ' Kansas', 'KS', 'Y'),
(18, ' Kentucky', 'KY', 'Y'),
(19, ' Louisiana', 'LA', 'Y'),
(20, ' Massachusetts', 'MA', 'Y'),
(21, ' Maryland', 'MD', 'Y'),
(22, ' Maine', 'ME', 'Y'),
(23, ' Michigan', 'MI', 'Y'),
(24, ' Minnesota', 'MN', 'Y'),
(25, ' Missouri', 'MO', 'Y'),
(26, ' Mississippi', 'MS', 'Y'),
(27, ' Montana', 'MT', 'Y'),
(28, ' North Carolina', 'NC', 'Y'),
(29, ' North Dakota', 'ND', 'Y'),
(30, ' Nebraska', 'NE', 'Y'),
(31, ' New Hampshire', 'NH', 'Y'),
(32, ' New Jersey', 'NJ', 'Y'),
(33, ' New Mexico', 'NM', 'Y'),
(34, ' Nevada', 'NV', 'Y'),
(35, ' New York', 'NY', 'Y'),
(36, ' Ohio', 'OH', 'Y'),
(37, ' Oklahoma', 'OK', 'Y'),
(38, ' Oregon', 'OR', 'Y'),
(39, ' Pennsylvania', 'PA', 'Y'),
(40, ' Rhode Island', 'RI', 'Y'),
(41, ' South Carolina', 'SC', 'Y'),
(42, ' South Dakota', 'SD', 'Y'),
(43, ' Tennessee', 'TN', 'Y'),
(44, ' Texas', 'TX', 'Y'),
(45, ' Utah', 'UT', 'Y'),
(46, ' Virginia', 'VA', 'Y'),
(47, ' Vermont', 'VT', 'Y'),
(48, ' Washington', 'WA', 'Y'),
(49, ' Wisconsin', 'WI', 'Y'),
(50, ' West Virginia', 'WV', 'Y'),
(51, ' Wyoming', 'WY', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `type_point`
--

DROP TABLE IF EXISTS `type_point`;
CREATE TABLE IF NOT EXISTS `type_point` (
  `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type of point ID',
  `type_name` varchar(255) NOT NULL COMMENT 'Type of point Name',
  `type_from` float NOT NULL COMMENT 'Type of point From Points (Greater than or Equal to)',
  `type_active` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT 'Type of point Active (Y, N)',
  `type_points` int(10) UNSIGNED NOT NULL COMMENT 'Points received per purchased amount',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_point`
--

INSERT INTO `type_point` (`type_id`, `type_name`, `type_from`, `type_active`, `type_points`) VALUES
(1, 'Bronze', 0, 'Y', 1),
(2, 'Silver', 100, 'Y', 2),
(3, 'Gold', 250, 'Y', 3),
(4, 'Diamond', 500, 'Y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `type_user`
--

DROP TABLE IF EXISTS `type_user`;
CREATE TABLE IF NOT EXISTS `type_user` (
  `typeuser_id` int(11) NOT NULL AUTO_INCREMENT,
  `typeuser_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `typeuser_from_order` int(11) NOT NULL,
  `typeuser_to_order` int(11) NOT NULL,
  `typeuser_rate` float NOT NULL,
  `typeuser_active` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`typeuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_user`
--

INSERT INTO `type_user` (`typeuser_id`, `typeuser_name`, `typeuser_from_order`, `typeuser_to_order`, `typeuser_rate`, `typeuser_active`) VALUES
(1, 'Bronze level', 5, 9, 10, 'Y'),
(2, 'Silver level', 10, 14, 15, 'Y'),
(3, 'Gold level', 15, 19, 20, 'Y'),
(4, 'Diamond level', 20, 0, 25, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Name',
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Email',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'User Password',
  `user_tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telephone',
  `user_birthday` int(11) DEFAULT NULL,
  `user_country_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Country Code',
  `user_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Corresspondent Address',
  `user_skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Skype',
  `user_convience` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email_tel' COMMENT 'Can contact user via email, tel, skype?',
  `user_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'User role: user, admin, editor,...',
  `user_role_api` int(11) DEFAULT NULL,
  `user_insert_time` int(11) NOT NULL COMMENT 'User creation time',
  `user_active` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y' COMMENT 'Y: active, N: inactive',
  `user_payment_fails` int(11) DEFAULT '0',
  `user_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'User Avatar',
  `user_type` int(11) DEFAULT '0',
  `user_success_order` int(11) DEFAULT '0' COMMENT 'Number of successful orders',
  `user_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'User Token',
  `user_url_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Facebook Account',
  `user_telapi_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'number Response',
  `user_telapi_local_format` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'local format API Response',
  `user_telapi_international_format` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'international format API Response',
  `user_telapi_country_prefix` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'country prefix API Response',
  `user_telapi_country_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'country code API Response',
  `user_telapi_country_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'country name API Response',
  `user_telapi_location` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'location API Response',
  `user_telapi_carrier` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'carrier API Response',
  `user_telapi_line_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'line type API Response',
  `user_unsubscribe_token` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Token for Request Forgot Password',
  `user_token_time` int(11) DEFAULT '0' COMMENT 'Token Time for Request Forgot Password',
  PRIMARY KEY (`user_id`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=794333 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='User account';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_tel`, `user_birthday`, `user_country_id`, `user_address`, `user_skype`, `user_convience`, `user_role`, `user_role_api`, `user_insert_time`, `user_active`, `user_payment_fails`, `user_avatar`, `user_type`, `user_success_order`, `user_token`, `user_url_facebook`, `user_telapi_number`, `user_telapi_local_format`, `user_telapi_international_format`, `user_telapi_country_prefix`, `user_telapi_country_code`, `user_telapi_country_name`, `user_telapi_location`, `user_telapi_carrier`, `user_telapi_line_type`, `user_unsubscribe_token`, `user_reset_token`, `user_token_time`) VALUES
(2, 'Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ', 'haidang@mobcec.com', 'pbkdf2_sha256$10000$fd3ZMe6UzPvk$pOllqaP3MQYmpPd1zRgNeFvEBieSiqsH4RAPkHXFci8=', '0987667612', NULL, 'VN', 'HCMM', '', 'tel_email', 'admin', 12, 1671530842, 'Y', 0, NULL, 4, 119, 'Ey~zZaxH}GSy', NULL, '84987773137', '0987773137', '+84987773137', '+84', 'vn', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794162, 'Eiri', 'eiri.b@gisgl.com', 'pbkdf2_sha256$10000$fd3ZMe6UzPvk$pOllqaP3MQYmpPd1zRgNeFvEBieSiqsH4RAPkHXFci8=', '+84702984245', NULL, 'VN', 'adawdawdwa', '', 'tel_email', 'admin', NULL, 1623057114, 'Y', 0, NULL, 2, 12, NULL, NULL, '84702984245', '0702984245', '+84702984245', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnam Mobile Telecom Services Co. (VMS)', 'mobile', '/pZV7CqhryDU7KWhJiEPuCHrkP3mPw==', NULL, 0),
(794303, 'Nguyễn Thị Test', 'Test@mobcec.com', 'pbkdf2_sha256$10000$ukYg46Iz93cw$oAB4G5fLIrnqXbiUVXwRA3DGWIHcw6Sef1pa2mddbnI=', '+84373231705', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578719, 'Y', 0, NULL, 0, 1, 'hN5iDF2*7J(S', NULL, '84373231705', '0373231705', '+84373231705', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794304, 'nguyen thi test ', 'hieuthuyen@mobcec.com', 'pbkdf2_sha256$10000$Ltq26XyUbhbD$roFWaHuyQNg+VNAZqSTzNyGtGmeiTyxz6ifJHxfXc3M=', '+84373231705', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578719, 'Y', 0, NULL, 0, 14, '8A/@0$:tW_]t', NULL, '84373231705', '0373231705', '+84373231705', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794305, 'nguyen van test', 'huuhieu@bincg.com', 'pbkdf2_sha256$10000$6d4Tndj6HUiZ$KfK7A/jOsFXs5E6hIPHLTrUMOuyxmoBGcYtljCd89ZU=', '+84902204551', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578720, 'Y', 0, NULL, 0, 5, 'GR2f}}c<Q7(L', NULL, '84902204551', '0902204551', '+84902204551', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnam Mobile Telecom Services Co. (VMS)', 'mobile', NULL, NULL, 0),
(794306, 'Tham Le', 'thamle@bincg.com', 'pbkdf2_sha256$10000$a7V3at8FGNR9$o+4nW/1NOFEuv+d4ZhZj0lqvWXYSkLbpuxaKEhhHUMw=', '+84906964144', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578721, 'Y', 0, NULL, 0, 12, '1jKLCPLvb^#j', NULL, '84906964144', '0906964144', '+84906964144', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnam Mobile Telecom Services Co. (VMS)', 'mobile', NULL, NULL, 0),
(794307, 'ngo', 'ngokimanh97@gmail.com', 'pbkdf2_sha256$10000$WmFFxaaxh8lh$w+tZHR2QkTvfJP7mNlTeVOc+ka7qtS0wSMoHMdVdySA=', '+84983770088', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578721, 'Y', 0, NULL, 0, 1, 'dl793bmyIZ+z', NULL, '84983770088', '0983770088', '+84983770088', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794308, 'Jason Peter', 'kim@gmail.com', 'pbkdf2_sha256$10000$WZhW3V7cWYhz$jmsSjersTEpxNMOMpFeXErJXNt+PlQ0BdMYVb+Qu2eQ=', '+84983776088', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578722, 'Y', 0, NULL, 0, 1, '0<rE?w96^@b^', NULL, '84983776088', '0983776088', '+84983776088', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794309, 'Vivian ', 'test176@gmail.com', 'pbkdf2_sha256$10000$OSbARsv6h15C$07RyG7I0bJ91G+m1/MqjvELO5JxfxnZfPHvQuS2RbSs=', '+84869954598', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578723, 'Y', 0, NULL, 0, 1, 'fR]i3Ss>lJ.q', NULL, '84869954598', '0869954598', '+84869954598', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Viettel Corp.', 'mobile', NULL, NULL, 0),
(794310, 'Lauren Tran', 'lauren.tr@gisgl.com', 'pbkdf2_sha256$10000$fAY6Xn0NnBEN$LvO1yk1oJFcJ2QWK2qxElsN9yYImOl78Bvq0CvhgYRs=', '+84922536699', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578723, 'Y', 0, NULL, 0, 2, 'wJ~Q*1@U!M)h', NULL, '84922536699', '0922536699', '+84922536699', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnamobile JSC', 'mobile', NULL, NULL, 0),
(794311, 'test', 'kenya123@gmail.com', 'pbkdf2_sha256$10000$ddXO1QiKzumx$ghyzl0DeYxqK69MyfWgp5eZ/iBw+7tt5dT6s+MPz2Ik=', '+84838121195', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578724, 'Y', 0, NULL, 0, 1, '&Ca)1XaqA@){', NULL, '84838121195', '0838121195', '+84838121195', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnam Telecom Services Co. (GPC)', 'mobile', NULL, NULL, 0),
(794312, 'Test', 'fghgv@gmail.com', 'pbkdf2_sha256$10000$5XCXTaf0NoJg$aiDq4MrlAd16J09FJk4WY6uoZtVvElPTYMyXIercVuc=', '+84898456789', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'AbapIXG3kPoH', NULL, '84898456789', '0898456789', '+84898456789', '+84', 'VN', 'Viet Nam (Socialist Republic of)', '', 'Vietnam Mobile Telecom Services Co. (VMS)', 'mobile', NULL, NULL, 0),
(794313, 'Tham', 'thamle@bin.com.vn', 'pbkdf2_sha256$10000$Gn4jpxo3zxaQ$69k2EG0LrfElvVdGNiM4+qA8iBdDAz1xfBj6cm37XwE=', '+84906964144', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 4, 'jS{Zk1^_~lx9', NULL, NULL, NULL, '+84906964144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794314, 'Huynh', 'nhuantri@mobcec.com', 'pbkdf2_sha256$10000$yXUR5Ohj8caR$6A/v98yNla/lwVjt/HvkXJYHTj338LqO1l90oTiyins=', '+84961919171', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 18, 'HcV^:Mz80ozw', NULL, NULL, NULL, '+84961919171', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794315, 'bbbb', 'thuyhuong@mobcec.com', 'pbkdf2_sha256$10000$egz2tmwat3U4$E3hOkEOgkxCzJw7PXgxpQyvdcvGov+FIGkJEoGAsi5U=', '+84354450719', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 5, 'Ad%|z|pmHL%:', NULL, NULL, NULL, '+84354450719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794316, 'Huong', 'thuyhuong1@mobcec.com', 'pbkdf2_sha256$10000$0qFMARVVvida$X/HaX3vwGrJc0Thw/fKZbML5es0WwxlPASb1PM1CmTs=', '+84357897894', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, '^w*vT%;y_o0z', NULL, NULL, NULL, '+84357897894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794317, 'Huong1', 'thuyhuong7@mobcec.com', 'pbkdf2_sha256$10000$mYBcDDqRAc2w$4HXmjxJdi/LJILtuJUZTtrzuHwo2N4NIQ1d/wBhWjrg=', '+84357897894', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 2, 'W&m[.4qka9T?', NULL, NULL, NULL, '+84357897894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794318, 'Huong1', 'thuyhuong8@mobcec.com', 'pbkdf2_sha256$10000$ZMZKN7wh4fkD$TeFWDSVQyr7RUukEaXCDYVP3Om8Cb1DD3T4xIOtdEXI=', '+84357899874', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'i8IQ{0uBmcX1', NULL, NULL, NULL, '+84357899874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794319, 'Huong1', 'thuyhuong9@mobcec.com', 'pbkdf2_sha256$10000$ScqizXMIMP2h$ZEglkuk5P58PuvfZcPn9e/8XnpGLGKmUvb3sJO5bM9s=', '+84357899874', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'v*}><bKzZ)c1', NULL, NULL, NULL, '+84357899874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794320, 'Huong1', 'thuyhuong10@mobcec.com', 'pbkdf2_sha256$10000$mLyIUn7twMpO$pSNhZjT4VDQ8bvDXTLi1twMDgt6Xvcn4ycGKp0eXa9w=', '+84354450789', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, '^<5+;FS(9JO!', NULL, NULL, NULL, '+84354450789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794321, 'Nguyen ngoc chinh', 'ngocchinh@mobcec.com', 'pbkdf2_sha256$10000$n85tUBvC7lD6$MIsZ6UaG3Ze0IqZ5J6oLbQO/ADnTDMWgz4CSByVL65U=', '+84909123456', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'Ef1Y^|./|<{$', NULL, NULL, NULL, '+84909123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794322, 'thuy linh', 'thuylinh@yopmail.com', 'pbkdf2_sha256$10000$nL35YT7lJdS8$6HYnGkdwa1E5g7TMsh3d2+PVhqXv5AKLWyuJUbYus4U=', '+84333511603', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'wks&V$>ztfm+', NULL, NULL, NULL, '+84333511603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794323, 'thuy linh', 'linhnguyen@mobcec.com', 'pbkdf2_sha256$10000$fJoCO2iKoQQZ$rq6uxgSQ8IhEO8nkwxieBAWMFdomos4E/OXPSVxbbXI=', '+84333511603', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 10, 'ha!njk{j;Hco', NULL, NULL, NULL, '+84333511603', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794324, 'user', 'jenna.tr@gisgl.com', 'pbkdf2_sha256$10000$pevvOiDQi9Ak$3zlm17xwtLn3lfppfWfxI0W0iGnoZ7ePmVzxhTfiZOo=', '+84382536699', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 4, 'q5zN%}rbV:[&', NULL, NULL, NULL, '+84382536699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794325, 'phuong', 'phuongdinh@mobcec.com', 'pbkdf2_sha256$10000$DWU4sqiIaQKz$Wk8oQg9yLy4bhPxs6K9oj8iZxnOp5jBzvdKWM5MpvZE=', '+84975698847', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 8, 'U@37)9g[j+[u', NULL, NULL, NULL, '+84975698847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794326, 'dang1', 'testnoemail@gmail.com', 'pbkdf2_sha256$10000$qkj1bJSawFbk$/4ucWORoiTkxN/hrd9txdwL2iyzchsAWxcUwVoWtKe8=', '+84987773122', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696578725, 'Y', 0, NULL, 0, 1, 'w<xc8B<H1T}+', NULL, NULL, NULL, '+84987773122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794327, 'dang1', 'change1@gmail.com', 'pbkdf2_sha256$10000$7CFuC0cvjW4c$VsVuDo2mi6vi5d9y8Zm57wLyGO4E69hzsaZDFILHvyk=', '+84987773123', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696583437, 'Y', 0, NULL, 0, 1, '(EuSu?Y_C,+>', NULL, NULL, NULL, '+84987773123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794328, 'dang1', 'change2@gmail.com', 'pbkdf2_sha256$10000$5uGNUSUujsxp$fQZ2PuqLpVZN1iIw9ggX7qsOludd7lU5qwLHTsWaAIs=', '+84987773123', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696583437, 'Y', 0, NULL, 0, 1, 'VKs9a<:7lyk9', NULL, NULL, NULL, '+84987773123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794329, 'dang1', 'change3@gmail.com', 'pbkdf2_sha256$10000$WovY9HWD9Jpd$S32xicvHoJ7MG8asWjvUComZcWrqzcPgKJssn0wACdA=', '+84987773123', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696583437, 'Y', 0, NULL, 0, 1, '~j14/zo~:wbb', NULL, NULL, NULL, '+84987773123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794330, 'dang1', 'change4@gmail.com', 'pbkdf2_sha256$10000$2dk7aBcjwKNX$qexQQ5uZOAsz543bHFpBXVJzIa+PNxnbmkS72lLgmSI=', '+84987773123', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696583438, 'Y', 0, NULL, 0, 1, '@8QLJAAAj#8d', NULL, NULL, NULL, '+84987773123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794331, 'aaa79231', 'aaa79231@zbock.com', 'pbkdf2_sha256$10000$6HWNbVjNcAV8$QFp0GYHbGzZf6b3hdIqPDfnssVRsvWrPzS7lFkkwb5Y=', '84902204551', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696990152, 'Y', 0, NULL, 0, 0, 'a$ApbZL0A2[C', NULL, NULL, NULL, '+84902204551', NULL, 'VN', NULL, NULL, NULL, NULL, NULL, NULL, 0),
(794332, 'kokokoko999', 'kokokoko999@zbock.com', 'pbkdf2_sha256$10000$AHSYwRbr5w1H$qfR37mmpXJ4/N7IdWGK98+qpSgHlQrzduJh9FPQAito=', '84902204551', NULL, 'VN', '', '', 'email_tel', 'user', NULL, 1696994520, 'Y', 0, NULL, 0, 0, 'S^[1n|r:7AP(', NULL, NULL, NULL, '+84902204551', NULL, 'VN', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_ads`
--

DROP TABLE IF EXISTS `user_ads`;
CREATE TABLE IF NOT EXISTS `user_ads` (
  `user_email` varchar(255) NOT NULL,
  `user_site_id` tinyint(4) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_gclick` text,
  `user_gclick_insert_time` int(11) DEFAULT NULL,
  `user_last_payment_time` int(11) DEFAULT NULL,
  `user_total_payment` float NOT NULL DEFAULT '0',
  `user_step` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_email`,`user_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_ads`
--

INSERT INTO `user_ads` (`user_email`, `user_site_id`, `user_id`, `user_gclick`, `user_gclick_insert_time`, `user_last_payment_time`, `user_total_payment`, `user_step`) VALUES
('dangqc2001@gmail.com', 90, 'OpgbdKWC89e6i1MMSGSTP870NOfFvlLl+Qriw4/96rw=', NULL, NULL, NULL, 0, 'Step 1'),
('haidang@mobcec.com', 90, '2', NULL, NULL, NULL, 0, 'Step 1'),
('huuhieu1@bincg.com', 90, 'KgHxP9qG7u3tpF17LfWHdCXlkoqaMTpRzt3LQ1nFe14=', '123', NULL, 1691477845, 916, 'Step 2'),
('huuhieu2@bincg.com', 90, 'Az0THlYLL2rAFpASK1R6DEt8TZ2p6+n/njvXv0cKmUg=', '123', 1691636162, NULL, 0, 'Step 1'),
('huuhieu3@bincg.com', 90, 'QJ4+iRlpfCffIeqQQxme1EHHBP+fpCbyimgH+7o00ng=', '123', 1691651128, NULL, 0, 'Step 1'),
('huuhieu@bincg.com', 90, '867948', '123', NULL, 1691647436, 1526.26, 'Step 2');

-- --------------------------------------------------------

--
-- Table structure for table `user_communication_channel`
--

DROP TABLE IF EXISTS `user_communication_channel`;
CREATE TABLE IF NOT EXISTS `user_communication_channel` (
  `communication_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Communication ID',
  `communication_user_id` bigint(20) NOT NULL COMMENT 'Value of user_id in visa_user table',
  `communication_user_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User phone',
  `communication_user_ip_country_code` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User Country Code',
  `communication_user_email_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User Email 2',
  `communication_user_phone_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User phone 2',
  `communication_user_communication_channel_id` int(11) DEFAULT NULL COMMENT 'User Communication Channel ID',
  `communication_user_communication_channel_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User Communication Channel Name',
  `communication_user_communication_channel_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'User Communication Channel Number',
  `communication_insert_time` int(11) NOT NULL,
  `communication_site_id` int(11) NOT NULL,
  PRIMARY KEY (`communication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Communication';

--
-- Dumping data for table `user_communication_channel`
--

INSERT INTO `user_communication_channel` (`communication_id`, `communication_user_id`, `communication_user_phone`, `communication_user_ip_country_code`, `communication_user_email_2`, `communication_user_phone_2`, `communication_user_communication_channel_id`, `communication_user_communication_channel_name`, `communication_user_communication_channel_number`, `communication_insert_time`, `communication_site_id`) VALUES
(1, 792673, '', NULL, NULL, NULL, NULL, NULL, NULL, 1696578718, 33),
(2, 781681, NULL, 'VN', 'huuhieu@bincg.com', NULL, NULL, NULL, NULL, 1696578718, 33),
(3, 868014, '+84357897891', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578718, 33),
(4, 868015, '+84354787895', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578718, 33),
(5, 868130, '+84975698847', 'VN', NULL, NULL, 1, '', NULL, 1696578718, 33),
(6, 868009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1696578718, 33),
(7, 794303, '+84373231705', NULL, NULL, NULL, NULL, NULL, NULL, 1696578719, 33),
(8, 794304, '+84373231705', NULL, NULL, NULL, NULL, NULL, NULL, 1696578719, 33),
(9, 794305, '+84902204551', NULL, NULL, NULL, NULL, NULL, NULL, 1696578720, 33),
(10, 794306, '+84906964144', NULL, NULL, NULL, NULL, NULL, NULL, 1696578721, 33),
(11, 794307, '+84983770088', NULL, NULL, NULL, NULL, NULL, NULL, 1696578721, 33),
(12, 794308, '+84983776088', NULL, NULL, NULL, NULL, NULL, NULL, 1696578722, 33),
(13, 794309, '+84869954598', NULL, NULL, NULL, NULL, NULL, NULL, 1696578723, 33),
(14, 794310, '+84922536699', NULL, NULL, NULL, NULL, NULL, NULL, 1696578723, 33),
(15, 794311, '+84838121195', NULL, NULL, NULL, NULL, NULL, NULL, 1696578724, 33),
(16, 794312, '+84898456789', NULL, NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(17, 794305, '+84902204551', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(18, 794306, '+84906964144', 'VN', 'thamle@bincg.com', '+84906964144', 3, NULL, '+84906964144', 1696578725, 33),
(19, 794306, '+84906964144', 'VN', 'thamle1@bincg.com', '+84906964143', 3, NULL, '+84906964144', 1696578725, 33),
(20, 794306, '+84906964144', 'VN', NULL, NULL, 3, NULL, '+84906964144', 1696578725, 33),
(21, 794313, '+84906964144', 'VN', 'thamle@mobcec.com', '+84906964143', 3, 'WhatsApp Number', '+84906964144', 1696578725, 33),
(22, 794304, '+84373231705', 'VN', 'hieuthuyen@mobcec.com', '+61280114579', 5, 'WeChat', '+6594711304', 1696578725, 33),
(23, 794304, '+84373231705', 'VN', 'hieuthuyen@mobcec.com', '+84373231705', 7, 'fsdfs', '1211515', 1696578725, 33),
(24, 794304, '+84376565655', 'VN', 'hieuthuyen@mobcec.com', '+84769073410', 7, 'dfgdf', 'live:.cid.289b530a0e9a6703', 1696578725, 33),
(25, 794304, '+84373231705', 'VN', 'hieuthuyen123@mobcec.com', '+84373231706', 3, 'WhatsApp Number', '+84373231705', 1696578725, 33),
(26, 794304, '+84326569623', 'VN', 'hieuthuyen123564@mobcec.com', '+84985663235', 7, 'Facebook', 'yêu màu hồng', 1696578725, 33),
(27, 794306, '+84906964144', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(28, 794304, '+84373231705', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(29, 794314, '+84961919171', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(30, 794304, '+84373231705', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(31, 794313, '+84906964144', 'VN', 'thamle@bincg.com', NULL, 3, 'WhatsApp Number', '+84906964144', 1696578725, 33),
(32, 794314, '+84961919171', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(33, 794314, '+84915112345', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(34, 794314, '+84931313131', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(35, 794314, '+84913131313', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(36, 794314, '+84931646464', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(37, 794314, '+84911313131', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(38, 794314, '+84913464646', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(39, 794314, '+84946464642', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(40, 794314, '+84946313161', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(41, 794315, '+84354450719', 'VN', 'thuyhuong@mobcec.com', '+84354450719', 1, 'Skype ID', 'live:.cid.e8ec68a0c21693b8', 1696578725, 33),
(42, 794315, '+84354450719', 'VN', 'thuyhuong@mobcec.com', '+84354450719', NULL, NULL, NULL, 1696578725, 33),
(43, 794314, '+8469757548', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(44, 794316, '+84357897894', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(45, 794317, '+84357897894', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(46, 794317, '+842354450719', 'VN', 'thuyhuong18@mobcec.com', NULL, NULL, NULL, NULL, 1696578725, 33),
(47, 794318, '+84357899874', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(48, 794319, '+84357899874', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(49, 794320, '+84354450789', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(50, 794314, '+84979464646', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(51, 794321, '+84909123456', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(52, 794322, '+84333511603', 'VN', 'thuylinh1@yopmail.com', '+84333511604', 3, 'WhatsApp Number', '+84333511603', 1696578725, 33),
(53, 794323, '+84333511603', 'VN', NULL, NULL, 4, 'Viber', '+84333511603', 1696578725, 33),
(54, 794313, '+84906964144', 'VN', 'thamle@bincg.com', NULL, NULL, NULL, NULL, 1696578725, 33),
(55, 794324, '+84382536699', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(56, 794324, '+84399422329', 'VN', NULL, NULL, 3, 'WhatsApp Number', '+84399422329', 1696578725, 33),
(57, 794310, '+84382536699', 'VN', 'lauren.tr@gisgl.com', NULL, NULL, NULL, NULL, 1696578725, 33),
(58, 794315, '+84354450123', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(59, 794325, '+84975698847', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(60, 794324, '+84399422329', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(61, 794325, '+84975698847', 'VN', 'phuongdinh@mobcec.com', NULL, NULL, NULL, NULL, 1696578725, 33),
(62, 794315, '+84354450719', 'VN', NULL, NULL, NULL, NULL, NULL, 1696578725, 33),
(63, 794323, '+84333511602', 'VN', 'linhnguyen@mobcec.com', NULL, NULL, NULL, NULL, 1696578725, 33),
(64, 794326, '+84987773122', 'VN', 'testnoemailtmp2@gmail.com', NULL, 4, 'Viber', '+84987773122', 1696578725, 33),
(65, 794323, '+84333511602', 'VN', 'linhnguyen@mobcec.com', NULL, 3, 'WhatsApp Number', '+84333511602', 1696578725, 33),
(66, 794313, '+84906964144', 'VN', 'thamle@bincg.com', NULL, 6, 'Telegram', '+84906964144', 1696578725, 33),
(67, 794323, '+84333511602', 'VN', 'linhnguyen@mobcec.com', NULL, 6, 'Telegram', '+84333511602', 1696578725, 33),
(68, 794251, '+84987773123', 'VN', NULL, NULL, 3, 'WhatsApp Number', '+84987773123', 1696583360, 50),
(69, 794327, '+84987773123', 'VN', NULL, NULL, 2, 'Signal Number', '+84987773123', 1696583437, 50),
(70, 794328, '+84987773123', 'VN', NULL, NULL, 3, 'WhatsApp Number', '+84987773123', 1696583437, 50),
(71, 794329, '+84987773123', 'VN', NULL, NULL, 3, 'WhatsApp Number', '+84987773123', 1696583437, 50),
(72, 794330, '+84987773123', 'VN', NULL, NULL, 3, 'WhatsApp Number', '+84987773123', 1696583438, 50),
(73, 794331, '+84902204551', 'VN', '', '', 2, 'Signal Number', '+84902204551', 1696990152, 50),
(74, 794332, '+84902204551', 'VN', 'aaaassssss@mobcec.com', '+61280114579', 1, 'Skype ID', '998888', 1696994521, 50),
(75, 0, '+84902204551', '', 'hoanghassidang.dev@gmail.com', '', 0, '', '', 1698117730, 33),
(76, 2, '+84902204551', '', '', '', 0, '', '', 1698118303, 33),
(77, 2, '+84902204551', '', '', '', 0, '', '', 1698118306, 33),
(78, 0, '+84902204551', '', '', '', 0, '', '', 1698118338, 33);

-- --------------------------------------------------------

--
-- Table structure for table `user_cron_promotion`
--

DROP TABLE IF EXISTS `user_cron_promotion`;
CREATE TABLE IF NOT EXISTS `user_cron_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_site_id` tinyint(4) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_promotion_template_types` varchar(255) DEFAULT NULL COMMENT 'Template Promotion sent to user',
  `user_promotion_log` text,
  `user_promotion_code_expires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_cron_promotion`
--

INSERT INTO `user_cron_promotion` (`id`, `user_id`, `user_site_id`, `user_email`, `user_promotion_template_types`, `user_promotion_log`, `user_promotion_code_expires`) VALUES
(94, 2, 49, NULL, 'RM_2,RM_3,RM_4,RM_5,RM_8,RM_9,RM_10,RM_2,RM_3,RM_4,RM_5,RM_8,RM_9,RM_10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_point`
--

DROP TABLE IF EXISTS `user_point`;
CREATE TABLE IF NOT EXISTS `user_point` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `user_points` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User current points',
  `user_type_point_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Type of points ID',
  `user_point_total` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User total points',
  `user_order_total` float UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User total orders',
  `user_point_active_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_point`
--

INSERT INTO `user_point` (`user_id`, `user_points`, `user_type_point_id`, `user_point_total`, `user_order_total`, `user_point_active_date`) VALUES
(549751, 374, 4, 1114, 4157, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_content` text COLLATE utf8_unicode_ci,
  `role_active` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'Y',
  `role_insert_date` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`, `role_content`, `role_active`, `role_insert_date`) VALUES
(12, 'Admin gvc', 'awdawdwadawssss12312321', 'Y', 1694501662),
(14, 'Editor', NULL, 'Y', 1694501685),
(13, 'Sale', NULL, 'Y', 1694501676),
(15, 'Marketing', NULL, 'Y', 1694501694);

-- --------------------------------------------------------

--
-- Table structure for table `user_role_detail`
--

DROP TABLE IF EXISTS `user_role_detail`;
CREATE TABLE IF NOT EXISTS `user_role_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `detail_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail_limit` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `detail_insert_date` int(11) NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=928 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role_detail`
--

INSERT INTO `user_role_detail` (`detail_id`, `role_id`, `detail_url`, `detail_name`, `detail_method`, `detail_limit`, `detail_insert_date`) VALUES
(919, 12, 'api/backoffice/v1/order/send-email/log/view', 'order.send-email.view-log', 'POST', 'N', 1696993655),
(60, 15, 'api/v1/payment/receipt', 'payment.receipt', 'POST', 'N', 1694507097),
(59, 15, 'api/v1/payment/find', 'payment.find', 'POST', 'N', 1694507097),
(58, 15, 'api/v1/payment/all', 'payment.getlist', 'POST', 'Y', 1694507097),
(57, 15, 'api/v1/order/sendemail/log/view', 'order.sendemail.viewlog', 'POST', 'N', 1694507097),
(55, 15, 'api/v1/order/sendemail', 'order.sendemail.rendercontent', 'POST', 'N', 1694507097),
(56, 15, 'api/v1/order/sendemail/log', 'order.sendemail.renderlog', 'POST', 'N', 1694507097),
(54, 15, 'api/v1/order/receipt', 'order.receipt', 'POST', 'N', 1694507097),
(53, 15, 'api/v1/order/find', 'order.find', 'POST', 'N', 1694507097),
(52, 15, 'api/v1/order/all', 'order.getlist', 'POST', 'Y', 1694507097),
(926, 12, 'api/backoffice/v1/support-ads/log', 'support-ads.log', 'POST', 'N', 1696993655),
(925, 12, 'api/backoffice/v1/support-ads/export', 'support-ads.export', 'POST', 'N', 1696993655),
(924, 12, 'api/backoffice/v1/payment/receipt', 'payment.receipt', 'POST', 'N', 1696993655),
(923, 12, 'api/backoffice/v1/payment/find', 'payment.find', 'POST', 'N', 1696993655),
(922, 12, 'api/backoffice/v1/payment/list', 'payment.get-list', 'GET|HEAD', 'N', 1696993655),
(920, 12, 'api/backoffice/v1/order-tmp/list', 'order-tmp.get-list', 'GET|HEAD', 'N', 1696993655),
(921, 12, 'api/backoffice/v1/order-tmp/find', 'order-tmp.find', 'POST', 'N', 1696993655),
(138, 13, 'api/v1/support-ads/export', NULL, 'POST', 'N', 1694575837),
(139, 13, 'api/v1/support-ads/log', NULL, 'POST', 'N', 1694575837),
(140, 13, 'api/v1/exchange-data-nologin', NULL, 'POST', 'N', 1694575837),
(927, 12, 'api/backoffice/v1/exchange-data-no-login', 'exchange-data-no-login', 'POST', 'N', 1696993655),
(917, 12, 'api/backoffice/v1/order/send-email', 'order.send-email.render-content', 'POST', 'N', 1696993655),
(918, 12, 'api/backoffice/v1/order/send-email/log', 'order.send-email.render-log', 'POST', 'N', 1696993655),
(916, 12, 'api/backoffice/v1/order/receipt', 'order.receipt', 'POST', 'N', 1696993655),
(915, 12, 'api/backoffice/v1/order/find', 'order.find', 'POST', 'N', 1696993655),
(914, 12, 'api/backoffice/v1/order/list', 'order.get-list', 'GET|HEAD', 'N', 1696993655),
(913, 12, 'api/backoffice/v1/permission/routes/save', 'permission.routes.save', 'POST', 'N', 1696993655),
(912, 12, 'api/backoffice/v1/permission/routes/list', 'permission.routes.get-list', 'GET|HEAD', 'N', 1696993655),
(911, 12, 'api/backoffice/v1/permission/role/delete', 'permission.role.delete', 'DELETE', 'N', 1696993655),
(906, 12, 'api/backoffice/v1/permission/role/list', 'permission.role.get-list', 'GET|HEAD', 'N', 1696993655),
(907, 12, 'api/backoffice/v1/permission/role/all', 'permission.role.get-all', 'GET|HEAD', 'N', 1696993655),
(908, 12, 'api/backoffice/v1/permission/role/create', 'permission.role.create', 'POST', 'N', 1696993655),
(909, 12, 'api/backoffice/v1/permission/role/find', 'permission.role.find', 'GET|HEAD', 'N', 1696993655),
(910, 12, 'api/backoffice/v1/permission/role/update', 'permission.role.update', 'POST', 'N', 1696993655),
(905, 12, 'api/backoffice/v1/user/role/update', 'user.role.update', 'POST', 'N', 1696993655);

-- --------------------------------------------------------

--
-- Table structure for table `user_site`
--

DROP TABLE IF EXISTS `user_site`;
CREATE TABLE IF NOT EXISTS `user_site` (
  `user_id` bigint(20) NOT NULL COMMENT 'User ID',
  `site_id` tinyint(3) UNSIGNED NOT NULL COMMENT 'Site ID',
  `user_is_update` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`user_id`,`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_site`
--

INSERT INTO `user_site` (`user_id`, `site_id`, `user_is_update`) VALUES
(2, 6, 'N'),
(2, 7, 'N'),
(2, 8, 'N'),
(2, 10, 'N'),
(2, 11, 'N'),
(2, 13, 'N'),
(2, 34, 'N'),
(2, 38, 'N'),
(2, 39, 'N'),
(2, 41, 'N'),
(2, 43, 'N'),
(2, 45, 'N'),
(2, 49, 'N'),
(2, 50, 'N'),
(2, 51, 'N'),
(2, 52, 'N'),
(2, 55, 'N'),
(2, 65, 'N'),
(2, 71, 'N'),
(2, 75, 'N'),
(2, 76, 'N'),
(2, 77, 'N'),
(2, 78, 'N'),
(2, 81, 'N'),
(2, 82, 'N'),
(2, 83, 'N'),
(2, 84, 'N'),
(2, 85, 'N'),
(3, 6, 'N'),
(3, 7, 'N'),
(3, 10, 'N'),
(3, 11, 'N'),
(3, 13, 'N'),
(3, 34, 'N'),
(3, 39, 'N'),
(3, 43, 'N'),
(3, 50, 'N'),
(3, 51, 'N'),
(3, 52, 'N'),
(3, 54, 'N'),
(3, 55, 'N'),
(3, 71, 'N'),
(3, 76, 'N'),
(3, 77, 'N'),
(3, 81, 'N'),
(3, 82, 'N'),
(3, 83, 'N'),
(3, 84, 'N'),
(3, 85, 'N'),
(4, 10, 'N'),
(4, 11, 'N'),
(4, 13, 'N'),
(4, 39, 'N'),
(4, 43, 'N'),
(4, 52, 'N'),
(4, 55, 'N'),
(4, 65, 'N'),
(4, 71, 'N'),
(4, 77, 'N'),
(4, 81, 'N'),
(4, 83, 'N'),
(4, 85, 'N'),
(794163, 10, 'N'),
(794163, 11, 'N'),
(794163, 13, 'N'),
(794163, 39, 'N'),
(794163, 43, 'N'),
(794163, 52, 'N'),
(794163, 55, 'N'),
(794163, 71, 'N'),
(794163, 77, 'N'),
(794163, 81, 'N'),
(794163, 83, 'N'),
(794163, 85, 'N'),
(794173, 6, 'N'),
(794174, 6, 'N'),
(794174, 34, 'N'),
(794175, 6, 'N'),
(794175, 34, 'N'),
(794177, 6, 'N'),
(794177, 7, 'N'),
(794177, 10, 'N'),
(794177, 11, 'N'),
(794177, 13, 'N'),
(794177, 33, 'N'),
(794177, 34, 'N'),
(794177, 39, 'N'),
(794177, 43, 'N'),
(794177, 50, 'N'),
(794177, 51, 'N'),
(794177, 52, 'N'),
(794177, 54, 'N'),
(794177, 55, 'N'),
(794177, 65, 'N'),
(794177, 71, 'N'),
(794177, 76, 'N'),
(794177, 77, 'N'),
(794177, 81, 'N'),
(794177, 82, 'N'),
(794177, 83, 'N'),
(794177, 84, 'N'),
(794177, 85, 'N'),
(794178, 6, 'N'),
(794178, 34, 'N'),
(794179, 6, 'N'),
(794179, 34, 'N'),
(794188, 6, 'N'),
(794188, 34, 'N'),
(794189, 6, 'N'),
(794189, 34, 'N'),
(794190, 6, 'N'),
(794190, 34, 'N'),
(794191, 6, 'N'),
(794191, 34, 'N'),
(794192, 6, 'N'),
(794192, 34, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `user_site_info`
--

DROP TABLE IF EXISTS `user_site_info`;
CREATE TABLE IF NOT EXISTS `user_site_info` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_site_id` tinyint(4) NOT NULL,
  `user_insert_time` int(11) NOT NULL,
  `user_is_subscribe` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`user_id`,`user_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_site_info`
--

INSERT INTO `user_site_info` (`user_id`, `user_site_id`, `user_insert_time`, `user_is_subscribe`) VALUES
(2, 6, 1645430421, 'N'),
(2, 7, 1658908252, 'Y'),
(2, 10, 1645515123, 'Y'),
(2, 11, 1655972212, 'Y'),
(2, 13, 1657526428, 'Y'),
(2, 33, 1617172369, 'Y'),
(2, 34, 1673318762, 'Y'),
(2, 39, 1653444947, 'Y'),
(2, 41, 1659057729, 'Y'),
(2, 43, 1655085348, 'Y'),
(2, 49, 1668391000, 'Y'),
(2, 50, 1658884087, 'Y'),
(2, 51, 1669093030, 'Y'),
(2, 52, 1342208324, 'Y'),
(2, 54, 1655277166, 'Y'),
(2, 55, 1658305200, 'Y'),
(2, 65, 1655277837, 'Y'),
(2, 71, 1658990906, 'Y'),
(2, 76, 1657332072, 'Y'),
(2, 77, 1655716588, 'Y'),
(2, 81, 1677543924, 'Y'),
(2, 82, 1645013217, 'Y'),
(2, 83, 1653876355, 'Y'),
(2, 84, 1661920232, 'Y'),
(2, 85, 1664876548, 'Y'),
(2, 86, 1675739309, 'Y'),
(2, 87, 1678694219, 'Y'),
(2, 89, 1676428503, 'Y'),
(2, 90, 1679366192, 'Y'),
(2, 91, 1689128677, 'Y'),
(2, 94, 1694399452, 'Y'),
(3, 6, 1645500394, 'Y'),
(3, 7, 1342208324, 'Y'),
(3, 10, 1342208324, 'Y'),
(3, 11, 1342208324, 'Y'),
(3, 13, 1342208324, 'Y'),
(3, 33, 1645092139, 'N'),
(3, 34, 1342208324, 'Y'),
(3, 39, 1342208324, 'Y'),
(3, 43, 1342208324, 'Y'),
(3, 49, 1660794491, 'Y'),
(3, 50, 1342208324, 'Y'),
(3, 51, 1342208324, 'Y'),
(3, 52, 1342208324, 'Y'),
(3, 54, 1342208324, 'Y'),
(3, 55, 1342208324, 'Y'),
(3, 71, 1342208324, 'Y'),
(3, 76, 1342208324, 'Y'),
(3, 77, 1342208324, 'Y'),
(3, 81, 1342208324, 'Y'),
(3, 82, 1645092040, 'Y'),
(3, 83, 1342208324, 'Y'),
(3, 84, 1342208324, 'Y'),
(3, 85, 1342208324, 'Y'),
(4, 10, 1342208324, 'Y'),
(4, 11, 1342208324, 'Y'),
(4, 13, 1342208324, 'Y'),
(4, 39, 1342208324, 'Y'),
(4, 41, 1659057729, 'Y'),
(4, 43, 1342208324, 'Y'),
(4, 52, 1342208324, 'Y'),
(4, 55, 1342208324, 'Y'),
(4, 65, 1342208324, 'Y'),
(4, 71, 1342208324, 'Y'),
(4, 77, 1342208324, 'Y'),
(4, 81, 1342208324, 'Y'),
(4, 83, 1342208324, 'Y'),
(4, 85, 1342208324, 'Y'),
(794162, 6, 1675913582, 'Y'),
(794162, 7, 1680071347, 'Y'),
(794162, 10, 1683968316, 'Y'),
(794162, 13, 1684833703, 'Y'),
(794162, 33, 1680228782, 'Y'),
(794162, 34, 1685342736, 'Y'),
(794162, 39, 1681453608, 'Y'),
(794162, 41, 1684827791, 'Y'),
(794162, 49, 1684899195, 'Y'),
(794162, 50, 1675761453, 'Y'),
(794162, 51, 1684481948, 'Y'),
(794162, 52, 1685428837, 'Y'),
(794162, 54, 1684652191, 'Y'),
(794162, 55, 1684727721, 'Y'),
(794162, 71, 1684138358, 'Y'),
(794162, 76, 1684489447, 'Y'),
(794162, 77, 1684465447, 'Y'),
(794162, 81, 1684657305, 'Y'),
(794162, 82, 1684742706, 'Y'),
(794162, 83, 1684217826, 'Y'),
(794162, 86, 1683089502, 'Y'),
(794162, 87, 1684123600, 'Y'),
(794162, 89, 1676428679, 'Y'),
(794162, 90, 1684225350, 'Y'),
(794163, 10, 1342208324, 'Y'),
(794163, 11, 1342208324, 'Y'),
(794163, 13, 1342208324, 'Y'),
(794163, 39, 1342208324, 'Y'),
(794163, 43, 1342208324, 'Y'),
(794163, 52, 1342208324, 'N'),
(794163, 55, 1342208324, 'Y'),
(794163, 71, 1342208324, 'Y'),
(794163, 77, 1342208324, 'Y'),
(794163, 81, 1342208324, 'Y'),
(794163, 83, 1342208324, 'Y'),
(794163, 85, 1342208324, 'Y'),
(794164, 49, 1661915211, 'Y'),
(794165, 49, 1663292577, 'Y'),
(794166, 49, 1664589132, 'Y'),
(794167, 6, 1692069097, 'Y'),
(794167, 10, 1675654083, 'Y'),
(794167, 11, 1679367850, 'Y'),
(794167, 33, 1675653895, 'Y'),
(794167, 49, 1665566978, 'N'),
(794167, 51, 1683878434, 'Y'),
(794167, 82, 1680234951, 'Y'),
(794167, 83, 1678858369, 'Y'),
(794168, 49, 1665567900, 'Y'),
(794169, 33, 1672121146, 'N'),
(794169, 49, 1665721257, 'Y'),
(794169, 86, 1683171227, 'Y'),
(794170, 49, 1665721405, 'Y'),
(794171, 49, 1665722610, 'Y'),
(794172, 39, 1665722722, 'Y'),
(794173, 6, 1667985458, 'Y'),
(794173, 33, 1680229941, 'Y'),
(794173, 76, 1681269943, 'Y'),
(794173, 77, 1683615809, 'Y'),
(794173, 82, 1677818371, 'Y'),
(794173, 83, 1678855958, 'Y'),
(794173, 90, 1679369501, 'Y'),
(794174, 6, 1667988081, 'Y'),
(794174, 34, 1342208324, 'Y'),
(794174, 49, 1668062165, 'Y'),
(794175, 6, 1668054133, 'Y'),
(794175, 33, 1669801651, 'Y'),
(794175, 34, 1342208324, 'Y'),
(794175, 49, 1668054071, 'Y'),
(794176, 49, 1668743921, 'Y'),
(794177, 6, 1671784448, 'Y'),
(794177, 7, 1342208324, 'Y'),
(794177, 10, 1342208324, 'Y'),
(794177, 11, 1342208324, 'Y'),
(794177, 13, 1342208324, 'Y'),
(794177, 31, 1617172369, 'Y'),
(794177, 33, 1672030624, 'Y'),
(794177, 34, 1342208324, 'Y'),
(794177, 39, 1342208324, 'Y'),
(794177, 41, 1659057729, 'Y'),
(794177, 43, 1342208324, 'Y'),
(794177, 49, 1670275829, 'Y'),
(794177, 50, 1342208324, 'Y'),
(794177, 51, 1342208324, 'Y'),
(794177, 52, 1342208324, 'Y'),
(794177, 54, 1342208324, 'Y'),
(794177, 55, 1342208324, 'Y'),
(794177, 65, 1342208324, 'Y'),
(794177, 71, 1342208324, 'Y'),
(794177, 76, 1342208324, 'Y'),
(794177, 77, 1342208324, 'Y'),
(794177, 81, 1342208324, 'Y'),
(794177, 82, 1342208324, 'Y'),
(794177, 83, 1342208324, 'Y'),
(794177, 84, 1342208324, 'Y'),
(794177, 85, 1342208324, 'Y'),
(794178, 6, 1668069801, 'Y'),
(794178, 34, 1342208324, 'Y'),
(794178, 49, 1673334810, 'Y'),
(794179, 6, 1671616139, 'Y'),
(794179, 34, 1342208324, 'Y'),
(794179, 49, 1673663534, 'Y'),
(794180, 49, 1673663631, 'Y'),
(794181, 49, 1673663712, 'Y'),
(794182, 49, 1673663801, 'Y'),
(794183, 49, 1673663865, 'Y'),
(794184, 49, 1673663923, 'Y'),
(794185, 49, 1673663966, 'Y'),
(794186, 49, 1668072050, 'Y'),
(794187, 49, 1673664077, 'Y'),
(794188, 6, 1668076012, 'Y'),
(794188, 34, 1342208324, 'Y'),
(794188, 49, 1673664232, 'Y'),
(794189, 6, 1668076641, 'Y'),
(794189, 49, 1673664262, 'Y'),
(794190, 6, 1668076720, 'Y'),
(794190, 49, 1673664293, 'Y'),
(794191, 6, 1668129231, 'Y'),
(794191, 49, 1673664335, 'Y'),
(794192, 6, 1668129380, 'Y'),
(794192, 49, 1673666334, 'Y'),
(794193, 49, 1673666661, 'Y'),
(794194, 49, 1673666739, 'Y'),
(794195, 49, 1673666826, 'Y'),
(794196, 49, 1673666898, 'Y'),
(794197, 49, 1673666960, 'Y'),
(794198, 49, 1673666985, 'Y'),
(794199, 49, 1673669016, 'Y'),
(794200, 49, 1673669134, 'Y'),
(794201, 10, 1687314844, 'Y'),
(794201, 49, 1673669273, 'Y'),
(794201, 81, 1677543924, 'Y'),
(794201, 82, 1677818349, 'Y'),
(794201, 83, 1678852268, 'Y'),
(794202, 76, 1681805309, 'Y'),
(794203, 76, 1681805414, 'Y'),
(794204, 76, 1681805474, 'Y'),
(794205, 76, 1681806357, 'Y'),
(794206, 76, 1681808015, 'Y'),
(794207, 76, 1681810295, 'Y'),
(794208, 76, 1681810475, 'Y'),
(794209, 39, 1681978664, 'Y'),
(794209, 76, 1682062085, 'Y'),
(794210, 7, 1682395473, 'Y'),
(794211, 7, 1682396009, 'Y'),
(794212, 7, 1682396055, 'Y'),
(794213, 7, 1682396135, 'Y'),
(794214, 86, 1683085391, 'Y'),
(794215, 86, 1683085462, 'Y'),
(794216, 87, 1683268545, 'Y'),
(794217, 87, 1683268815, 'Y'),
(794218, 77, 1683615315, 'Y'),
(794219, 83, 1683705751, 'Y'),
(794220, 83, 1683705848, 'Y'),
(794221, 51, 1683862815, 'Y'),
(794222, 51, 1683863094, 'Y'),
(794223, 51, 1683863154, 'Y'),
(794224, 81, 1684118697, 'Y'),
(794225, 54, 1684210760, 'Y'),
(794226, 52, 1684379026, 'Y'),
(794227, 52, 1684379088, 'Y'),
(794228, 13, 1686015876, 'Y'),
(794229, 10, 1687336949, 'Y'),
(794230, 83, 1687404744, 'Y'),
(794231, 33, 1689913374, 'Y'),
(794244, 50, 1694145240, 'Y'),
(794245, 50, 1694145240, 'Y'),
(794246, 50, 1694145241, 'Y'),
(794247, 50, 1694145242, 'Y'),
(794248, 50, 1694147023, 'Y'),
(794249, 50, 1694148539, 'Y'),
(794250, 50, 1694148540, 'Y'),
(794251, 50, 1694148540, 'Y'),
(794252, 50, 1694148541, 'Y'),
(794262, 33, 1696495495, 'Y'),
(794263, 33, 1696495495, 'Y'),
(794264, 33, 1696495495, 'Y'),
(794265, 33, 1696495495, 'Y'),
(794266, 33, 1696495495, 'Y'),
(794267, 33, 1696495495, 'Y'),
(794268, 33, 1696495495, 'Y'),
(794269, 33, 1696495495, 'Y'),
(794270, 33, 1696495495, 'Y'),
(794271, 33, 1696495495, 'Y'),
(794272, 33, 1696495495, 'Y'),
(794273, 33, 1696495495, 'Y'),
(794274, 33, 1696495495, 'Y'),
(794275, 33, 1696495495, 'Y'),
(794276, 33, 1696495495, 'Y'),
(794277, 33, 1696495495, 'Y'),
(794278, 33, 1696495495, 'Y'),
(794279, 33, 1696559810, 'Y'),
(794280, 33, 1696559811, 'Y'),
(794281, 33, 1696559812, 'Y'),
(794282, 33, 1696559812, 'Y'),
(794283, 33, 1696559813, 'Y'),
(794284, 33, 1696559813, 'Y'),
(794285, 33, 1696559814, 'Y'),
(794286, 33, 1696559815, 'Y'),
(794287, 33, 1696559815, 'Y'),
(794288, 33, 1696559816, 'Y'),
(794289, 33, 1696559816, 'Y'),
(794290, 33, 1696559816, 'Y'),
(794291, 33, 1696559816, 'Y'),
(794292, 33, 1696559816, 'Y'),
(794293, 33, 1696559816, 'Y'),
(794294, 33, 1696559816, 'Y'),
(794295, 33, 1696559816, 'Y'),
(794296, 33, 1696559816, 'Y'),
(794297, 33, 1696559816, 'Y'),
(794298, 33, 1696559816, 'Y'),
(794299, 33, 1696559816, 'Y'),
(794300, 33, 1696559816, 'Y'),
(794301, 33, 1696559817, 'Y'),
(794302, 33, 1696559817, 'Y'),
(794303, 33, 1696578719, 'Y'),
(794304, 33, 1696578719, 'Y'),
(794305, 33, 1696578720, 'Y'),
(794306, 33, 1696578721, 'Y'),
(794307, 33, 1696578721, 'Y'),
(794308, 33, 1696578722, 'Y'),
(794309, 33, 1696578723, 'Y'),
(794310, 33, 1696578723, 'Y'),
(794311, 33, 1696578724, 'Y'),
(794312, 33, 1696578725, 'Y'),
(794313, 33, 1696578725, 'Y'),
(794314, 33, 1696578725, 'Y'),
(794315, 33, 1696578725, 'Y'),
(794316, 33, 1696578725, 'Y'),
(794317, 33, 1696578725, 'Y'),
(794318, 33, 1696578725, 'Y'),
(794319, 33, 1696578725, 'Y'),
(794320, 33, 1696578725, 'Y'),
(794321, 33, 1696578725, 'Y'),
(794322, 33, 1696578725, 'Y'),
(794323, 33, 1696578725, 'Y'),
(794324, 33, 1696578725, 'Y'),
(794325, 33, 1696578725, 'Y'),
(794326, 33, 1696578725, 'Y'),
(794327, 50, 1696583437, 'Y'),
(794328, 50, 1696583437, 'Y'),
(794329, 50, 1696583437, 'Y'),
(794330, 50, 1696583438, 'Y'),
(794331, 50, 1696990152, 'Y'),
(794332, 50, 1696994520, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user_transaction`
--

DROP TABLE IF EXISTS `user_transaction`;
CREATE TABLE IF NOT EXISTS `user_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User Transaction ID',
  `transaction_type` enum('Order','Order Bonus','Admin') NOT NULL COMMENT 'User Transaction Type',
  `transaction_site_id` int(10) UNSIGNED NOT NULL COMMENT 'Site ID',
  `transaction_order_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Transaction Order ID / Make Payment ID',
  `transaction_order_id_format` varchar(255) NOT NULL COMMENT 'Order ID formatted',
  `transaction_total` float NOT NULL COMMENT 'Transaction Order, Payment Total',
  `transaction_point` int(11) NOT NULL DEFAULT '0' COMMENT 'Point using',
  `transaction_point_total` float NOT NULL DEFAULT '0' COMMENT 'Money After Exchanging Point Using ',
  `transaction_description` text NOT NULL COMMENT 'User Transaction Description',
  `transaction_date` int(11) NOT NULL COMMENT 'User Transaction Date Created',
  `transaction_user_id` int(10) UNSIGNED NOT NULL COMMENT 'User Created',
  `transaction_user_insert_id` int(10) UNSIGNED NOT NULL COMMENT 'User Created ID',
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visa_home_country_trawick`
--

DROP TABLE IF EXISTS `visa_home_country_trawick`;
CREATE TABLE IF NOT EXISTS `visa_home_country_trawick` (
  `country_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `country_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `country_active` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visa_home_country_trawick`
--

INSERT INTO `visa_home_country_trawick` (`country_id`, `country_name`, `country_code`, `country_active`) VALUES
(1, 'Afghanistan', 'AF', 'Y'),
(2, 'Aland Islands', 'AX', 'Y'),
(3, 'Albania', 'AL', 'Y'),
(4, 'Algeria', 'DZ', 'Y'),
(5, 'American Samoa', 'AS', 'Y'),
(6, 'Andorra', 'AD', 'Y'),
(7, 'Angola', 'AO', 'Y'),
(8, 'Anguilla', 'AI', 'Y'),
(9, 'Antarctica', 'AQ', 'Y'),
(10, 'Antigua and Barbuda', 'AG', 'Y'),
(11, 'Argentina', 'AR', 'Y'),
(12, 'Armenia', 'AM', 'Y'),
(13, 'Aruba', 'AW', 'Y'),
(14, 'Australia', 'AU', 'Y'),
(15, 'Austria', 'AT', 'Y'),
(16, 'Azerbaijan', 'AZ', 'Y'),
(17, 'Bahamas', 'BS', 'Y'),
(18, 'Bahrain', 'BH', 'Y'),
(19, 'Bangladesh', 'BD', 'Y'),
(20, 'Barbados', 'BB', 'Y'),
(21, 'Belarus', 'BY', 'Y'),
(22, 'Belgium', 'BE', 'Y'),
(23, 'Belize', 'BZ', 'Y'),
(24, 'Benin', 'BJ', 'Y'),
(25, 'Bermuda', 'BM', 'Y'),
(26, 'Bhutan', 'BT', 'Y'),
(27, 'Bolivia', 'BO', 'Y'),
(28, 'Bonaire', 'BQ', 'Y'),
(29, 'Bosnia and Herzegovina', 'BA', 'Y'),
(30, 'Botswana', 'BW', 'Y'),
(31, 'Bouvet Island', 'BV', 'Y'),
(32, 'Brazil', 'BR', 'Y'),
(33, 'British Indian Ocean Territory', 'IO', 'Y'),
(34, 'Brunei Darussalam', 'BN', 'Y'),
(35, 'Bulgaria', 'BG', 'Y'),
(36, 'Burkina Faso', 'BF', 'Y'),
(37, 'Burundi', 'BI', 'Y'),
(38, 'Cambodia', 'KH', 'Y'),
(39, 'Cameroon', 'CM', 'Y'),
(40, 'Canada', 'CA', 'Y'),
(41, 'Cape Verde', 'CV', 'Y'),
(42, 'Caribbean', 'CB', 'Y'),
(43, 'Cayman Islands', 'KY', 'Y'),
(44, 'Central African Republic', 'CF', 'Y'),
(45, 'Chad', 'TD', 'Y'),
(46, 'Chile', 'CL', 'Y'),
(47, 'China', 'CN', 'Y'),
(48, 'Christmas Island', 'CX', 'Y'),
(49, 'Cocos (Keeling) Islands', 'CC', 'Y'),
(50, 'Colombia', 'CO', 'Y'),
(51, 'Comoros', 'KM', 'Y'),
(52, 'Congo', 'CG', 'Y'),
(53, 'Cook Islands', 'CK', 'Y'),
(54, 'Costa Rica', 'CR', 'Y'),
(55, 'Cote D\'Ivoire', 'CI', 'Y'),
(56, 'Croatia', 'HR', 'Y'),
(57, 'Cuba', 'CU', 'Y'),
(58, 'Curacao', 'CW', 'Y'),
(59, 'Cyprus', 'CY', 'Y'),
(60, 'Czech Republic', 'CZ', 'Y'),
(61, 'Denmark', 'DK', 'Y'),
(62, 'Djibouti', 'DJ', 'Y'),
(63, 'Dominica', 'DM', 'Y'),
(64, 'Dominican Republic', 'DO', 'Y'),
(65, 'East Timor', 'TP', 'Y'),
(66, 'Eastern Europe', 'EE', 'Y'),
(67, 'Ecuador', 'EC', 'Y'),
(68, 'Egypt', 'EG', 'Y'),
(69, 'El Salvador', 'SV', 'Y'),
(70, 'Equatorial Guinea', 'GQ', 'Y'),
(71, 'Eritrea', 'ER', 'Y'),
(72, 'Estonia', 'EE', 'Y'),
(73, 'Ethiopia', 'ET', 'Y'),
(74, 'Falkland Islands (Malvinas)', 'FK', 'Y'),
(75, 'Faroe Islands', 'FO', 'Y'),
(76, 'Fiji', 'FJ', 'Y'),
(77, 'Finland', 'FI', 'Y'),
(78, 'France', 'FR', 'Y'),
(79, 'France, Metropolitan', 'FR', 'Y'),
(80, 'French Guiana', 'GF', 'Y'),
(81, 'French Polynesia', 'PF', 'Y'),
(82, 'French Southern Territories', 'TF', 'Y'),
(83, 'Gabon', 'GA', 'Y'),
(84, 'Gambia', 'GM', 'Y'),
(85, 'Georgia', 'GE', 'Y'),
(86, 'Germany', 'DE', 'Y'),
(87, 'Ghana', 'GH', 'Y'),
(88, 'Gibraltar', 'GI', 'Y'),
(89, 'Greece', 'GR', 'Y'),
(90, 'Greenland', 'GL', 'Y'),
(91, 'Grenada', 'GD', 'Y'),
(92, 'Guadeloupe', 'GP', 'Y'),
(93, 'Guam', 'GU', 'Y'),
(94, 'Guatemala', 'GT', 'Y'),
(95, 'Guernsey', 'GG', 'Y'),
(96, 'Guinea', 'GN', 'Y'),
(97, 'Guinea-Bissau', 'GW', 'Y'),
(98, 'Guyana', 'GY', 'Y'),
(99, 'Haiti', 'HT', 'Y'),
(100, 'Heard and McDonald Islands', 'HM', 'Y'),
(101, 'Honduras', 'HN', 'Y'),
(102, 'Hong Kong', 'HK', 'Y'),
(103, 'Hungary', 'HU', 'Y'),
(104, 'Iceland', 'IS', 'Y'),
(105, 'India', 'IN', 'Y'),
(106, 'Indonesia', 'ID', 'Y'),
(107, 'Iran (Islamic Republic of)', 'IR', 'Y'),
(108, 'Iraq', 'IQ', 'Y'),
(109, 'Ireland', 'IE', 'Y'),
(110, 'Isle of Man', 'IM', 'Y'),
(111, 'Israel', 'IL', 'Y'),
(112, 'Italy', 'IT', 'Y'),
(113, 'Jamaica', 'JM', 'Y'),
(114, 'Japan', 'JP', 'Y'),
(115, 'Jersey', 'JE', 'Y'),
(116, 'Jordan', 'JO', 'Y'),
(117, 'Kazakhstan', 'KZ', 'Y'),
(118, 'Kenya', 'KE', 'Y'),
(119, 'Kiribati', 'KI', 'Y'),
(120, 'Korea, Democratic People\'s Republic of', 'KP', 'Y'),
(121, 'Korea, Republic of', 'KR', 'Y'),
(122, 'Kuwait', 'KW', 'Y'),
(123, 'Kyrgyzstan', 'KG', 'Y'),
(124, 'Lao People\'s Democratic Republic', 'LA', 'Y'),
(125, 'Latvia', 'LV', 'Y'),
(126, 'Lebanon', 'LB', 'Y'),
(127, 'Lesotho', 'LS', 'Y'),
(128, 'Liberia', 'LR', 'Y'),
(129, 'Libyan Arab Jamahiriya', 'LY', 'Y'),
(130, 'Liechtenstein', 'LI', 'Y'),
(131, 'Lithuania', 'LT', 'Y'),
(132, 'Luxembourg', 'LU', 'Y'),
(133, 'Macau', 'MO', 'Y'),
(134, 'Macedonia, the Former Yugoslav Republic of', 'MK', 'Y'),
(135, 'Madagascar', 'MG', 'Y'),
(136, 'Malawi', 'MW', 'Y'),
(137, 'Malaysia', 'MY', 'Y'),
(138, 'Maldives', 'MV', 'Y'),
(139, 'Mali', 'ML', 'Y'),
(140, 'Malta', 'MT', 'Y'),
(141, 'Marshall Islands', 'MH', 'Y'),
(142, 'Martinique', 'MQ', 'Y'),
(143, 'Mauritania', 'MR', 'Y'),
(144, 'Mauritius', 'MU', 'Y'),
(145, 'Mayotte', 'YT', 'Y'),
(146, 'Mexico', 'MX', 'Y'),
(147, 'Micronesia (Federated States of)', 'FM', 'Y'),
(148, 'Moldova, Republic of', 'MD', 'Y'),
(149, 'Monaco', 'MC', 'Y'),
(150, 'Mongolia', 'MN', 'Y'),
(151, 'Montenegro', 'ME', 'Y'),
(152, 'Montserrat', 'MS', 'Y'),
(153, 'Morocco', 'MA', 'Y'),
(154, 'Mozambique', 'MZ', 'Y'),
(155, 'Myanmar', 'MM', 'Y'),
(156, 'Namibia', 'NA', 'Y'),
(157, 'Nauru', 'NR', 'Y'),
(158, 'Nepal', 'NP', 'Y'),
(159, 'Netherlands', 'NL', 'Y'),
(160, 'Netherlands Antilles', 'AN', 'Y'),
(161, 'New Caledonia', 'NC', 'Y'),
(162, 'New Zealand', 'NZ', 'Y'),
(163, 'Nicaragua', 'NI', 'Y'),
(164, 'Niger', 'NE', 'Y'),
(165, 'Nigeria', 'NG', 'Y'),
(166, 'Niue', 'NU', 'Y'),
(167, 'Norfolk Island', 'NF', 'Y'),
(168, 'Northern Mariana Islands', 'MP', 'Y'),
(169, 'Norway', 'NO', 'Y'),
(170, 'Oman', 'OM', 'Y'),
(171, 'Pakistan', 'PK', 'Y'),
(172, 'Palau', 'PW', 'Y'),
(173, 'Palestine', 'PS', 'Y'),
(174, 'Panama', 'PA', 'Y'),
(175, 'Papua New Guinea', 'PG', 'Y'),
(176, 'Paraguay', 'PY', 'Y'),
(177, 'Peru', 'PE', 'Y'),
(178, 'Philippines', 'PH', 'Y'),
(179, 'Pitcairn', 'PN', 'Y'),
(180, 'Poland', 'PL', 'Y'),
(181, 'Portugal', 'PT', 'Y'),
(182, 'Puerto Rico', 'PR', 'Y'),
(183, 'Qatar', 'QA', 'Y'),
(184, 'Reunion', 'RE', 'Y'),
(185, 'Romania', 'RO', 'Y'),
(186, 'Russian Federation', 'RU', 'Y'),
(187, 'Rwanda', 'RW', 'Y'),
(188, 'Saint Barthelemy', 'BL', 'Y'),
(189, 'Saint Kitts and Nevis', 'KN', 'Y'),
(190, 'Saint Lucia', 'LC', 'Y'),
(191, 'Saint Martin', 'MF', 'Y'),
(192, 'Saint Vincent and the Grenadines', 'VC', 'Y'),
(193, 'Samoa', 'WS', 'Y'),
(194, 'San Marino', 'SM', 'Y'),
(195, 'Sao Tome and Principe', 'ST', 'Y'),
(196, 'Saudi Arabia', 'SA', 'Y'),
(197, 'Senegal', 'SN', 'Y'),
(198, 'Serbia', 'RS', 'Y'),
(199, 'Seychelles', 'SC', 'Y'),
(200, 'Sierra Leone', 'SL', 'Y'),
(201, 'Singapore', 'SG', 'Y'),
(202, 'Saint Maarten', 'SX', 'Y'),
(203, 'Slovakia', 'SK', 'Y'),
(204, 'Slovenia', 'SI', 'Y'),
(205, 'Solomon Islands', 'SB', 'Y'),
(206, 'Somalia', 'SO', 'Y'),
(207, 'South Africa', 'ZA', 'Y'),
(208, 'South Georgia and the South Sandwich Islands', 'GS', 'Y'),
(209, 'South Sudan', 'SS', 'Y'),
(210, 'Spain', 'ES', 'Y'),
(211, 'Sri Lanka', 'LK', 'Y'),
(212, 'St. Helena', 'SH', 'Y'),
(213, 'St. Pierre and Miquelon', 'PM', 'Y'),
(214, 'Sudan', 'SD', 'Y'),
(215, 'South Sudan', 'SS', 'Y'),
(216, 'St. Martin', 'SX', 'Y'),
(217, 'Suriname', 'SR', 'Y'),
(218, 'Svalbard and Jan Mayen Islands', 'SJ', 'Y'),
(219, 'Swaziland', 'SZ', 'Y'),
(220, 'Sweden', 'SE', 'Y'),
(221, 'Switzerland', 'CH', 'Y'),
(222, 'Syrian Arab Republic', 'SY', 'Y'),
(223, 'Taiwan', 'TW', 'Y'),
(224, 'Tajikistan', 'TJ', 'Y'),
(225, 'Tanzania, United Republic of', 'TZ', 'Y'),
(226, 'Thailand', 'TH', 'Y'),
(227, 'Timor-Leste', 'TL', 'Y'),
(228, 'Togo', 'TG', 'Y'),
(229, 'Tokelau', 'TK', 'Y'),
(230, 'Tonga', 'TO', 'Y'),
(231, 'Trinidad and Tobago', 'TT', 'Y'),
(232, 'Tunisia', 'TN', 'Y'),
(233, 'Turkey', 'TR', 'Y'),
(234, 'Turkmenistan', 'TM', 'Y'),
(235, 'Turks and Caicos Islands', 'TC', 'Y'),
(236, 'Tuvalu', 'TV', 'Y'),
(237, 'Uganda', 'UG', 'Y'),
(238, 'Ukraine', 'UA', 'Y'),
(239, 'United Arab Emirates', 'AE', 'Y'),
(240, 'United Kingdom', 'GB', 'Y'),
(241, 'United States Minor Outlying Islands', 'UM', 'Y'),
(242, 'United States of America', 'US', 'Y'),
(243, 'Uruguay', 'UY', 'Y'),
(244, 'Uzbekistan', 'UZ', 'Y'),
(245, 'Vanuatu', 'VU', 'Y'),
(246, 'Vatican City State (Holy See)', 'VA', 'Y'),
(247, 'Venezuela', 'VE', 'Y'),
(248, 'Viet Nam', 'VN', 'Y'),
(249, 'Virgin Islands (British)', 'VG', 'Y'),
(250, 'Virgin Islands (U.S.)', 'VI', 'Y'),
(251, 'Wallis and Futuna Islands', 'WF', 'Y'),
(252, 'Western Sahara', 'EH', 'Y'),
(253, 'Yemen', 'YE', 'Y'),
(254, 'Zaire', 'CD', 'Y'),
(255, 'Zambia', 'ZM', 'Y'),
(256, 'Zimbabwe', 'ZW', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `visa_log_email_sale`
--

DROP TABLE IF EXISTS `visa_log_email_sale`;
CREATE TABLE IF NOT EXISTS `visa_log_email_sale` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_sender_id` int(11) NOT NULL,
  `log_sender_name_and_email` varchar(255) NOT NULL,
  `log_recipient_id` int(11) DEFAULT '0',
  `log_token_link` text,
  `log_recipient_email` varchar(255) NOT NULL,
  `log_order_id` text NOT NULL,
  `log_order_value` decimal(14,2) NOT NULL,
  `log_value_discount` decimal(14,2) DEFAULT '0.00',
  `log_email_subject` text,
  `log_email_content` text,
  `log_site_id` int(11) DEFAULT NULL,
  `log_send_from` text NOT NULL,
  `log_insert_time` int(11) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visa_log_email_sale`
--

INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(65, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=M%2BIuq3VdmVI76lgXegxjzBX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKtwbSFtxIW759%2Bm2i6yEgB%2BUghViLvN97X9v5KS3PnEjmjHjSzw6MZENtJoILxIdtxUbCTQqCEazobj1JVa%2FAbPOnynDpVqI%3D', 'haidang@mobcec.com', '9', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER #8230009', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID #8230009</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=M%2BIuq3VdmVI76lgXegxjzBX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKtwbSFtxIW759%2Bm2i6yEgB%2BUghViLvN97X9v5KS3PnEjmjHjSzw6MZENtJoILxIdtxUbCTQqCEazobj1JVa%2FAbPOnynDpVqI%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=gpxgyoDYYrECP%2FgczhV3T8p4JsAUoT5U9cdXfpb3cHgKAhLb6Vl%2BOjER1iX3ipPArna%2FWvLZI7z9hG9JOJCy4Yzm\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692846614);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(64, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=vNnyJAOVwQ%2FsHBXNRV6gdhX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKJKK2jgmNeMscuWx9YRrZtqm9O3wiDQMrLzKV3GAPX9E1cI3pLsMnAtrjhDxSAoQsaEltYU3cZjK2EgousXNKK595IRmq%2BOo%3D', 'haidang@mobcec.com', '9', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER #8230009', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID #8230009</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=vNnyJAOVwQ%2FsHBXNRV6gdhX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKJKK2jgmNeMscuWx9YRrZtqm9O3wiDQMrLzKV3GAPX9E1cI3pLsMnAtrjhDxSAoQsaEltYU3cZjK2EgousXNKK595IRmq%2BOo%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=ieNB50z0bFXUe7%2FH8V%2BfEMp4JsAUoT5U9cdXfpb3cHgKAhLb6Vl%2BOjER1iX3ipPAX7CZ28RlS1KqjryyYSEsi8dg\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692846519);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(63, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=PxjG9IoMJ5KWaeaEDEJo7RX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKxsfXvwC3nMB0MmYrOUyiLBkh7Aalmb7aiFCeJqOd%2BkquAMOWWvSkI0JPP4IECkZL9vaE565NOh9P1o47sbsxBAF%2FIPa5Aqc%3D', 'haidang@mobcec.com', '9', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER #8230009', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID #8230009</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=PxjG9IoMJ5KWaeaEDEJo7RX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKxsfXvwC3nMB0MmYrOUyiLBkh7Aalmb7aiFCeJqOd%2BkquAMOWWvSkI0JPP4IECkZL9vaE565NOh9P1o47sbsxBAF%2FIPa5Aqc%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=0NUqaZZyCA4LS4wX7qi77Mp4JsAUoT5U9cdXfpb3cHgKAhLb6Vl%2BOjER1iX3ipPAgd8Ti%2BujSJZBkBFYCKeNZSlB\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692845549);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(62, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=AMMIHt2sDXiF%2BtsvR2f0rty8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgiXMishjeVuLmV46Fs%2BkoGu50oV0CV8z9pxsy84tfUo8Swqsz%2Bw1pIoNVOUOC56fcawzqj74qwiOfqnLKelnpV1hBydqGJNU%3D', 'haidang@mobcec.com', '7', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230007', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><!--?xml encoding=\"UTF-8\"--><!--?xml encoding=\"UTF-8\"--><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230007</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=AMMIHt2sDXiF%2BtsvR2f0rty8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgiXMishjeVuLmV46Fs%2BkoGu50oV0CV8z9pxsy84tfUo8Swqsz%2Bw1pIoNVOUOC56fcawzqj74qwiOfqnLKelnpV1hBydqGJNU%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=EuDhtQjC9vh58y8yu2XBecp4JsAUoT5U9cdXfpb3cHgKAhLb6Vl%2BOjER1iX3ipPAo%2B0m8yQVJIRfX9eydUFAN1ZF\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692763139);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(61, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=e801U%2B7Q5fI0AaR21zFeZNy8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgjgX5S2NmB8He84y%2BH82N58paudc7oeokfBn4gnoJoYYqXkXo0xNIsa%2BSmF7JUkXUDCxjQqGfJnjTcfnhKN%2BIoU17fxIfk9s%3D', 'haidang@mobcec.com', '7', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230007', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><!--?xml encoding=\"UTF-8\"--><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230007</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=e801U%2B7Q5fI0AaR21zFeZNy8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgjgX5S2NmB8He84y%2BH82N58paudc7oeokfBn4gnoJoYYqXkXo0xNIsa%2BSmF7JUkXUDCxjQqGfJnjTcfnhKN%2BIoU17fxIfk9s%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=g0rAUM1dmOZQ0OMadebnXsp4JsAUoT5U9cdXfpb3cHgKAhLb6Vl%252BOjER1iX3ipPA%252BLNkhorcX4x2XgwRNgihprWs\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692762938);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(59, 2, 'name : Hoang Hai Dang123+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=xJnIy0jXC6QaZPoOGh8Z9xX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkK45Il%2Fx%2B7TojWsM1E8kpbX1%2BrfySlXmhqPHhCHtkxlYf0FBbcGv97jerQcJ7t6AapDe55aCiEhDpHS5yoD2xxdppu9iqKD0M%3D', 'haidang@mobcec.com', '9', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230009', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230009</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Hoang Hai Dang123,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=xJnIy0jXC6QaZPoOGh8Z9xX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkK45Il%2Fx%2B7TojWsM1E8kpbX1%2BrfySlXmhqPHhCHtkxlYf0FBbcGv97jerQcJ7t6AapDe55aCiEhDpHS5yoD2xxdppu9iqKD0M%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/unsubscribe?emailtoken=EMAIL_TOKEN\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/|||PAGE_18|||\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692697686);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(60, 2, 'name : Hoàng Hải Đăng  خ, خـ, ـخـ, ـخ+email : haidang@mobcec.com', 2, 'https://www.indianimmigration.org/make-payment?paymenttoken=HSP9%2BH4oBl6a56LoLcbVTdy8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2Fgnv6ZdFSRfbvHCFtoPAA6hxTLlPntyOKmsVBQ%2BPQCIwvigj6teDyAlb68kQh88WtQEb5hJDVdkbJ5zLY60mAPjp93F3NZSeE%3D', 'haidang@mobcec.com', '7', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230007', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230007</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Ho&agrave;ng H&#7843;i &#272;&#259;ng &#1582;, &#1582;&#1600;, &#1600;&#1582;&#1600;, &#1600;&#1582;,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"https://www.indianimmigration.org/make-payment?paymenttoken=HSP9%2BH4oBl6a56LoLcbVTdy8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2Fgnv6ZdFSRfbvHCFtoPAA6hxTLlPntyOKmsVBQ%2BPQCIwvigj6teDyAlb68kQh88WtQEb5hJDVdkbJ5zLY60mAPjp93F3NZSeE%3D\" style=\"color: #00783e;\" target=\"_blank\">https://www.indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/unsubscribe?emailtoken=EMAIL_TOKEN\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org/contact-us\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692762663);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(58, 2, 'name : Hoang Hai Dang123+email : haidang@mobcec.com', 2, 'indianimmigration.org/make-payment?paymenttoken=v1FN%2F9jPVXUWTd8l1cBZcxX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKxo7HM4BIbXsH4uqH0jeK2LMtZ6BTiIsYtPst1I%2B6jBtif52fJ8z%2B7e4icZxfQVCdzGLAwV5uBQ9gbz6iYC%2Fssxqp1h7%2BpFo%3D', 'haidang@mobcec.com', '9', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230009', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><!--?xml encoding=\"UTF-8\"--><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230009</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Hoang Hai Dang123,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"indianimmigration.org/make-payment?paymenttoken=v1FN%2F9jPVXUWTd8l1cBZcxX46Du66hWj4QZlbdY4zJufQXvqbLTs%2Blmxm%2FMDYHkKxo7HM4BIbXsH4uqH0jeK2LMtZ6BTiIsYtPst1I%2B6jBtif52fJ8z%2B7e4icZxfQVCdzGLAwV5uBQ9gbz6iYC%2Fssxqp1h7%2BpFo%3D\" style=\"color: #00783e;\" target=\"_blank\">indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/unsubscribe?emailtoken=EMAIL_TOKEN\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/|||PAGE_18|||\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692696506);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(55, 2, 'name : Hoang Hai Dang123+email : haidang@mobcec.com', 2, 'indianimmigration.org/make-payment?paymenttoken=8CNDtDBj3WAr8mm%2F0sDS0vagaWYCpvC8H1ZhcBhTSsPwv3dLK5%2BjJLuvqvRJgN6avi%2B9qoIIEt7X6g6ytzH%2FF3x79pAO%2FWZK%2BLwWHsnXN378iE%2FKr3gRqDPP2PQ6ZE6vlU4TYY2ENCYsiqv9yAc5WiNm4BTImw%3D%3D', 'haidang@mobcec.com', '9', '81.75', '80.00', '123YOUR PENDING INDIA VISA ORDER ##8230000YOUR PENDING INDIA VISA ORDER ##8230000', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\n                              <td\n                                style=\"\n                                  background: #ffffff;\n                                  border-radius: 10px 10px 0 0;\n                                  padding: 40px 24px;\n                                  text-align: center;\n                                \"\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">123123Notification</strong> of Order ID ##8230000</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Hoang Hai Dang123,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">1.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"indianimmigration.org/make-payment?paymenttoken=8CNDtDBj3WAr8mm%2F0sDS0vagaWYCpvC8H1ZhcBhTSsPwv3dLK5%2BjJLuvqvRJgN6avi%2B9qoIIEt7X6g6ytzH%2FF3x79pAO%2FWZK%2BLwWHsnXN378iE%2FKr3gRqDPP2PQ6ZE6vlU4TYY2ENCYsiqv9yAc5WiNm4BTImw%3D%3D\" style=\"color: #00783e;\" target=\"_blank\">indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/unsubscribe?emailtoken=EMAIL_TOKEN\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/|||PAGE_18|||\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692349904);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(56, 2, 'name : Hoang Hai Dang123+email : haidang@mobcec.com', 2, 'tanzaniaimmigration.org/make-payment?paymenttoken=JDnjQqUh6fd0TLIhki%2FtzAwYXii7hj5oLiXnBpBzuf5Dy3TDYgRuDAuKkB%2B%2FBFzJtQAyImcTsbInFt%2FahGzMdZouuQnIQxvXiLaBhtkGih5k0KZijxvt8W5CoJBrPoMKW6guQ9yu%2BHN8e%2FPSorMJbg5JMSF7Pg%3D%3D', 'haidang@mobcec.com', '19', '146.75', '46.75', 'YOUR PENDING TANZANIA VISA ORDER ##1230019aaa', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n                width=\"600\"\r\n                cellpadding=\"0\"\r\n                cellspacing=\"0\"\r\n                style=\"background: #fff; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif;border-bottom: 1px solid #f1f1f1;\">\r\n                    <a href=\"https://www.tanzaniaimmigration.org/\" target=\"_blank\" title=\"Tanzania Immigration Services\">\r\n                        <img\r\n                                src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-180x47-1683949529.png\"\r\n                                alt=\"Tanzania Immigration Services\"\r\n                                title=\"Tanzania Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\n                              <td\n                                style=\"\n                                  background: #ffffff;\n                                  border-radius: 10px 10px 0 0;\n                                  padding: 40px 24px;\n                                  text-align: center;\n                                \"\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><!--?xml encoding=\"UTF-8\"--><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">AAAAAANotification</strong> of Order ID ##1230019</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Hoang Hai Dang123,</p>\n\n<p>Thank you for visiting our website,ssssss</p>\n\n<p>The Tanzania Visa Service Team, contacting you for your e-visa to Tanzania, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">100</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"tanzaniaimmigration.org/make-payment?paymenttoken=JDnjQqUh6fd0TLIhki%2FtzAwYXii7hj5oLiXnBpBzuf5Dy3TDYgRuDAuKkB%2B%2FBFzJtQAyImcTsbInFt%2FahGzMdZouuQnIQxvXiLaBhtkGih5k0KZijxvt8W5CoJBrPoMKW6guQ9yu%2BHN8e%2FPSorMJbg5JMSF7Pg%3D%3D\" style=\"color: #00783e;\" target=\"_blank\">tanzaniaimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The Tanzania Visa Service Team</p>\n</div></body></html>\n</td>\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \">\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\" title=\"Whatsapp\" />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\"\r\n                                            title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\" title=\"Send Online Message\" />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a href=\"https://tawk.to/chat/6110942d649e0a0a5cd02c67/1fckc5l7e\" target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\">Send\r\n                                            Online Message</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p\r\n                style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i>We would like to send this information with warmingly help. <br>We hope you will have an enjoyable\r\n                    time before a\r\n                    trip to Tanzania. <span class=\"d-xs-block\">Thank you for choosing us!</span></i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n  </tr>\r\n  </tbody>\r\n  <tfoot>\r\n    <tr>\r\n        <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n            <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n                <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                    Let\'s get in touch\r\n                </p>\r\n                <a href=\"https://www.facebook.com/gisglobalservices\" target=\"_blank\" title=\"Facebook\"\r\n                    style=\"text-decoration: none\">\r\n                    <img src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\" alt=\"Facebook\"\r\n                        title=\"Facebook\" />\r\n                </a>\r\n                <a href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\" target=\"_blank\" title=\"Youtube\"\r\n                    style=\"text-decoration: none\">\r\n                    <img style=\"margin: 0 30px\"\r\n                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\" alt=\"Youtube\"\r\n                        title=\"Youtube\" />\r\n                </a>\r\n                <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                    <img src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\" alt=\"Printerest\"\r\n                        title=\"Printerst\" />\r\n                </a>\r\n                <p class=\"footer-description\"\r\n                    style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;\">\r\n                    This e-mail was sent by <strong>Tanzania Immigration Services</strong>. <br />\r\n                    You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa\r\n                        Member.</span> <br />\r\n                    If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our\r\n                        amazing offers!</span>\r\n                </p>\r\n                <a style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \" href=\"https://www.tanzaniaimmigration.org|||LANG|||/unsubscribe?emailtoken=EMAIL_TOKEN\" target=\"_blank\"\r\n                    title=\"Unsubcribe\">Unsubcribe</a>\r\n                <a style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \" href=\"https://www.tanzaniaimmigration.org|||LANG|||\" target=\"_blank\" title=\"Visit Website\">Visit Website</a>\r\n                <a style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \" href=\"https://www.tanzaniaimmigration.org|||LANG|||/|||PAGE_18|||\" target=\"_blank\"\r\n                    title=\"Help and support\">Help and support</a>\r\n            </div>\r\n            <p style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \">\r\n                © TANZANIA IMMIGRATION SERVICES\r\n            </p>\r\n            <table class=\"footer-address\" width=\"100%\"\r\n                style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n                <tr>\r\n                    <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                        <table style=\"font-family: \'Roboto\';\">\r\n                            <tr>\r\n                                <td colspan=\"2\">\r\n                                    <p style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \">\r\n                                        <strong>Tanzania Office:</strong>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                        alt=\"Address\" title=\"Address\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                        Address: Acacia Estates Offices Plot No. 79, Kinondoni Road Dar Es Salaam TZ, 14110, Tanzania.  \r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                        alt=\"Tel\" title=\"Tel\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                        <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\"\r\n                                            title=\"Tel\">Tel: +1 917 397 7487</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                        <table style=\"font-family: \'Roboto\';\">\r\n                            <tr>\r\n                                <td colspan=\"2\">\r\n                                    <p style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \">\r\n                                        <strong>Singapore Office:</strong>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                        alt=\"Address\" title=\"Address\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                        Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore\r\n                                        048616.\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                        alt=\"Tel\" title=\"Tel\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                        <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\"\r\n                                            title=\"Tel\">Tel: +65 6240 6842</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                    <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                        <table style=\"font-family: \'Roboto\';\">\r\n                            <tr>\r\n                                <td colspan=\"2\">\r\n                                    <p style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \">\r\n                                        <strong>Hong Kong Office:</strong>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                        alt=\"Address\" title=\"Address\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                        Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan,\r\n                                        Hong\r\n                                        Kong.\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                        alt=\"Tel\" title=\"Tel\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                        <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\"\r\n                                            title=\"Tel\">Tel: +852 8199 0939</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                        <table style=\"font-family: \'Roboto\';\">\r\n                            <tr>\r\n                                <td colspan=\"2\">\r\n                                    <p style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \">\r\n                                        <strong>United Kingdom Office:</strong>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                        alt=\"Address\" title=\"Address\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                        Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United\r\n                                        Kingdom.\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                    <img style=\"margin-right: 5px\"\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                        alt=\"Tel\" title=\"Tel\" />\r\n                                </td>\r\n                                <td style=\"padding: 5px 0 0\">\r\n                                    <p\r\n                                        style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                        <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\"\r\n                                            title=\"Tel\">Tel: +44 207 193 5668</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p\r\n                style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n                Tanzania Immigration Services is a commercial website. We are not the Embassy/Consulate or the\r\n                representative of any government departments of Tanzania.\r\n            </p>\r\n            <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n                If you choose to utilize our services please be advised that we charge a handling fee for visa services,\r\n                these services include consultation, providing advice on the requirements, taking responsibility for\r\n                ensuring that your documentation is correct, and providing the result for your application. Our fee is\r\n                included in the Government fee.\r\n            </p>\r\n            <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n                This message contains confidential information and is intended only for the individual named. If you are\r\n                not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the\r\n                sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from\r\n                your system. If you are not the intended recipient you are notified that disclosing, copying,\r\n                distributing, or taking any action in reliance on the contents of this information is strictly\r\n                prohibited.\r\n            </p>\r\n            <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n                All content within the email is for reference purposes only. We are consulting company based on customer\r\n                requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any\r\n                liability for customers\' activities when they violate the rules or cheating involved in their home\r\n                country.\r\n            </p>\r\n        </td>\r\n    </tr>\r\n  </tfoot>\r\n  </table>\r\n  </center>\r\n  </div>\r\n  </body>\r\n  \r\n  </html>', 81, 'noreply@tanzaniaimmigration.org', 1692418834);
INSERT INTO `visa_log_email_sale` (`log_id`, `log_sender_id`, `log_sender_name_and_email`, `log_recipient_id`, `log_token_link`, `log_recipient_email`, `log_order_id`, `log_order_value`, `log_value_discount`, `log_email_subject`, `log_email_content`, `log_site_id`, `log_send_from`, `log_insert_time`) VALUES
(57, 2, 'name : Hoang Hai Dang123+email : haidang@mobcec.com', 2, 'indianimmigration.org/make-payment?paymenttoken=udDTrBUeMCkbDxCrusqMity8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgeNJ0HftB7evk0pH31A6Fs2pX%2BLW%2B06%2BVxDKHqapi8SjFrumvv%2B8trVsV1MZ9BnnciUbdVv46EJDTRJ3EQBMjlTdvcThn6VI%3D', 'haidang@mobcec.com', '7', '81.75', '0.00', 'YOUR PENDING INDIA VISA ORDER ##8230007', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <style>\r\n        .footer-address a {\r\n            text-decoration: none;\r\n            color: #5f5f5f !important;\r\n        }\r\n        .preheader { display:none !important; visibility:hidden; opacity:0; color:transparent; height:0; width:0; }\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif !important;}\r\n        body,table,td,tr,tfoot,th,p,ul,li,ol,a,.footer-address a {font-family: Roboto,RobotoDraft,Arial,sans-serif;}\r\n        .list-attachment ol{\r\n            list-style: none;\r\n            padding-left: 0;\r\n            margin-left: 0;\r\n            margin-bottom: 0;\r\n        }\r\n        .list-attachment ol li{\r\n            list-style: none;\r\n            margin-left: 0;\r\n            padding-left: 30px;\r\n            padding-bottom: 15px;\r\n            margin-bottom: 0;\r\n            background: url(\"https://d2tox9xy69fb7l.cloudfront.net/uploads/attachment-icon-1666405160.png\") no-repeat top left;\r\n        }\r\n        .list-attachment ol li span{\r\n            display: block;\r\n            font-weight: 700;\r\n            color: #00783E;\r\n        }\r\n        @media screen and (max-width: 768px) {\r\n            .d-xs-block{\r\n                display: block;\r\n            }\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n<span class=\"preheader\" style=\"display: none !important; visibility: hidden; opacity: 0; color: transparent; height: 0; width: 0;font-size:0\"></span>\r\n<div style=\"background: #F1F1F1;padding: 10px;\">\r\n    <center>\r\n        <table\r\n            width=\"600\"\r\n            cellpadding=\"0\"\r\n            cellspacing=\"0\"\r\n            style=\"background: #f9dcd0; font-size: 12px; font-family: \'Roboto\'; margin: 0 auto; line-height: 1.6\"\r\n        >\r\n            <tbody>\r\n            <tr>\r\n                <td style=\"text-align: center; padding: 20px 20px 17px; font-family: Roboto, sans-serif\">\r\n                    <a href=\"https://www.indianimmigration.org/\" target=\"_blank\" title=\"Indian Immigration Services\">\r\n                        <img\r\n                            src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/logo-1663294192.png\"\r\n                            alt=\"Indian Immigration Services\"\r\n                            title=\"Indian Immigration Services\"\r\n                        />\r\n                    </a>\r\n                </td>\r\n            </tr><tr>\r\n                              <td\r\n                                style=\"\r\n                                  background: #ffffff;\r\n                                  border-radius: 10px 10px 0 0;\r\n                                  padding: 40px 24px;\r\n                                  text-align: center;\r\n                                \"\r\n                              ><!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"UTF-8\"><html><body><div style=\"\n          text-align: left;\n          font-weight: 700;\n          font-size: 28px;\n          line-height: 33px;\n        \"><strong style=\"color: #ef8233\">Notification</strong> of Order ID ##8230007</div>\n\n<div style=\"\n          font-weight: 400;\n          font-size: 14px;\n          color: #3a3534;\n          text-align: left;\n        \">\n<p style=\"\n            font-weight: 700;\n            font-size: 18px;\n            color: #5f5f5f;\n            margin: 30 0 20px 0;\n          \">Dear Hoang Hai Dang123,</p>\n\n<p>Thank you for visiting our website,</p>\n\n<p>The India Visa Service Team, contacting you for your e-visa to India, We found that you made an application on our website. However the order has not yet been completed with payment.</p>\n\n<p>Do you encounter any difficulties during the visa procedure or payment? if not, please kindly settle the payment of <strong id=\"protected\" style=\"color: #FF7A00;\">81.75</strong> <strong>USD</strong> at this link below, then we will support you with the next steps to get your visa <a href=\"indianimmigration.org/make-payment?paymenttoken=udDTrBUeMCkbDxCrusqMity8yvKhfLIfs3SjEJYuKTsSKaukanEizeWKRegW91%2FgeNJ0HftB7evk0pH31A6Fs2pX%2BLW%2B06%2BVxDKHqapi8SjFrumvv%2B8trVsV1MZ9BnnciUbdVv46EJDTRJ3EQBMjlTdvcThn6VI%3D\" style=\"color: #00783e;\" target=\"_blank\">indianimmigration.org</a></p>\n\n<p>For urgent matters, please feel free to text us on Whats App: +65 8174 8526/ +65 9471 1304</p>\n\n<p>We are looking forward to hearing from you soon</p>\n\n<p>Thanks & regards</p>\n\n<p>The India Visa Service Team</p>\n</div></body></html>\n</td>\r\n                            </tr><tr>\r\n    <td style=\"background: #f6f6f6\">\r\n        <div style=\"background: #ffffff;  padding: 30px 24px 40px\">\r\n            <p\r\n                style=\"\r\n                                            text-align: center;\r\n                                            font-weight: 700;\r\n                                            font-size: 24px;\r\n                                            line-height: 32px;\r\n                                            color: #ef8233;\r\n                                            margin: 0 0 20px;\r\n                                        \"\r\n            >\r\n                Recommended\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 14px; line-height: 18px; color: #3a3534; margin: 0 0 10px\">\r\n                Chat with our assistant immediately or leave a message\r\n            </p>\r\n            <table width=\"100%\">\r\n                <tr>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/call-us-1664164124.png\"\r\n                                        alt=\"Whatsapp\"\r\n                                        title=\"Whatsapp\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p style=\"font-weight: 700; font-size: 14px; color: #00783e\">\r\n                                        Whatsapp with\r\n                                        <a href=\"https://api.whatsapp.com/send?phone=6581748526\" target=\"_blank\" title=\"Whatsapp\" style=\"color: #00783e\"> +65 8174 8526</a>\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                    <td>\r\n                        <table>\r\n                            <tr>\r\n                                <td>\r\n                                    <img\r\n                                        src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/send-mes-1664164125.png\"\r\n                                        alt=\"Send Online Message\"\r\n                                        title=\"Send Online Message\"\r\n                                    />\r\n                                </td>\r\n                                <td>\r\n                                    <p>\r\n                                        <a\r\n                                            href=\"https://tawk.to/chat/57c39c27e56cab650c7830cd/default\"\r\n                                            target=\"_blank\"\r\n                                            title=\"Send Online Message\"\r\n                                            style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #00783e\"\r\n                                        >Send Online Message</a\r\n                                        >\r\n                                    </p>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n            </table>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #5f5f5f; text-align: center; margin: 20px 0 0\">\r\n                <i\r\n                >We would like to send this information with warmingly help. <br>We hope you will have an enjoyable time before a\r\n                    trip to India. <span class=\"d-xs-block\">Thank you for choosing us!</span></i\r\n                >\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n<tr>\r\n    <td style=\"background: #f1f1f1; font-family: Roboto, sans-serif; overflow: hidden\">\r\n        <div style=\"background: #ffffff; padding: 0 24px 40px; border-radius: 0px 0px 16px 16px\">\r\n            <p style=\"font-weight: 700; font-size: 14px; line-height: 18px; color: #5f5f5f; margin: 0\">\r\n                We Are Beside You 24/7!\r\n            </p>\r\n            <p style=\"font-weight: 700; font-size: 18px; line-height: 26px; color: #3a3534; margin: 5px 0\">\r\n                The Global Visa Team.\r\n            </p>\r\n            <p style=\"font-weight: 400; font-size: 11px; line-height: 12px; color: #ec1c24\">\r\n                <i>*Should you need any further information, please do not hesitate to contact us.</i>\r\n            </p>\r\n        </div>\r\n    </td>\r\n</tr>\r\n</tbody>\r\n<tfoot>\r\n<tr>\r\n    <td style=\"background: #F1F1F1; padding: 30px 14px; text-align: center;font-family: \'Roboto\';\">\r\n        <div style=\"background: #ebebeb; border-radius: 16px; padding: 30px 0;font-family: \'Roboto\';\">\r\n            <p style=\"font-weight: 700; font-size: 20px; line-height: 24px; color: #5f5f5f; margin: 0 0 20px\">\r\n                Let\'s get in touch\r\n            </p>\r\n            <a\r\n                href=\"https://www.facebook.com/gisglobalservices\"\r\n                target=\"_blank\"\r\n                title=\"Facebook\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/fb-icon-1663294191.png\"\r\n                    alt=\"Facebook\"\r\n                    title=\"Facebook\"\r\n                />\r\n            </a>\r\n            <a\r\n                href=\"https://www.youtube.com/channel/UCeJjdFGXXoH5irDjK6XnzOw\"\r\n                target=\"_blank\"\r\n                title=\"Youtube\"\r\n                style=\"text-decoration: none\"\r\n            >\r\n                <img\r\n                    style=\"margin: 0 30px\"\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/youtube-1663294192.png\"\r\n                    alt=\"Youtube\"\r\n                    title=\"Youtube\"\r\n                />\r\n            </a>\r\n            <a href=\"https://pin.it/68pd1Ae\" target=\"_blank\" title=\"Printerest\" style=\"text-decoration: none\">\r\n                <img\r\n                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/printerest-1663294192.png\"\r\n                    alt=\"Printerest\"\r\n                    title=\"Printerst\"\r\n                />\r\n            </a>\r\n            <p class=\"footer-description\" style=\"color: #5f5f5f; font-weight: 400; font-size: 13px; line-height: 14px;width: 574px\">\r\n                This e-mail was sent by <strong>Indian Immigration Services</strong>. <br />\r\n                You\'ve received this email because you\'re a part of <span class=\"d-xs-block\">Global Visa Member.</span> <br />\r\n                If you wish to unsubscribe from all future emails, <span class=\"d-xs-block\">you might be missed our amazing offers!</span>\r\n            </p>\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-right: 1px solid #00783e;\r\n                        padding-right: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/unsubscribe?emailtoken=EMAIL_TOKEN\"\r\n                target=\"_blank\"\r\n                title=\"Unsubcribe\"\r\n            >Unsubcribe</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        padding: 0 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||\"\r\n                target=\"_blank\"\r\n                title=\"Visit Website\"\r\n            >Visit Website</a\r\n            >\r\n            <a\r\n                style=\"\r\n                        font-weight: 400;\r\n                        font-size: 12px;\r\n                        line-height: 14px;\r\n                        color: #00783e;\r\n                        border-left: 1px solid #00783e;\r\n                        padding-left: 10px;\r\n                        text-decoration: underline;\r\n                    \"\r\n                href=\"https://www.indianimmigration.org|||LANG|||/|||PAGE_18|||\"\r\n                target=\"_blank\"\r\n                title=\"Help and support\"\r\n            >Help and support</a\r\n            >\r\n        </div>\r\n        <p\r\n            style=\"\r\n                    font-weight: 700;\r\n                    font-size: 14px;\r\n                    line-height: 18px;\r\n                    text-align: center;\r\n                    color: #5f5f5f;\r\n                    margin-bottom: 30px;\r\n                    margin-top: 30px;\r\n                \"\r\n        >\r\n            © INDIAN IMMIGRATION SERVICES\r\n        </p>\r\n        <table class=\"footer-address\" width=\"100%\" style=\"border-bottom: 1px solid #dddddd; padding-bottom: 20px;font-family: \'Roboto\';\">\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>India Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    Address: Trade Center G/F & 1/F, Trade Centre, Bandra Kurla Complex, Bandra (E), Mumbai,\r\n                                    400051.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+19173977487\" title=\"Tel\"\r\n                                    >Tel: +1 917 397 7487</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Singapore Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: 1 Raffles Place, #40-02, One Raffles Place, Office Tower 1, Singapore 048616.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+6562406842\" title=\"Tel\"\r\n                                    >Tel: +65 6240 6842</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>Hong Kong Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Unit 1411, 14/Floor, Cosco Tower, 183 Queen\'s Road Central, Sheung Wan, Hong\r\n                                    Kong.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+85281990939\" title=\"Tel\"\r\n                                    >Tel: +852 8199 0939</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n                <td style=\"width: 50%; text-align: left; vertical-align: top\">\r\n                    <table style=\"font-family: \'Roboto\';\">\r\n                        <tr>\r\n                            <td colspan=\"2\">\r\n                                <p\r\n                                    style=\"\r\n                                            font-weight: 700;\r\n                                            font-size: 12px;\r\n                                            line-height: 14px;\r\n                                            color: #5f5f5f;\r\n                                            border-bottom: 1px solid #dddddd;\r\n                                            padding-bottom: 5px;\r\n                                            margin: 0;\r\n                                        \"\r\n                                >\r\n                                    <strong>United Kingdom Office:</strong>\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/location-1663294192.png\"\r\n                                    alt=\"Address\"\r\n                                    title=\"Address\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0px\">\r\n                                    Address: Golden Cross House, 8 Duncannon Street, London, WC2N 4JF, United Kingdom.\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td style=\"vertical-align: top; padding: 5px 0 0\">\r\n                                <img\r\n                                    style=\"margin-right: 5px\"\r\n                                    src=\"https://d2tox9xy69fb7l.cloudfront.net/uploads/telephone-1663294192.png\"\r\n                                    alt=\"Tel\"\r\n                                    title=\"Tel\"\r\n                                />\r\n                            </td>\r\n                            <td style=\"padding: 5px 0 0\">\r\n                                <p style=\"font-weight: 400; font-size: 12px; line-height: 14px; color: #5f5f5f; margin: 0\">\r\n                                    <a style=\"color: #5f5f5f; text-decoration: none\" href=\"tel:+442071935668\" title=\"Tel\"\r\n                                    >Tel: +44 207 193 5668</a\r\n                                    >\r\n                                </p>\r\n                            </td>\r\n                        </tr>\r\n                    </table>\r\n                </td>\r\n            </tr>\r\n        </table>\r\n        <p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191; margin-top: 30px;\">\r\n    Indian Immigration Services is a commercial website. We are not the Embassy/Consulate or the representative of any government departments of India.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    If you choose to utilize our services please be advised that we charge a handling fee for visa services, these services include consultation, providing advice on the requirements, taking responsibility for ensuring that your documentation is correct, and providing the result for your application. Our fee is included in the Government fee.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    This message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system. If you are not the intended recipient you are notified that disclosing, copying, distributing, or taking any action in reliance on the contents of this information is strictly prohibited.\r\n</p>\r\n<p style=\"text-align: justify; font-weight: 400; font-size: 12px; line-height: 14px; color: #919191\">\r\n    All content within the email is for reference purposes only. We are consulting company based on customer requirements, and the advice given is based on the host country\'s law. Therefore, we do not assume any liability for customers\' activities when they violate the rules or cheating involved in their home country.\r\n</p>\r\n    </td>\r\n</tr>\r\n</tfoot>\r\n</table>\r\n</center>\r\n</div>\r\n</body>\r\n</html>', 49, 'noreply@indianimmigration.org', 1692584981);

-- --------------------------------------------------------

--
-- Table structure for table `visa_promotion_travelner`
--

DROP TABLE IF EXISTS `visa_promotion_travelner`;
CREATE TABLE IF NOT EXISTS `visa_promotion_travelner` (
  `promotion_id` int(10) NOT NULL AUTO_INCREMENT,
  `promotion_code` text NOT NULL,
  `promotion_active` int(10) NOT NULL,
  `promotion_user_id` int(10) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visa_promotion_travelner`
--

INSERT INTO `visa_promotion_travelner` (`promotion_id`, `promotion_code`, `promotion_active`, `promotion_user_id`) VALUES
(1, 'ABCDEFGH', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `visa_state_trawick`
--

DROP TABLE IF EXISTS `visa_state_trawick`;
CREATE TABLE IF NOT EXISTS `visa_state_trawick` (
  `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `state_code` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `state_active` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visa_state_trawick`
--

INSERT INTO `visa_state_trawick` (`state_id`, `state_name`, `state_code`, `state_active`) VALUES
(1, ' Alaska', 'AK', 'Y'),
(2, ' Alabama', 'AL', 'Y'),
(3, ' Arkansas', 'AR', 'Y'),
(4, ' Arizona', 'AZ', 'Y'),
(5, ' California', 'CA', 'Y'),
(6, ' Colorado', 'CO', 'Y'),
(7, ' Connecticut', 'CT', 'Y'),
(8, ' District of Columbia', 'DC', 'Y'),
(9, ' Delaware', 'DE', 'Y'),
(10, ' Florida', 'FL', 'Y'),
(11, ' Georgia', 'GA', 'Y'),
(12, ' Hawaii', 'HI', 'Y'),
(13, ' Iowa', 'IA', 'Y'),
(14, ' Idaho', 'ID', 'Y'),
(15, ' Illinois', 'IL', 'Y'),
(16, ' Indiana', 'IN', 'Y'),
(17, ' Kansas', 'KS', 'Y'),
(18, ' Kentucky', 'KY', 'Y'),
(19, ' Louisiana', 'LA', 'Y'),
(20, ' Massachusetts', 'MA', 'Y'),
(21, ' Maryland', 'MD', 'Y'),
(22, ' Maine', 'ME', 'Y'),
(23, ' Michigan', 'MI', 'Y'),
(24, ' Minnesota', 'MN', 'Y'),
(25, ' Missouri', 'MO', 'Y'),
(26, ' Mississippi', 'MS', 'Y'),
(27, ' Montana', 'MT', 'Y'),
(28, ' North Carolina', 'NC', 'Y'),
(29, ' North Dakota', 'ND', 'Y'),
(30, ' Nebraska', 'NE', 'Y'),
(31, ' New Hampshire', 'NH', 'Y'),
(32, ' New Jersey', 'NJ', 'Y'),
(33, ' New Mexico', 'NM', 'Y'),
(34, ' Nevada', 'NV', 'Y'),
(35, ' New York', 'NY', 'Y'),
(36, ' Ohio', 'OH', 'Y'),
(37, ' Oklahoma', 'OK', 'Y'),
(38, ' Oregon', 'OR', 'Y'),
(39, ' Pennsylvania', 'PA', 'Y'),
(40, ' Rhode Island', 'RI', 'Y'),
(41, ' South Carolina', 'SC', 'Y'),
(42, ' South Dakota', 'SD', 'Y'),
(43, ' Tennessee', 'TN', 'Y'),
(44, ' Texas', 'TX', 'Y'),
(45, ' Utah', 'UT', 'Y'),
(46, ' Virginia', 'VA', 'Y'),
(47, ' Vermont', 'VT', 'Y'),
(48, ' Washington', 'WA', 'Y'),
(49, ' Wisconsin', 'WI', 'Y'),
(50, ' West Virginia', 'WV', 'Y'),
(51, ' Wyoming', 'WY', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist_ip`
--

DROP TABLE IF EXISTS `whitelist_ip`;
CREATE TABLE IF NOT EXISTS `whitelist_ip` (
  `ip_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `ip_active` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `whitelist_ip`
--

INSERT INTO `whitelist_ip` (`ip_id`, `ip_address`, `ip_active`) VALUES
(1, '127.0.0.1', 'Y'),
(2, '115.73.214.145', 'Y'),
(3, '118.69.35.117', 'Y');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
