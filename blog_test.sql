-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2022 at 10:18 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_test`
--
CREATE DATABASE IF NOT EXISTS `blog_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blog_test`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2022-03-26 11:22:01', '2022-03-26 11:22:01'),
(2, 'Web Design', '2022-03-26 11:22:01', '2022-03-26 11:22:01'),
(3, 'Personal', '2022-03-26 11:22:01', '2022-03-26 11:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(122, 1, 'ini tes lagi dan terus', 'ini-tes-lagi-dan-terus', 'ini tes lagi dan terus', '2022-04-05 08:17:30', '2022-04-06 17:40:20'),
(131, 2, 'sdfsdf', 'sdfsdf', '<p>On-Page SEO</p><p>Title</p><p>Description</p><p>Content.</p><p>Page.</p><p>URL.</p><p>H1, H2, H3 tags.</p><p>Meta tags</p><p>Images</p><p>Permalinks</p><p>Placement in meta tag</p><p>Title Length/ post title length</p><p>Keyword Stuffing in Description</p><p>Page Load Time</p><p>Sitemap</p><p>Robots file</p><p>Google Analytics</p><p>Final SEO Score</p><p>Off-Page SEO</p><p>Inbound Links (Back Links)</p><p>Indexed Links</p><p>Related and opportunities keywords</p><p>keyword Difficulty</p><p>URL and Domain Authority</p><p>Domain Age</p><p>Alexa Rank</p><p>Majestic trust flow &amp; citation flow</p><p>Social Share</p><p><br></p><p>Website SEO Analysis To An Excellent Search Engine Optimization</p><p>Optimizing your website using SEO optimization tool from website SEO Checker to rank high than others in search Engines such as Google, Bing and Yahoo takes a lot of time. But with the right procedure and method results are rewarding. Increased visibility of your business was, therefore, bringing more sales. Here are few things you need to know about SEO;</p><p><br></p><p>Details from Website SEO Analysis of some factors that determine SEO</p><p><br></p><p>The key word in a description:&nbsp; Search engines favor websites and web pages that make use of the main words used in describing a page. Especially keywords in snippet as seen on SEO test tool. When you take advantage of the right keywords in your description of a page, then you have better chances with occupying the first page on search engines. Although key words cannot get you directly to the front page of Google, surely it increases your chances. Do well also to limit the use of a particular keyword on your website as too much of everything is bad.</p><p><br></p><p>Keywords on H1: H1 headers are part and parcel of search engine optimization and should not be over looked no matter what.&nbsp; Using your key words on your HI tag is the great way to help your users to find your content. HI, tag keywords should not be over used, just one or two is okay, do not over use unless search engines will consider it spamming. H1, tags gives the first impression to any user that visits on what your page stands for. H1, tags can be said to be the receptionist of any web page, so the right keywords should be used.</p><p><br></p><p>&nbsp;Keyword in Content: When writing any content on a web page, be it a blog post, sales page or about us page so far as content is involved, use the right keyword can help catapult you to your potential visitors. Users were seeking for services on search engines type in particular work related to service they try for. When you have these keywords embedded in your content, these users will be directed to your website. Therefore make sure your keyword density is right at least appearing at first paragraph of your content and then up to 10 times in your content.</p><p><br></p><p>&nbsp;<br></p><p><br></p><p>Keywords in URL: Virtually every part of your page that deals with words deserve to be optimized with target keywords for your website. The Url address of your site (e.g., www.dentist.com) should contain at least your keywords for which you want your site to rank. Keyword in URL does not only rank your web pages; it helps your users read information concerning a particular page easily before visiting the link. same as website SEO Checker</p><p><br></p><p>It is also important that you make keyword research before you purchase your domain name(URL) so you don’t have the need to change it after few years.</p><p><br></p><p>Density: Density here just means how often your targeted keyword appeared on your website. Your keyword density should not be used many times, like more than 15 times. Targeted Keywords should only be used once in a paragraph.</p><p><br></p><p>Keywords Meta tags: Keywords for Meta tags are very helpful when you are targeting users from Bing and Yahoo. When writing your Meta tag descriptions, kindly use your targeted keywords in your meta tags too. They will prove quite useful in Bing and Yahoo.</p><p><br></p><p>&nbsp;Images: Users like pictures, they are very appealing to the eye. Most often people search for information using certain keywords and only images optimized with such keywords show up. It is imperative that you save the images used on a website with your targeted keywords.</p><p><br></p><p>&nbsp;Permalinks: They are also part of the SEO analysis on a website, adding your targeted keyword in hyperlinks on your site is very necessary.</p><p><br></p><p>Keywords in Alt Image: Another great opportunity to optimize your site in website SEO Checker for search engines. Images help reduce bounce rates and make visitors spend much time on your website. Therefore if you have no image on your site, is a time you think about adding one or two of them. Make sure in the alt description of the image; you add your targeted keyword. It allows users browse through your website with ease.</p><p><br></p><p>Title Length/ post title length: The recommended title length that is very friendly with search engines is the minimum of 50 and maximum of 60 characters. Title characters are shown on search engines as a description of what a page is all about. In a situation where there are not enough title characters, search engines just replace it with its desired text. Try as much as possible to write an engaging title and enough word length too, visitors from search tend to be attracted to them before they visit your website. Make your title very eye catchy that visitors will want to click when they read it.</p><p><br></p><p>Description Length: Everything about SEO has its rules, dos and don’ts to make sure it works. One of those standards is to maintain the word duration in every description, of which one of them is Meta description. Every meta description on your website should contain up to 156 words altogether. The description as always will include your target keywords exp: Website SEO Analyzer for which you will like search engines to rank your site for.</p><p><br></p><p>Title in a page: Title of your page should bear your targeted keyword at the very beginning. This is to inform all search engines that crawl posts from your website what a particular page stands for. The example below will help;</p><p><br></p><p>&lt;title&gt;domain authority checker – pa da checker – website seo&lt;/title&gt;</p><p><br></p><p>&nbsp;Content Length: Content is king, your materials represent your brand and what a page in your website is all about. Contents can be blog post or article on your site; it might even be sales copy depending on the purpose of your website. NO matter which is it, the most important thing is those contents meet a certain word length, and that is a minimum of 50 words and above. IT is recommended that Google and other search engines favor websites with contents up to 400 words.</p><p><br></p><p>Although word length matters, it is excellent if those contents are unique and free from plagiarism and readability. Be it 50 words content or 500 words; the content should all contain your keyword too.</p><p><br></p><p>&nbsp;URL Length:&nbsp; A link to any page should contain a maximum of 75 characters to make it easier for search engines to craw post and information from that page of yours. Using just a three partitioned words such like eyes of God, will be much simpler for search engines. Even with the 75-word limit make your URL very informative and passing a message of what the page it leads to talk about.</p><p><br></p><p>&nbsp;Keyword Stuffing in Title: You might be tempted to add your targeted keywords many times in your title, but this is a total turn off for a search engine. Some of the search engines search, multiple keywords in titles as spam. When this happens your chances of ranking higher with those keywords becomes quite small.</p><p><br></p><p>&nbsp;Keyword Stuffing in Content:&nbsp; Just like keyword stuffing in the title, using too many keywords in your content within one paragraph will attract a penalty from search engines which is giving a low ranking for such page with stuffed keywords. Targeted keywords in your contents should not be more than 15.If you go ahead was violating this rule, and then your ranking will be very small.</p><p><br></p><p>&nbsp;Keyword Stuffing in Description: Yet another warning about stuffing of keywords, this time it is in the description. Keyword was stuffing a danger zone and should not be toyed with as it can land your page on the last page of a search engine. Your Meta tag description of about 155 should contain your keywords. These keywords should not be in multiple folds; they are to appear few times. Stuffing keywords in your Meta tag description will not increase your ranking further but will catch the user attention to visit your website from search engines.</p><p><br></p><p>&nbsp;Page Load Time:&nbsp; This refers to the time it takes for a page to open when a visitor clicks it. Page load time determines your bounce rate, how long a visitor will stay on your website. If your page loads very fast like in one second or 3 seconds as recommended, then your page is great. The loading speed can be achieved with the use of some tools like the Gzip. Files on a page can be reduced to the smaller size so as to allow the page load faster as website SEO Analysis. Gzip is better used on CSS, HTML, and JavaScript files that are larger than 150 bytes. Not on images on a page, there are better tools to use in compressing and optimizing images, such as the Adobe Photoshop. You can save the image as web content from the save panel of your Adobe Photoshop; this will solve the problem of page load speed. One amazing thing about compressing the size of your image with Adobe Photoshop software is that the image still retains its quality even after compressing it.</p><p><br></p><p>&nbsp;<br></p><p><br></p><p>Sitemap: Most of the times SEO experts often neglect the role sitemap plays in search engine optimization. A site map is just like the mainframe work of your site, more like the map thought which search engines navigate your website, every page and every content. It shows the structures of every part of your website and serves as a guide to any search engine that wants to interact with your web pages. It is the site map that you tell search engines which web page to index and which not to index. As previously stated sitemap serves as a guide to search engines. This is to say that search engines are entirely blind on your site and needs some guidance which sitemaps provide.</p><p><br></p><p>Robots: A text file called robots.txt file is just as important as the sitemap. When the robot text is not functional on your website, search engines might not be able to crawl your website pages in contents. When this happens, your site will vanish on the search engines because there will be no robot text to tell search engines where to crawl and when to do that. Robot text might be present on a website but not working correctly this might lead to the same effect f not been listed on any search engine. With the help of the robot text file, you can command search engines not to crawl images on a web page or any other file you wish to retain. All you will do is to block those contents you want search engines not to crawl from your robot text file.</p><p><br></p><p>Google Analytics: This is a tool created by one of the world famous search engines, Google. The Google analytics is a tool made to track traffic your website is getting, and where they are coming from (country) The Google analytics analyses every data on your website as I regard to visits, page views and the rest. The dashboard of Google analytics is partitioned to measure the following;</p><p><br></p><p>Overview of All Channels</p><p><br></p><p>Social Media</p><p><br></p><p>Referrals (Back links)</p><p><br></p><p>Direct Traffic</p><p><br></p><p>Organic Search (SEO)</p><p><br></p><p>Paid Search (PPC)</p><p><br></p><p>Overview</p><p><br></p><p>Google Analytics is a right tool for every website owner to monitor every activity on the site. All the data you need on your website is what Google analytics presents on a platter of Gold. It is a beneficial tool for bloggers too that deals o paid traffic to track the traffic coming in and where it comes from and determine the return on investment for every dollar spent. Google analytics is not just a tool for the monitor where visitors visit from; it also shows the captions they take when they visit. Links they clicked on and how much time spent on your site (bounce rate)</p><p><br></p><p>The good news about the Google analytics tool is that is free with just a proper installation of the plug-in on your website; you are ready to go.</p><p><br></p>', '2022-04-06 08:08:36', '2022-04-13 09:59:21'),
(134, 2, 'sdfgdfg', 'sdfgdfg', '<p>cvbcvb</p>', '2022-04-06 08:46:35', '2022-04-07 07:29:45'),
(135, 2, 'fgfgfg', 'fgfgfg', '<p>cvbcvbcv</p>', '2022-04-06 08:47:12', '2022-04-07 07:29:40'),
(136, 1, 'cvbwsd', 'cvbwsd', '<p>fghfgh</p>', '2022-04-06 08:48:30', '2022-04-07 07:29:34'),
(140, 1, 'tes time dfs', 'tes-time-dfs', '<p>xcvxcvxcvxcv</p>', '2022-04-06 16:12:38', '2022-04-06 17:47:23'),
(141, 1, 'ini judul', 'ini-judul', '<p>ini bodynya</p>', '2022-07-05 13:00:52', NULL),
(142, 2, 'ini judul blog yang bagus banget aku suka', 'ini-judul-blog-yang-bagus-banget-aku-suka', '&lt;p&gt;ini baris 1&lt;/p&gt;\n&lt;p&gt;ini baris 2&lt;/p&gt;\n&lt;p&gt;ini baris 3&lt;/p&gt;\n&lt;p&gt;ini baris 4&lt;/p&gt;\n&lt;p&gt;ini baris 5&lt;/p&gt;', '2022-07-05 13:11:59', '2022-07-05 13:18:07'),
(143, 2, 'ini coba dari form', 'ini-coba-dari-form', '&lt;p&gt;mantap kan coba &lt;strong&gt;cobanya&lt;/strong&gt;&lt;/p&gt;', '2022-07-05 14:43:44', NULL),
(144, 3, 'nulis untuk cek session', 'nulis-untuk-cek-session', '&lt;p&gt;personal saja&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;hahahahas&lt;/p&gt;', '2022-07-05 15:06:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
