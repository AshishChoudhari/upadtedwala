-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 10:18 AM
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
-- Database: `be19_cr5_animal_adoption_sarközi_stefanie`
--

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `address` varchar(60) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `size` varchar(20) NOT NULL,
  `age` varchar(30) NOT NULL,
  `vaccinated` varchar(3) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agency_id_fk` int(11) NOT NULL,
  `price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id`, `name`, `picture`, `address`, `description`, `size`, `age`, `vaccinated`, `breed`, `status`, `agency_id_fk`, `price`) VALUES
(1, 'Marble', 'cat1.jpg', 'Praterstraße 25, 1020 Vienna', 'Meet \"Marble,\" the enchanting brown and white tiger cat with a coat that resembles swirling patterns of marble. This feline beauty exudes grace and charm with her striking amber eyes that hold a hint of mystery. Marbles soft, velvety fur showcases a captivating mix of earthy brown hues and pristine white patches, making her a true masterpiece of natures artistry. With a playful and affectionate demeanor, Marble is sure to captivate the hearts of all who encounter her. Get ready to be mesmerized by the allure of Marble, your new companion and purr-fect friend.', '23', '9 ', 'Yes', 'Cat', 0, 3, '200'),
(2, 'Mocha', 'cat2.jpg', 'Schönbrunner Schlossstraße 57, 1130 Vienna', 'Meet \"Mocha,\" the delightful gray and white tiger cat with captivating brown eyes that exude warmth and charm. Mochas luxurious coat is a delightful blend of soft gray tones and pristine white patches, reminiscent of delicate brushstrokes on a canvas. Her regal stripes evoke a sense of wild elegance, as if she carries the spirit of a jungle adventurer.\r\n\r\nMochas inquisitive brown eyes reflect her playful and affectionate nature. With a gentle purr and a friendly nudge, she will quickly win your heart and become your loyal companion. Whether she is gracefully leaping after a toy or contentedly lounging in a sunlit spot, Mochas presence brings joy and tranquility to any room.\r\n\r\nHer expressive face and adorable pink nose make her a picture of feline enchantment. Mochas playful antics and loving demeanor ensure that she will be cherished as a treasured member of your family, adding warmth and happiness to your life with every whisker twitch and tail wag. Prepare to be captivated by the allure of Mocha, the embodiment of both wild beauty and loving companionship.', '25', '2 ', 'Yes', 'Cat', 0, 3, '200'),
(3, 'Tango', 'cat3.jpg', 'Mariahilfer Straße 12, 1060 Vienna', 'Introducing \"Tango,\" the adorable brown, black, and white tiger baby cat with mesmerizing green eyes that sparkle with youthful curiosity. Tangos tiny, fluffy frame is adorned with a kaleidoscope of colors, resembling an artistic masterpiece in feline form.\r\n\r\nHer luscious brown fur intermingles with striking jet-black stripes, creating an enchanting pattern that flows gracefully along her petite body. Dainty patches of pure white accentuate her playful and endearing charm, making her an irresistible sight to behold.\r\n\r\nTangos captivating green eyes seem to hold the wonders of the world, reflecting her eagerness to explore and discover everything around her. With each bound and leap, she embraces her innate curiosity, turning everyday moments into magical adventures.\r\n\r\nHer gentle purrs and soft mews are a testament to her affectionate and trusting nature. Tango is quick to form bonds, wrapping you around her tiny paws with her loving demeanor. As she playfully chases her tail or cuddles up for a cozy nap, Tango will effortlessly fill your heart with joy and laughter.\r\n\r\nPrepare to be captivated by the wonder and innocence of Tango, a delightful bundle of fur that brings the spirit of exploration and the warmth of companionship to your home. With Tango by your side, every day will be an extraordinary journey filled with love and excitement.', '8', '0.25', 'No', 'Cat', 0, 4, '200'),
(4, 'Sunbeam', 'dog1.jpg', 'Landstraßer Hauptstraße 89, 1030 Vienna', 'Introducing \"Sunbeam,\" the radiant Golden Retriever with a unique twist – a stunning coat of exceptionally light, almost ethereal fur that glimmers like a golden halo in the sunlight. Sunbeams appearance is truly extraordinary, setting her apart with a rare and enchanting charm.\r\n\r\nHer soft, cream-colored fur seems to capture the essence of sunlight, lending an angelic glow to her already warm and friendly demeanor. With her soulful, expressive eyes and a perpetually wagging tail, Sunbeam exudes a sense of pure joy and affection, effortlessly drawing people near.\r\n\r\nSunbeams gentle nature and intelligence shine through as she forms deep and lasting bonds with her human companions. Her unwavering loyalty and desire to please make her an excellent companion for families and individuals alike.\r\n\r\nWhether she is playing fetch in the park, taking a leisurely stroll by your side, or simply basking in your company, Sunbeams presence will brighten your day and fill your heart with love. Prepare to be captivated by the enchanting beauty and loving spirit of Sunbeam, a Golden Retriever whose light fur matches the radiant love she brings into your life.', '60', '10 ', 'Yes', 'Dog', 0, 3, '200'),
(5, 'Cocoa', 'dog2.jpg', 'Floridsdorfer Hauptstraße 42, 1210 Vienna', 'Meet \"Cocoa,\" the delightful small mix dog with a coat of velvety golden brown fur that is as sweet as its namesake. Cocoas endearing appearance is a charming blend of various breeds, resulting in a one-of-a-kind companion that captures hearts with ease.\r\n\r\nWith a compact size and an adorable face framed by perky ears, Cocoa exudes an irresistible charm that makes it a favorite among dog lovers. Its soft, golden brown fur is adorned with subtle variations of hues, resembling swirls of rich chocolate and warm caramel.\r\n\r\nCocoas soulful eyes sparkle with intelligence and kindness, reflecting its gentle and affectionate nature. Despite its small stature, this furry friend is bursting with energy and enthusiasm, always ready for a playful romp or a cozy snuggle.\r\n\r\nKnown for its friendly and sociable temperament, Cocoa easily wins the hearts of everyone it meets. Its wagging tail and wagging heart make it a natural companion for families and individuals alike, spreading joy and warmth wherever it goes.\r\n\r\nWith Cocoa by your side, every day is bound to be filled with love, laughter, and delightful adventures. Get ready to be enchanted by the delightful spirit of Cocoa, a small mix dog whose golden brown fur is just a glimpse of the sweetness it brings into your life.', '35', '9 ', 'Yes', 'Dog', 0, 4, '200'),
(6, 'Max', 'dog3.jpg', 'Alser Straße 33, 1080 Vienna', 'Meet \"Max,\" the vibrant and spirited young German Shepherd, whose boundless energy and intelligence are matched only by his striking appearance. With his sleek and muscular body, Max is the epitome of athleticism and agility.\r\n\r\nHis luxurious, black and tan coat glistens under the sun, and his dark eyes radiate a keen intelligence that hints at his remarkable problem-solving skills. Even as a young pup, Max already displays the poise and confidence of a true protector.\r\n\r\nEager to learn and please, Max excels in training and eagerly takes on any challenge you put before him. Whether it is learning new tricks or engaging in stimulating games, he thrives on mental and physical stimulation.\r\n\r\nMaxs loyalty knows no bounds, and he forms a deep bond with his human family. His protective instincts make him an excellent watchdog, always alert and ready to defend those he cares for.\r\n\r\nBut beneath his strong and capable exterior, Max is a gentle and affectionate companion. His playful antics and warm-hearted nature will bring laughter and joy to your home.\r\n\r\nAs Max grows and matures, he will become not just a loyal friend but also a loving and steadfast member of your family. Prepare to be amazed by the incredible potential of this young German Shepherd, whose presence will undoubtedly enrich your life with love, loyalty, and endless adventure.', '30', '0.33', 'No', 'Dog', 0, 4, '200'),
(7, 'Buddy', 'dog4.jpg', 'Favoritenstraße 71, 1100 Vienna', 'Meet \"Buddy,\" the wise and seasoned 11-year-old German Shepherd whose years of experience have only enhanced his majestic presence. With his regal posture and graying muzzle, Buddy exudes an air of dignity and wisdom that commands respect.\r\n\r\nHis once vibrant black and tan coat now showcases streaks of silver, a testament to the passage of time. Despite the signs of age, Buddys eyes still gleam with a spark of intelligence and a lifetime of memories.\r\n\r\nHaving spent years by your side, Buddys loyalty knows no bounds. He has become your devoted and trusted companion, sharing in both joyful moments and challenging times. His calming presence brings a sense of comfort and reassurance to your life.\r\n\r\nBuddys boundless love for you remains unwavering, and he cherishes every moment spent together, whether it is going for a leisurely walk or simply enjoying each others company at home.\r\n\r\nAs an elder statesman of the canine world, Buddy embodies the very essence of a devoted and noble companion. His affectionate nature and the deep bond you share make him an irreplaceable member of your family.\r\n\r\nEmbrace the wisdom and love that Buddy brings into your life, for he is a living testament to the enduring beauty of the human-animal bond and a cherished friend who will forever hold a special place in your heart.', '65', '11 ', 'Yes', 'Dog', 1, 4, '200'),
(8, 'Sunny', 'gecko.jpg', 'Donaustadtstraße 18, 1220 Vienna', 'Meet \"Sunny,\" the captivating orange and white Leopard Gecko with a unique and vibrant appearance. As a member of the reptile family, Sunnys striking colors and distinctive patterns mimic those of its wild cousins, making it a true marvel of nature.\r\n\r\nWith its sun-kissed orange scales intermingled with pristine white spots and stripes, Sunny resembles a living work of art. Its mesmerizing appearance is further accentuated by its large, expressive eyes that seem to reflect the warmth of the sun.\r\n\r\nSunnys petite size and delicate movements add to its charm, making it a delightful pet for reptile enthusiasts and first-time keepers alike. With proper care, this gentle and low-maintenance gecko can become a fascinating and interactive companion.\r\n\r\nAs a nocturnal creature, Sunny comes alive in the evening, exploring its habitat and showcasing its unique behaviors. From its adorable toe-walking to its ability to shed its tail as a defense mechanism, Sunnys life is full of fascinating quirks that make it an intriguing pet to observe and care for.\r\n\r\nWith patience and gentle handling, Sunny can become accustomed to human presence, creating a bond that transcends the divide between species. As you watch this little gecko bask under its heat lamp, you will be captivated by the beauty and wonder of Sunny, the orange and white Leopard Gecko that brings a touch of the wild into the comfort of your home.', '19', '3 ', 'No', 'Leopard Gecko', 1, 3, '200'),
(9, 'Hazel', 'spider.jpg', 'Ottakringer Straße 66, 1160 Vienna', 'Lets meet \"Hazel,\" the adorable brown jumping spider with big, expressive eyes that will instantly steal your heart. This little arachnid may be tiny, but its cuteness knows no bounds.\r\n\r\nHazels soft, furry body is adorned with charming shades of brown, resembling a miniature teddy bear with legs. Its endearing appearance will make you want to watch and interact with it for hours on end.\r\n\r\nWith its remarkable jumping ability, Hazel gracefully leaps from one spot to another, exploring its surroundings with curiosity and agility. Its movements are as delightful as they are impressive, and you will find yourself captivated by Hazels acrobatic antics.\r\n\r\nDo not let its size fool you; Hazel has a playful and adventurous spirit. As it scurries around, you will be amused by its inquisitive nature and how it fearlessly explores the world around it.\r\n\r\nAlthough Hazel may be a spider, it poses no threat to humans and is entirely harmless. Instead, it serves as a gentle reminder of the fascinating and diverse world of nature, right at your fingertips.\r\n\r\nPrepare to be charmed by Hazel, the cute brown jumping spider that brings wonder and joy to your life in the most unexpected and delightful ways.', '0.8', '0.5', 'No', 'Jumping Spider', 1, 3, '200'),
(10, 'Oreo', 'bunny.jpg', 'Währinger Gürtel 30, 1090 Vienna', 'Meet \"Oreo,\" the adorable little bunny with a heartwarming black and white coat that resembles the sweetness of its namesake cookie. Oreos charming appearance captures the essence of cuddliness and cuteness.\r\n\r\nWith its plush, snow-white fur adorned with striking black markings, Oreo is a living work of art. Its expressive, bright eyes sparkle with curiosity and innocence, inviting you to share in its delightful adventures.\r\n\r\nAs Oreo hops and frolics around, its tiny ears perk up, making it even more endearing. This little ball of fur brings joy to anyone lucky enough to be in its presence.\r\n\r\nOreos gentle and affectionate nature makes it a perfect companion for those seeking a furry friend to share their days with. Whether it is snuggling up for cozy cuddles or playfully hopping around, Oreos presence will undoubtedly brighten your life with love and laughter.\r\n\r\nPrepare to be enchanted by the irresistible charm of Oreo, the little bunny with black and white fur that captures hearts with its adorableness and brings a touch of sweetness to your world.', '10', '0.5', 'No', 'Bunny', 0, 3, '300'),
(19, 'sweety', '6646f6a3eab70.jpeg', 'Khursanitar, baluwatar', 'a great companion dog', '20', '2', 'Yes', 'Dog', 1, 3, '300'),
(20, 'Maxxyy', '6646f78fcbb6e.jpeg', 'Khursanitar, baluwatar', 'a great cat', '15', '3', 'Yes', 'Cat', 1, 3, '300'),
(21, 'Rocky', '6646fbf15017a.webp', 'Kathmandu', 'A great cat for your home and great companion.', '20', '2', 'Yes', 'Cat', 0, 3, '2000');

-- --------------------------------------------------------

--
-- Table structure for table `pet_adoptions`
--

CREATE TABLE `pet_adoptions` (
  `id` int(11) NOT NULL,
  `adopt_date` date DEFAULT NULL,
  `user_id_fk` int(11) NOT NULL,
  `animal_id_fk` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `living_condition` varchar(2000) NOT NULL,
  `previous_experience` varchar(2000) NOT NULL,
  `adoption_reason` varchar(200) NOT NULL,
  `shelter_id` int(11) NOT NULL,
  `seen` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_of_week`
--

CREATE TABLE `pet_of_week` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_of_week`
--

INSERT INTO `pet_of_week` (`id`, `animal_id`, `description`) VALUES
(1, 1, 'Meet \"Marble,\" our Pet of the Week! This enchanting brown and white tiger cat with a coat that resembles swirling patterns of marble is sure to captivate your heart. With her striking amber eyes that hold a hint of mystery, Marble exudes grace and charm. '),
(2, 2, 'Meet \"Mocha,\" our delightful gray and white tiger cat Pet of the Week! Mocha\'s luxurious coat is a delightful blend of soft gray tones and pristine white patches, reminiscent of delicate brushstrokes on a canvas. ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(80) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `address`, `phone`, `email`, `picture`, `status`) VALUES
(1, 'ashish', 'choudhari    ', 'a75ed6a6678c5ff5621f76fd2eecbd53', 'near A K Restaurant & Bar with Homestay, Khursanitar Marga, Kathmandu 44600, Nep', 2147483647, 'ashish57@gmail.com', '66445158df9c1.jpg', 'adm'),
(2, 'wdwadaw', 'wdawd ', 'a75ed6a6678c5ff5621f76fd2eecbd53', 'dawdwdw334w', 65455, 'beispiel@gmail.com', 'avatar.png', 'user'),
(3, 'Aaryan', 'Shrestha', 'ff866af1f550cb106cbab0e9bce29d0b', 'Basundhara', 4413004, 'aaryan@gmail.com', '664450425c244.jpg', 'shelter'),
(4, 'Nishant', 'Yadav', 'ff866af1f550cb106cbab0e9bce29d0b', 'Kathmandu', 4413557, 'Nishant@mail.com', 'avatar.png', 'agency'),
(6, 'ashish', 'choudhari', '62a41f80513b0d4baac412b45bbb65bd0c7e1083c2fb51a6dcab8f2d7f0b1cf1', 'near A K Restaurant &amp; Bar with Homestay, Khursanitar Marga, Kathmandu 44600,', 2147483647, 'ashish20012057@gmail.com', '664386fc41782.jpg', 'user'),
(7, 'Keyush', 'Shrestha', '5ca49ae34364eaccc4fc5ff6551d7bcd85f6cd0ee03b7a1ac0ee544ad222ee06', 'near A K Restaurant &amp; Bar with Homestay, Khursanitar Marga, Kathmandu 44600,', 987654321, 'keyush@gmail.com', '66438e52606cb.jpeg', 'user'),
(8, 'suiiii', 'saass', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'near A K Restaurant &amp; Bar with Homestay, Khursanitar Marga, Kathmandu 44600,', 2147483647, 'ashh57@gmail.com', '6643969f95311.jpg', 'user'),
(9, 'Keyushhhhhh', 'Shrestha', '5ca49ae34364eaccc4fc5ff6551d7bcd85f6cd0ee03b7a1ac0ee544ad222ee06', 'khursanitar', 4478004, 'kush124@gmail.com', 'avatar.png', 'adm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agency_id_fk` (`agency_id_fk`);

--
-- Indexes for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `animal_id_fk` (`animal_id_fk`);

--
-- Indexes for table `pet_of_week`
--
ALTER TABLE `pet_of_week`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pet_of_week`
--
ALTER TABLE `pet_of_week`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_1` FOREIGN KEY (`agency_id_fk`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pet_adoptions`
--
ALTER TABLE `pet_adoptions`
  ADD CONSTRAINT `pet_adoptions_ibfk_1` FOREIGN KEY (`user_id_fk`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pet_adoptions_ibfk_2` FOREIGN KEY (`animal_id_fk`) REFERENCES `animals` (`id`);

--
-- Constraints for table `pet_of_week`
--
ALTER TABLE `pet_of_week`
  ADD CONSTRAINT `pet_of_week_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
