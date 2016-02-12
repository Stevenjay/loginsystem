-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2016 at 10:11 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zipinvoices`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard User', ''),
(2, 'Administrator', '{\r\n"admin": 1,\r\n"moderator": 1\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(65) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(3, 'alex', 'programming', 'salt', 'Steven', '0000-00-00 00:00:00', 0),
(4, 'bob', '', '', '', '0000-00-00 00:00:00', 0),
(5, 'steven', '', '', 'steven', '0000-00-00 00:00:00', 0),
(6, 'Dale', 'programming', 'salt', 'Steven', '0000-00-00 00:00:00', 0),
(7, 'Jonathan', '1846d2e5c6c07a617ab93a02083c14a6c62ddac16fda85a1e225c773293a7807', '\rÙÀ	OKÈ½œd¼3kí@òŠØó pÑ4ÛÙ÷¼ífé', 'Makamoonmy', '2016-01-07 23:48:53', 1),
(8, 'Jonatha', 'f2470156063d50c575c87426a3f471c3be8721da7b4d8fff55dbb6958eacbb65', 'CiÚÇyÞ^B4\0êç¼KÛoîœ¹+§‹§sD''Ô', 'Makamoonmy', '2016-01-07 23:53:18', 1),
(9, 'alexs', '932f93d64aa72b83260a4b88e7aee37fa336a3d0c71d780479aa2ceeb6eee44e', 'íÁRFjxäXÞ#¿]–Í1j®Dú®Á—ÄÙ·óƒH', 'asdfgh', '2016-01-07 23:54:21', 1),
(10, 'weasle', '1de5ece845894f591ee0e9a97c7fb4e80116990666699a3410fe104ae4fec620', '3ìWv%–‡o	OÎÆMJg^œÝ N™ê´FP<šÝó', 'weasle', '2016-01-07 23:58:50', 1),
(11, 'weasled', '1125327b533da2183c061fecaaf7414718cd98e95ab4dc555f476759270dec26', 'áo—6µ‘™33åýšn#èÙ>	EidŠ´dáûgê', 'weasle', '2016-01-07 23:59:21', 1),
(12, 'sheba', 'cc4101e81694cf513f6cf7abc0153c88cc862f3b9fd531e16a3cf1ec46d21fed', '¹“t€«`	Ø.¯*ì[€Z+_ÈäfvW\ZsHL¹–', 'qwerty', '2016-01-08 00:04:31', 1),
(13, 'shebaw', 'dc496d4916f81fcc6b5a7570a8a48e6b22f17a393eea953683b8cd27930542ab', '¥¶£à™V"‘U^/c™ÙÌšÅ ÔûõUÏûFy¾}', 'qwerty', '2016-01-08 00:05:15', 1),
(14, 'shebawsa', '962d0ee1f0c207c584575c85364e52b867b672f618208aa6f486d6d1b9c22d61', '\0Ö:²„Æ|l@FÅâ…ªâ…ŽŸÿŒ†<ºTÐ''©Wš', 'qwerty', '2016-01-08 00:07:26', 1),
(15, 'admin', '7490f7aa81957b84cdbbdcc7f10c6e456991caafc4528bdfc4b9ad8d1c7c33a5', 'óØ%z«Ry¿µbãtûŸ |!ž|b‘Õ…Câ\ZY', 'Steveo', '2016-01-08 00:42:32', 2),
(16, 'Boss', 'ac5752df40461567a486ea6499212086214ce450c4b57df5ae11c6282b81866b', 'hØ0P#EýÄS]%Íá¸x¼ñ’¿–>ä}»ã9', 'Steven Jasionowicz', '2016-01-08 01:55:07', 1),
(17, 'beans', '8708a2616999ac8fcaadc61b05c2106eccd02f7bce453482cea6f1f74183b399', '[¨rè;"ŸÕÉ.iƒäþ’c:‘§+ÔqšãÏ(å“d†', 'Mr Bean', '2016-01-08 10:10:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
