-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2021 at 10:22 PM
-- Server version: 5.7.35-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yunlei_aau_wnm608_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `type`, `breed`, `description`, `img`, `date_create`) VALUES
(1, 4, 'Boink', 'dog', 'springerdoodle', 'Proident commodo labore ad esse consequat ipsum aliquip. Et eu labore commodo commodo tempor Lorem. Veniam enim do commodo cillum amet elit velit sit excepteur sit reprehenderit nulla dolore deserunt.', 'https://via.placeholder.com/400/742fff/?text=Boink', '2021-06-01 12:55:30'),
(2, 5, 'Eweville', 'dog', 'springerdoodle', 'Aute fugiat qui eu voluptate ea velit et sint elit magna qui veniam minim. Veniam occaecat quis sint in nisi adipisicing excepteur culpa aliquip elit. Eiusmod voluptate commodo aliquip non quis aliqua aute nulla voluptate enim nisi ut magna.', 'https://via.placeholder.com/400/724fff/?text=Eweville', '2021-03-07 11:54:06'),
(3, 7, 'Zoinage', 'cat', 'Maine', 'Fugiat veniam ad officia nisi deserunt enim Lorem irure deserunt irure. Dolore excepteur adipisicing commodo qui pariatur qui eu fugiat nisi. Magna ex sunt cupidatat magna est anim laborum magna.', 'uploads/1638921542.4844_dog-photo-tips-1.jpeg', '2021-03-21 04:39:29'),
(4, 8, 'Phuel', 'rabbit', 'polish', 'Pariatur dolor do id culpa laborum ad ullamco. Sunt reprehenderit reprehenderit eiusmod enim. Adipisicing aute est velit ipsum fugiat est.', 'https://via.placeholder.com/400/859fff/?text=Phuel', '2021-02-14 05:12:45'),
(5, 5, 'Exerta', 'dog', 'alaskan', 'Occaecat quis eiusmod labore et consectetur ullamco fugiat occaecat culpa ut nisi. Qui fugiat quis minim excepteur veniam aute dolor aliqua amet. Exercitation exercitation aliquip magna laboris do.', 'https://via.placeholder.com/400/821fff/?text=Exerta', '2021-07-29 01:38:14'),
(6, 7, 'Combogen', 'rabbit', 'teddy', 'Id qui magna consequat dolor eu minim cupidatat nostrud tempor fugiat. Consequat reprehenderit qui consectetur ea ad. Mollit culpa voluptate ad eu esse eiusmod sint aliqua anim magna.', 'uploads/1638922507.9131_Fluffy_Dog_Breeds-Pomeranian_.jpeg', '2021-10-23 11:05:05'),
(7, 7, 'Qot', 'rabbit', 'teddy', 'Culpa duis ullamco tempor est commodo veniam tempor aliquip enim in pariatur esse. Cupidatat sit amet excepteur ex ea voluptate non Lorem non in ullamco dolor laboris. Veniam occaecat dolore quis commodo voluptate ullamco mollit qui duis aute magna.', 'https://via.placeholder.com/400/769fff/?text=Qot', '2021-08-21 08:25:49'),
(8, 10, 'Exoplode', 'dog', 'springerdoodle', 'Qui nostrud adipisicing eu aliquip pariatur ipsum aliquip consequat dolor velit esse. Qui voluptate ea mollit laborum incididunt nostrud officia labore. Sint aliqua cupidatat nostrud proident duis sint ad cillum consequat dolor dolore et velit.', 'https://via.placeholder.com/400/769fff/?text=Exoplode', '2021-10-04 04:08:34'),
(9, 7, 'Ecratic', 'rabbit', 'teddy', 'Sunt duis dolor nostrud aliqua velit nulla excepteur ex. Dolore nulla minim eu laboris sunt ex. Enim exercitation reprehenderit amet sint quis occaecat excepteur.', 'https://via.placeholder.com/400/847fff/?text=Ecratic', '2021-06-06 03:28:01'),
(10, 6, 'Polarium', 'cat', 'ragdoll', 'Ex ex elit adipisicing occaecat minim. Eiusmod voluptate esse ipsum mollit in. In do adipisicing occaecat est ipsum elit magna laboris est ipsum nulla nisi mollit.', 'https://via.placeholder.com/400/812fff/?text=Polarium', '2021-08-30 08:02:29'),
(11, 3, 'Polarax', 'dog', 'alaskan', 'Occaecat sit sit ea et ullamco id anim ipsum cillum reprehenderit Lorem elit. Lorem incididunt sint anim id anim in laborum enim occaecat sint. Non nisi aliqua adipisicing dolore aliquip elit adipisicing irure consequat exercitation.', 'https://via.placeholder.com/400/864fff/?text=Polarax', '2021-09-08 06:24:47'),
(12, 10, 'Zensus', 'rabbit', 'dwarf', 'Sunt cupidatat occaecat exercitation id incididunt laborum officia ut laborum ipsum. Aute minim dolor id in magna elit tempor magna. Anim aute nostrud pariatur amet.', 'https://via.placeholder.com/400/757fff/?text=Zensus', '2021-03-25 05:15:16'),
(13, 3, 'Zuvy', 'rabbit', 'polish', 'Velit excepteur enim dolore occaecat. Eiusmod eu exercitation enim incididunt. Commodo adipisicing aute pariatur ex ex.', 'https://via.placeholder.com/400/786fff/?text=Zuvy', '2021-03-28 05:56:23'),
(14, 9, 'Qiaov', 'cat', 'Maine', 'Et laborum adipisicing labore irure proident eu elit elit excepteur. Magna ea et sint anim sint ut Lorem mollit proident proident officia. Adipisicing do sunt est enim laborum.', 'https://via.placeholder.com/400/796fff/?text=Qiao', '2021-06-21 07:52:59'),
(15, 4, 'Ovation', 'dog', 'alaskan', 'Sint excepteur veniam aliquip sunt aliqua voluptate anim sunt pariatur magna irure sunt laboris. Nulla laboris fugiat veniam laboris non amet elit do magna reprehenderit amet sit. Id ut enim anim minim excepteur proident cupidatat laboris dolor cillum Lorem.', 'https://via.placeholder.com/400/864fff/?text=Ovation', '2021-08-28 03:20:38'),
(16, 3, 'Harmoney', 'cat', 'ragdoll', 'Quis laborum labore dolore cupidatat mollit cupidatat Lorem proident proident nulla voluptate. Nulla consectetur excepteur eiusmod nostrud laborum. Anim incididunt ad occaecat non.', 'https://via.placeholder.com/400/854fff/?text=Harmoney', '2021-04-06 12:04:15'),
(17, 1, 'Opticom', 'rabbit', 'dwarf', 'Ad ex cillum pariatur magna enim laborum occaecat excepteur exercitation ut. Eu sunt minim eu irure adipisicing sunt deserunt veniam dolor eiusmod officia reprehenderit sint id. Sunt tempor fugiat eiusmod anim pariatur nulla exercitation.', 'https://via.placeholder.com/400/815fff/?text=Opticom', '2021-06-29 10:08:16'),
(18, 3, 'Everest', 'dog', 'alaskan', 'Aliqua in anim fugiat cillum excepteur eu laborum adipisicing. Irure duis excepteur ullamco eu exercitation eiusmod magna. Officia incididunt sint excepteur est consequat eiusmod.', 'https://via.placeholder.com/400/817fff/?text=Everest', '2021-05-24 08:46:19'),
(19, 1, 'Kog', 'dog', 'springerdoodle', 'Duis et culpa pariatur adipisicing irure ullamco elit minim eu velit qui eiusmod. Duis dolore laborum mollit cupidatat consequat veniam dolore eiusmod ad nostrud commodo. Commodo occaecat est reprehenderit consectetur magna.', 'https://via.placeholder.com/400/709fff/?text=Kog', '2021-04-22 02:55:04'),
(20, 7, 'Imageflow', 'cat', 'Maine', 'In elit nulla et sit cillum qui labore qui minim nostrud anim anim. Aliquip amet exercitation cupidatat sint est enim. Esse enim dolore consectetur aliqua aliqua enim excepteur fugiat tempor nisi. ', 'https://via.placeholder.com/400/756fff/?text=Imageflow', '2021-10-31 01:46:46'),
(21, 2, 'Medesign', 'dog', 'springerdoodle', 'Ullamco ipsum enim fugiat adipisicing et voluptate officia nisi magna adipisicing labore qui cupidatat consectetur. Laboris anim excepteur eiusmod sunt eiusmod dolore laborum culpa do aliquip. Pariatur non laborum nisi deserunt fugiat exercitation.', 'https://via.placeholder.com/400/798fff/?text=Medesign', '2021-04-11 02:11:02'),
(22, 9, 'Slamb', 'rabbit', 'teddy', 'Sint duis nisi aute nostrud labore ad incididunt cillum voluptate voluptate laboris aliquip. Velit reprehenderit minim excepteur nostrud Lorem sunt elit irure ut elit duis aliquip. Amet quis ex irure non sit ad.', 'https://via.placeholder.com/400/742fff/?text=Slambda', '2021-08-16 05:08:33'),
(23, 9, 'Quizmo', 'rabbit', 'teddy', 'Magna ipsum eu adipisicing dolor excepteur eiusmod cillum. Minim amet anim adipisicing veniam aute. Anim minim non in adipisicing irure anim labore voluptate enim proident aliquip.', 'https://via.placeholder.com/400/807fff/?text=Quizmo', '2021-03-12 02:58:08'),
(24, 10, 'Dentrex', 'dog', 'springerdoodle', 'Incididunt nulla exercitation do anim laborum deserunt excepteur quis fugiat deserunt exercitation in esse do. Do id eiusmod duis esse sit cillum. Proident nisi ullamco duis aliqua esse pariatur.', 'https://via.placeholder.com/400/808fff/?text=Dentrex', '2021-06-29 08:21:07'),
(25, 10, 'Eclipto', 'cat', 'ragdoll', 'Ea ea non dolor reprehenderit pariatur dolore eiusmod ea eu mollit qui in. Excepteur cupidatat do laborum duis eiusmod ipsum do mollit officia. Reprehenderit id non ut culpa.', 'https://via.placeholder.com/400/740fff/?text=Eclipto', '2021-04-20 06:24:28'),
(26, 10, 'Perkle', 'rabbit', 'teddy', 'Eu in amet ex ex nisi. Excepteur id qui id ut ex officia ad elit officia in. Voluptate ut incididunt velit occaecat.', 'https://via.placeholder.com/400/742fff/?text=Perkle', '2021-07-08 05:17:52'),
(27, 4, 'Scenty', 'dog', 'alaskan', 'Adipisicing est commodo do ipsum aute consequat nulla nostrud laborum aliquip elit cupidatat in velit. Aute nostrud minim aliqua cupidatat duis adipisicing amet eiusmod tempor enim commodo aliquip. Aute sit incididunt enim minim est sit.', 'https://via.placeholder.com/400/828fff/?text=Scenty', '2021-07-10 01:32:04'),
(28, 6, 'Pheast', 'cat', 'ragdoll', 'Dolor duis do velit aute adipisicing aute aute excepteur laborum minim laborum. Eu elit laborum sunt nulla adipisicing nisi culpa. Deserunt ullamco veniam quis adipisicing.', 'https://via.placeholder.com/400/721fff/?text=Pheast', '2021-08-29 08:46:46'),
(29, 8, 'Limozen', 'rabbit', 'teddy', 'Deserunt sit velit do adipisicing ex dolor est aute irure tempor esse consequat. Magna quis ex ut quis commodo officia consequat do. Cupidatat sunt commodo ullamco amet aute dolor.', 'https://via.placeholder.com/400/778fff/?text=Limozen', '2021-11-02 12:21:22'),
(30, 10, 'Quailcom', 'rabbit', 'dwarf', 'Culpa enim dolor quis nostrud proident sit pariatur voluptate adipisicing occaecat aute irure non aliqua. Ipsum ex do officia esse. Ad et quis irure excepteur irure duis mollit occaecat laborum nostrud duis dolor veniam commodo.', 'https://via.placeholder.com/400/715fff/?text=Quailcom', '2021-09-29 05:59:44'),
(31, 3, 'Sustenza', 'rabbit', 'polish', 'Deserunt voluptate aliquip commodo in officia dolor dolor occaecat aute Lorem veniam. Enim ipsum dolore dolor cillum. Tempor cillum dolore elit sit do.', 'https://via.placeholder.com/400/765fff/?text=Sustenza', '2021-06-02 10:58:19'),
(32, 2, 'Qnekt', 'cat', 'sphynx', 'Ea in in mollit ullamco amet esse incididunt proident commodo. Culpa laborum consectetur nulla amet non. Consectetur excepteur dolore pariatur ipsum occaecat ullamco.', 'https://via.placeholder.com/400/840fff/?text=Qnekt', '2021-02-15 06:46:50'),
(33, 10, 'Plexia', 'dog', 'springerdoodle', 'Magna consequat quis sunt nostrud ut laboris anim nulla exercitation labore cupidatat reprehenderit cillum consequat. Ipsum mollit esse cillum magna cupidatat anim labore qui ex qui ea deserunt. Deserunt ea pariatur ex mollit Lorem.', 'https://via.placeholder.com/400/760fff/?text=Plexia', '2021-03-05 03:10:17'),
(34, 4, 'Teraprene', 'rabbit', 'teddy', 'Incididunt id sunt irure proident nulla eu. Aliquip aliquip nostrud non consectetur veniam consectetur ad consectetur ut ad aliquip anim. Est veniam ullamco incididunt esse nulla veniam sit ex velit eiusmod consectetur velit pariatur proident.', 'https://via.placeholder.com/400/840fff/?text=Teraprene', '2021-10-03 10:36:00'),
(35, 9, 'Eclipsent', 'cat', 'sphynx', 'Consequat consequat dolore laboris irure sunt elit. Aliquip qui eu ut nisi amet. Excepteur proident est laboris consequat non culpa quis nostrud officia.', 'https://via.placeholder.com/400/869fff/?text=Eclipsent', '2021-06-22 05:06:33'),
(36, 2, 'Liquidoc', 'cat', 'sphynx', 'Reprehenderit dolore minim commodo ullamco enim esse voluptate in consequat eiusmod laboris mollit. Consectetur reprehenderit ex aute ea aliqua incididunt nostrud deserunt aliqua excepteur excepteur pariatur voluptate sint. In amet reprehenderit duis esse tempor commodo reprehenderit cupidatat dolor sint nulla.', 'https://via.placeholder.com/400/753fff/?text=Liquidoc', '2021-01-04 05:17:41'),
(37, 9, 'Twiggery', 'rabbit', 'teddy', 'Fugiat veniam aute veniam tempor tempor do laborum adipisicing velit voluptate. Elit qui cupidatat qui esse aliqua enim proident labore laboris duis voluptate laborum. Duis sit enim in consequat consequat deserunt laboris amet ut reprehenderit sit Lorem.', 'https://via.placeholder.com/400/776fff/?text=Twiggery', '2021-10-05 03:14:46'),
(38, 6, 'Softmicro', 'dog', 'springerdoodle', 'Dolore aliqua occaecat aliqua labore ullamco tempor minim laboris nostrud eu dolor amet ad. Excepteur quis culpa quis occaecat Lorem laboris. Aliquip proident commodo ut Lorem aute irure aliquip irure.', 'https://via.placeholder.com/400/811fff/?text=Softmicro', '2021-06-14 01:12:43'),
(39, 4, 'Virxo', 'rabbit', 'teddy', 'Nisi ex quis exercitation qui duis sint cupidatat irure fugiat ex proident eiusmod eu. Est adipisicing sint cillum dolor amet duis consequat. Excepteur occaecat exercitation eiusmod elit magna.', 'https://via.placeholder.com/400/851fff/?text=Virxo', '2021-03-03 12:15:35'),
(40, 8, 'Melbacor', 'rabbit', 'polish', 'Consequat deserunt nulla aliquip qui aliquip. Deserunt mollit exercitation anim reprehenderit Lorem velit exercitation incididunt do non do excepteur velit. In elit magna ex commodo pariatur minim eiusmod do et culpa laboris voluptate qui aute.', 'https://via.placeholder.com/400/789fff/?text=Melbacor', '2021-05-03 07:56:27'),
(41, 6, 'Insuron', 'dog', 'springerdoodle', 'Ullamco exercitation deserunt nisi excepteur et eiusmod anim labore ut sunt. Quis tempor ea mollit ullamco ad. Fugiat mollit aliqua laboris aliqua tempor ad.', 'https://via.placeholder.com/400/729fff/?text=Insuron', '2021-05-15 07:04:37'),
(42, 6, 'Vetron', 'dog', 'springerdoodle', 'In proident dolor mollit elit sint. Consectetur officia ea reprehenderit enim commodo officia eiusmod nostrud mollit esse ullamco voluptate eu deserunt. Eiusmod amet consequat culpa adipisicing.', 'https://via.placeholder.com/400/707fff/?text=Vetron', '2021-06-19 12:20:51'),
(43, 4, 'Providco', 'dog', 'springerdoodle', 'Id veniam officia laborum magna. In officia id enim amet ut cupidatat anim. Id in non magna adipisicing do nisi proident enim.', 'https://via.placeholder.com/400/773fff/?text=Providco', '2021-01-21 09:38:30'),
(44, 9, 'Rameon', 'rabbit', 'teddy', 'Pariatur consectetur aute enim amet sint anim. Nostrud elit eiusmod pariatur sunt. Id nulla exercitation non aliqua amet esse.', 'https://via.placeholder.com/400/746fff/?text=Rameon', '2021-03-04 10:02:42'),
(45, 5, 'Sentia', 'dog', 'labrador', 'Eu voluptate culpa cupidatat ea anim. Ut ex ad mollit officia officia nulla et eiusmod consectetur sint velit ex reprehenderit excepteur. Occaecat officia sint minim magna esse cillum aliqua.', 'https://via.placeholder.com/400/845fff/?text=Sentia', '2021-05-03 05:22:39'),
(46, 9, 'Visualix', 'dog', 'springerdoodle', 'Occaecat non qui incididunt occaecat mollit aliqua duis. Sint officia minim in veniam commodo esse ex eu commodo. Ut tempor exercitation tempor adipisicing.', 'https://via.placeholder.com/400/718fff/?text=Visualix', '2021-01-27 01:15:44'),
(47, 4, 'Interloo', 'rabbit', 'polish', 'In exercitation sint exercitation quis cillum tempor laborum enim amet reprehenderit quis labore sunt. Amet pariatur anim sint ex dolore ex ea excepteur aute ad et eu aliqua dolor. Do et ea labore laborum esse aliquip pariatur do irure incididunt reprehenderit adipisicing esse.', 'https://via.placeholder.com/400/777fff/?text=Interloo', '2021-03-11 06:47:23'),
(48, 1, 'Emergent', 'rabbit', 'teddy', 'Id cupidatat commodo duis dolor ut consequat labore dolor duis. Aliquip in fugiat nostrud magna esse est fugiat Lorem ad. Ut amet ullamco ullamco magna Lorem tempor.', 'https://via.placeholder.com/400/776fff/?text=Emergent', '2021-09-02 03:20:31'),
(49, 3, 'Andershun', 'rabbit', 'teddy', 'Nulla est minim dolor labore magna ipsum incididunt voluptate ad eu ad. Nulla laborum voluptate minim eu nostrud nisi et tempor irure. Amet ex labore voluptate velit eu sint veniam voluptate.', 'https://via.placeholder.com/400/823fff/?text=Andershun', '2021-06-21 06:36:00'),
(50, 5, 'Tourmania', 'dog', 'springerdoodle', 'Quis incididunt sunt enim amet voluptate veniam laboris eiusmod minim consequat. Non dolore est voluptate labore sit magna laborum occaecat dolor aute velit. Ullamco magna nostrud officia aute ad ullamco.', 'https://via.placeholder.com/400/819fff/?text=Tourmania', '2021-08-17 05:14:03'),
(77, 11, 'Anna', 'Dog', 'Labrador', 'Anna is a super smart Labrador. She goes running with the shelter jogging team but isn\'t much of an athlete. She prefers to meander and sniff on her walks. She is house trained and walks well on leash, she isn\'t high energy but does enjoy mental stimulation.', 'uploads/1639460655.929_labrador.jpeg', '2021-12-13 22:43:09'),
(78, 11, 'Susie', 'Dog', 'Poodle', 'Susie is a sassy little girl! She takes a bit to warm up to new people, but once she\'s comfortable, she\'ll come to you for body rubs. Although she likes being petted, she\'s quite independent and sleeps well in her crate or on a pile of clothes (her favorite spot!).', 'uploads/1639460735.7067_maltese poodle.jpeg', '2021-12-13 22:45:27'),
(79, 11, 'Ella', 'Dog', 'Springerdoodle', 'Ella is a beautiful Springerdoodle. She has some significant shyness around new people so would really benefit from a home familiar with the breed or willing to learn more.', 'uploads/1639460791.9546_Springerdoodle.jpeg', '2021-12-13 22:46:23'),
(80, 11, 'Diego', 'Dog', 'Yorkshire', 'Diego is an easy-to-manage guy. He likes his chew toys, and loves a car ride, a soft couch, or a lap to snuggle on. He\'s generally gentle, happy and relaxed, and sometimes excited and bouncy.', 'uploads/1639460832.9874_Yorkshire.jpg', '2021-12-13 22:47:05'),
(81, 11, 'Luke', 'Dog', 'Poodle', 'Luke is a big boy, but a gentle little - upbeat and oh so happy! Luke loves running and playing ball, and he will be an awesome exercise partner and a great outdoor adventure buddy too.', 'uploads/1639460884.6529_poodle2.jpeg', '2021-12-13 22:47:57'),
(82, 11, 'Nyx', 'Dog', 'Corgi', 'Nyx is totally adorable and will grow to be a gorgeous med/large super companion. He is super playful, mischievous, a problem child and so dog-gone lovable. He loves playing with his toys and a good chase with his 4 siblings.', 'uploads/1639460925.1403_corgi.jpeg', '2021-12-13 22:48:36'),
(83, 11, 'Morty', 'Dog', 'Alaskan', 'Morty is currently in a board and train program. He wants to be a good boy and is learning quickly. He is working on impulse control and basic manners. He can be a little fearful at times and is wary of meeting new people.', 'uploads/1639460965.3275_alaskan.jpeg', '2021-12-13 22:49:16'),
(84, 11, 'Kiara', 'Dog', 'Alaskan', 'Kiara is a big love bug who wants to be near her humans, requires lots of daily exercises, and will benefit from continued training. She loves naps, staring out the windows (her favorite spot is her foster family\'s bay window), and playing with their resident dog.', 'uploads/1639461002.1719_alaskan2.jpeg', '2021-12-13 22:49:55'),
(85, 11, 'Elsa', 'Cat', 'Ragdoll', 'Elsa is a sweet two-year-old cat who has pretty blue eyes. She will let anyone hold her or give her pets, loves sitting in laps, and her squawky meow will remind you whenever you are giving her an inadequate amount of attention or food for her liking.', 'uploads/1639461038.2897_Ragdoll.jpeg', '2021-12-13 22:50:30'),
(86, 15, 'test', 'test', 'test', 'test', '', '2021-12-14 19:02:44'),
(87, 15, 'Test2', 'Test2', 'Test2', 'Test2', 'http://via.placeholder.com/400/?text=ANIMAL', '2021-12-14 19:22:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
