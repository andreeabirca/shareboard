-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2017 at 01:23 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shareboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `title`, `body`, `link`, `create_date`) VALUES
(1, 1, 'Five Must-Reads for Tackling Complex Problems', 'Ted Cadsby writes "the following five books are a small sample from a longer list of must-reads, but they have two things in common. First, they forced me to confront how superficial and inadequate my thinking was in assessing different kinds of complex problems. Second, they took the important next step of introducing more sophisticated approaches to tackling complexity, which I have been using ever since."', 'https://www.farnamstreetblog.com/2011/10/five-must-reads-for-tackling-complex-problems/', '2017-08-23 13:42:17'),
(2, 2, 'Behavioral Economics Reading List', 'When faced with a decision, we all believe we\'re weighing the facts objectively and making rational, thoughtful decisions. In fact, science tells us that in situations requiring careful judgment, every individual is influenced by his or her own biases to some extent. Drawing on the very latest behavioral decision research this book examines judgment in a variety of managerial contexts and provides important insights that can help you make better managerial decisions.', 'https://www.farnamstreetblog.com/2010/04/behavioral-economics-reading-list/', '2017-08-24 13:42:17'),
(3, 1, 'Fermat&#39;s Last Theorem', 'Simon Singh and John Lynch&#39;s film tells the enthralling and emotional story of Andrew Wiles. A quiet English mathematician, he was drawn into maths by Fermat&#39;s puzzle, but at Cambridge in the &#39;70s, Fermat&#39;s Last Theorem (FLT) was considered a joke, so he set it aside. Then, in 1986, an extraordinary idea linked this irritating problem with one of the most profound ideas of modern mathematics: the Taniyama-Shimura Conjecture, named after a young Japanese mathematician who tragically committed suicide. The link meant that if Taniyama was true then so must be FLT. When he heard, Wiles went after his childhood dream again. &#34;I knew that the course of my life was changing.&#34; For seven years, he worked in his attic study at Princeton, telling no one but his family.', 'https://www.farnamstreetblog.com/2012/08/fermats-last-theorem/', '2017-08-24 16:43:03'),
(4, 1, 'Maya Angelou on Haters, Life, Reading, and Love', 'I&#39;ve been slowly working my way through some of Maya Angelou&#39;s material. Notably, Conversations with Maya Angelou, Letters to my Daughter, and What I Know Now: Letters to My Younger Self. Through that I&#39;ve pulled out these 25 quotes that resonated with me. They offer timeless wisdom and advice on everything from what to do with haters to the importance of reading and love.', 'https://www.farnamstreetblog.com/2014/09/maya-angelou-on-haters-life-reading-and-love/', '2017-08-24 17:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
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
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
