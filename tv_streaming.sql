-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 05:02 PM
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
-- Database: `tv_streaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `title` varchar(255) NOT NULL,
  `duration` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `id_Advertisement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`title`, `duration`, `description`, `id_Advertisement`) VALUES
('Roombo', 5, 'unc.edu', 0),
('Innotype', 4, 'thetimes.co.uk', 1),
('Blogpad', 1, 'latimes.com', 2),
('Thoughtblab', 4, 'google.nl', 3),
('Aibox', 3, 'mtv.com', 4),
('Quatz', 2, 'edublogs.org', 5),
('Brainverse', 4, 'simplemachines.org', 6),
('Dazzlesphere', 2, 'skyrock.com', 7),
('Meejo', 1, 'cocolog-nifty.com', 8),
('Linklinks', 3, 'ifeng.com', 9),
('Centidel', 5, 'parallels.com', 10),
('Tambee', 5, 'smh.com.au', 11),
('Realpoint', 4, 'craigslist.org', 12),
('Linklinks', 3, 'sina.com.cn', 13),
('Skivee', 1, 'aboutads.info', 14),
('Avavee', 1, 'ask.com', 15),
('Zoomcast', 2, 'nih.gov', 16),
('Agivu', 3, 'histats.com', 17),
('Photofeed', 5, 'tinyurl.com', 18),
('Eazzy', 4, 'shareasale.com', 19),
('Feedmix', 5, 'ucoz.com', 20);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_name` varchar(255) NOT NULL,
  `id_Brand` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_name`, `id_Brand`) VALUES
('Zephyr', 1),
('Galaxy', 2),
('Starlight', 3),
('Horizon', 4),
('Celestial', 5),
('Aurora', 6),
('Mystique', 7),
('Starlight', 8),
('Aurora', 9),
('Radiance', 10),
('Sunrise', 11),
('Thunderbolt', 12),
('Aurora', 13),
('Infinity', 14),
('Acme', 15),
('Zephyr', 16),
('Sunrise', 17),
('Whirlwind', 18),
('Luminous', 19),
('Whirlwind', 20);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `device_name` varchar(255) DEFAULT NULL,
  `id_Device` int(11) NOT NULL,
  `fk_Brandid_Brand` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`device_name`, `id_Device`, `fk_Brandid_Brand`, `fk_Userid_User`) VALUES
('Phone', 1, 1, 1),
('Laptop', 2, 2, 2),
('Tablet', 3, 3, 3),
('Computer', 4, 4, 4),
('Watch', 5, 5, 5),
('TV', 6, 6, 6),
('Phone', 7, 7, 7),
('Computer', 8, 8, 8),
('Laptop', 9, 9, 9),
('TV', 10, 10, 10),
('Phone', 11, 11, 11),
('TV', 12, 12, 12),
('Phone', 13, 13, 13),
('Laptop', 14, 14, 14),
('Phone', 15, 15, 15),
('TV', 16, 16, 16),
('Laptop', 17, 17, 17),
('TV', 18, 18, 18),
('Laptop', 19, 19, 19),
('TV', 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `episode_number` int(11) NOT NULL,
  `duration` double NOT NULL,
  `id_Episode` int(11) NOT NULL,
  `fk_Languageid_Language` int(11) NOT NULL,
  `fk_Seasonid_Season` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`title`, `description`, `episode_number`, `duration`, `id_Episode`, `fk_Languageid_Language`, `fk_Seasonid_Season`) VALUES
('\"Pilot\"', 'High school chemistry teacher Walter White (played by Bryan Cranston) is diagnosed with terminal cancer. To secure his familys financial future, he teams up with former student Jesse Pinkman (played by Aaron Paul) to produce and sell methamphetamine. This', 1, 58, 1, 1, 1),
('\"Battle of the Bastards\"', '\"Battle of the Bastards\"', 2, 60, 2, 2, 2),
('\"The One Where Monica Gets a Roommate\"', 'In the pilot episode, Rachel Green (played by Jennifer Aniston) arrives at Central Perk, a coffee shop in New York City, after leaving her fiancé at the altar. She reunites with her childhood friend Monica Geller (played by Courteney Cox), and the rest of', 3, 22, 3, 3, 3),
('\"Chapter One: The Vanishing of Will Byers\"', ' Set in the 1980s, the show follows a group of young friends in the town of Hawkins, Indiana. When Will Byers (played by Noah Schnapp) mysteriously disappears, his friends embark on a quest to find him. They encounter a strange girl with telekinetic power', 4, 48, 4, 4, 4),
('\"Gay Witch Hunt\"', 'After a merger with the Stamford branch, tensions rise at the Dunder Mifflin paper company. In this episode, Michael Scott (played by Steve Carell) accidentally outs Oscar Martinez (played by Oscar Nunez) as gay, leading to a series of awkward and humorou', 5, 21, 5, 5, 5),
('\"Wolferton Splash\"', 'The series chronicles the reign of Queen Elizabeth II (played by Claire Foy). In the first episode, the young Queen ascends to the throne following the death of her father, King George VI. She faces the challenges of her new role while navigating the comp', 6, 57, 6, 6, 6),
('\"Marge vs. the Monorail\"', 'When Springfield receives a large sum of money from a lawsuit, the town decides to build a monorail system. Marge Simpson (voiced by Julie Kavner) becomes skeptical of the project and suspects it may lead to disaster. The episode features humor, satire, a', 7, 22, 7, 7, 7),
('\"Days Gone Bye\"', 'Sheriffs deputy Rick Grimes (played by Andrew Lincoln) wakes up from a coma to find himself in a post-apocalyptic world overrun by zombies, known as walkers. He sets out to find his family and encounters other survivors along the way. This episode establi', 8, 67, 8, 8, 8),
('\"Nosedive\"', ' In a society where people can rate each other based on their interactions, Lacie Pound (played by Bryce Dallas Howard) obsesses over her social media ratings. In an attempt to increase her score, she agrees to be the maid of honor for a childhood friend ', 9, 63, 9, 9, 9),
('\"Pilot\"', 'The series revolves around a group of socially awkward but highly intelligent friends, primarily focusing on physicists Leonard Hofstadter (played by Johnny Galecki) and Sheldon Cooper (played by Jim Parsons). In the pilot episode, their lives take a turn', 10, 22, 10, 10, 10),
('\"A Study in Pink\"', ' This modern adaptation of Arthur Conan Doyles detective stories follows Sherlock Holmes (played by Benedict Cumberbatch) and his loyal friend Dr. John Watson (played by Martin Freeman) as they solve complex and intriguing cases. In the first episode, the', 11, 88, 11, 11, 11),
('\"Chapter 1: The Mandalorian\"', 'Set in the Star Wars universe, the series follows a lone bounty hunter known as the Mandalorian (played by Pedro Pascal) in the outer reaches of the galaxy. In the first episode, he embarks on a dangerous mission to capture a valuable target, which leads ', 12, 39, 12, 12, 12),
('\"Descenso\"', 'Based on real events, the series explores the rise and fall of notorious drug lord Pablo Escobar (played by Wagner Moura) and the efforts of law enforcement to bring him down. In the first episode, DEA agent Steve Murphy (played by Boyd Holbrook) arrives ', 13, 57, 13, 13, 13),
('\"Efectuar lo acordado\"', 'A criminal mastermind known as \"The Professor\" recruits eight criminals with unique skills to carry out an ambitious plan: to rob the Royal Mint of Spain while using hostages as leverage. In the first episode, the heist begins, and the robbers face numero', 14, 48, 14, 14, 14),
('\"The Original\"', 'The series takes place in a futuristic theme park where human-like robots, known as hosts, cater to the desires of the parks wealthy guests. In the first episode, the hosts begin to exhibit unusual behavior, signaling a potential malfunction in the parks ', 15, 70, 15, 15, 15),
('\"1:23:45\"', 'Based on the 1986 Chernobyl disaster, the series depicts the catastrophic nuclear accident and its aftermath. In the first episode, the explosion at the Chernobyl Nuclear Power Plant occurs, leading to a race against time to contain the disaster and mitig', 16, 65, 16, 16, 16),
('\"The Ens Beginning\"', 'Set in a fantasy world, the series follows Geralt of Rivia (played by Henry Cavill), a monster hunter known as a Witcher. In the first episode, Geralts path crosses with a powerful sorceress and a princess with a dangerous secret, leading to a journey fil', 17, 62, 17, 17, 17),
('\"Episode 1\"', 'Set in post-World War I Birmingham, England, the series revolves around the Shelby crime family, led by Tommy Shelby (played by Cillian Murphy). In the first episode, the Shelby familys illegal activities, connections, and ambitions attract the attention ', 18, 57, 18, 18, 18),
('\"Sugarwood\"', 'Financial planner Marty Byrde (played by Jason Bateman) is forced to relocate his family to the Ozarks after a money-laundering scheme goes wrong. In the first episode, Marty navigates the dangerous world of drug cartels, money laundering, and local crimi', 19, 58, 19, 19, 19),
('\"Offred\"', 'Based on Margaret Atwoods dystopian novel, the series is set in a totalitarian society where fertile women are forced into sexual servitude for the ruling class. In the first episode, Offred (played by Elisabeth Moss) narrates her life as a Handmaid, high', 20, 47, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_name` varchar(255) NOT NULL,
  `descriprion` varchar(255) NOT NULL,
  `id_Genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_name`, `descriprion`, `id_Genre`) VALUES
('Crime, Drama, Thrillar', '\"Breaking Bad\" is a gripping crime drama that follows the transformation of a high school chemistry teacher, Walter White, into a ruthless methamphetamine manufacturer, exploring the consequences of his actions and the moral dilemmas he faces.', 1),
('Fantasy, Drama, Adventure', '\"Game of Thrones\" is an epic fantasy series set in the fictional continents of Westeros and Essos, filled with political intrigue, power struggles, and battles for the Iron Throne. The show weaves together multiple storylines and explores themes of loyalt', 2),
('Sitcom, Comedy', '\"Friends\" is a beloved sitcom that revolves around the lives of six friends living in New York City. It showcases their personal and professional experiences, hilarious misadventures, and enduring friendships.', 3),
('Drama, Horror, Science Fiction', '\"Stranger Things\" is a thrilling series set in the 1980s, blending elements of horror, science fiction, and supernatural mystery. It follows a group of friends as they encounter strange occurrences, government conspiracies, and a parallel dimension known.', 4),
('Mockumentary, Sitcom, Comedy', '\"The Office\" is a mockumentary-style sitcom that depicts the everyday lives of office employees working at the Scranton, Pennsylvania branch of Dunder Mifflin. The show humorously highlights the dynamics between coworkers, office politics, and the awkward', 5),
('Historical Drama', '\"The Crown\" is a historical drama series that chronicles the reign of Queen Elizabeth II, exploring the personal and political challenges she faces as the monarch. It offers a meticulous portrayal of British royalty, delving into the complex relationships', 6),
('Animated, Comedy', '\"The Simpsons\" is an iconic animated sitcom that follows the lives of the Simpson family in the fictional town of Springfield. Known for its humor, satire, and social commentary, the show explores various aspects of American culture, family dynamics.', 7),
('Drama, Horror, Thriller', '\"The Walking Dead\" is a post-apocalyptic horror series that depicts a world overrun by zombies. It focuses on a group of survivors who navigate the dangers of the undead and the challenges of rebuilding society while exploring themes of survival, morality', 8),
('Science Fiction, Anthology, Drama', '\"Black Mirror\" is an anthology series that offers thought-provoking and often dystopian tales exploring the dark side of technology and its impact on society. Each self-contained episode presents a unique story, delving into themes of privacy, social medi', 9),
('Sitcom, Comedy', '\"The Big Bang Theory\" is a sitcom that centers around a group of brilliant but socially awkward scientists and their interactions with their neighbor, Penny. The show combines geek culture, clever humor, and heartwarming relationships.', 10),
('Crime, Drama, Mystery', '\"Sherlock\" is a modern-day adaptation of the iconic detective stories by Sir Arthur Conan Doyle. The series follows the brilliant detective Sherlock Holmes and his loyal partner, Dr. John Watson, as they solve complex crimes and mysteries.', 11),
('Science Fiction, Action, Adventure', '\"The Mandalorian\" is a space western series set in the \"Star Wars\" universe. It follows the adventures of a bounty hunter, known as the Mandalorian, as he navigates the outer reaches of the galaxy, encountering diverse characters.', 12),
('Crime, Drama, Thriller', '\"Narcos\" is a crime drama series that explores the rise and fall of notorious drug cartels, primarily focusing on the drug trade in Colombia. The show delves into the world of drug lords, law enforcement, and the complexities of the international narcotic', 13),
('Heist, Crime, Thriller', '\"Money Heist\" is a Spanish heist crime drama series that follows a group of criminals, known by code names based on cities, as they plan and execute intricateheists on the Royal Mint of Spain and the Bank of Spain. ', 14),
('Science Fiction, Drama, Mystery', '\"Westworld\" is a science fiction series set in a futuristic theme park populated by lifelike androids known as \"hosts.\" The show explores the moral and philosophical implications of artificial intelligence, blurring the lines between humans and machines.', 15),
('Historical Drama, Thriller', '\"Chernobyl\" is a historical drama miniseries that depicts the events surrounding the 1986 Chernobyl nuclear disaster in the Soviet Union. The show offers a gripping and harrowing portrayal of the catastrophe, its aftermath, and the human cost.', 16),
('Fantasy, Action, Adventure', '\"The Witcher\" is a fantasy series based on the book series by Andrzej Sapkowski. It follows Geralt of Rivia, a monster hunter with supernatural abilities, as he navigates a morally gray world filled with mythical creatures, political turmoil, and destiny.', 17),
('Crime, Drama', '\"Peaky Blinders\" is a British crime drama series set in post-World War I Birmingham, England. The show revolves around the Shelby crime family and their rise to power, exploring themes of gangsterism, family loyalty, and the consequences of their actions.', 18),
('Crime, Drama, Thriller', '\"Ozark\" is a crime drama series that follows the life of financial planner Marty Byrde, who is forced to relocate his family to the Ozarks after a money-laundering scheme goes wrong. The show delves into the dark underbelly of organized crime.', 19),
('Dystopian, Drama', '\"The Handmaids Tale\" is a dystopian drama series based on Margaret Atwoods novel. Set in a totalitarian society known as Gilead, the show follows the journey of Offred, a handmaid forced into reproductive servitude. It explores themes of oppression, femin', 20);

-- --------------------------------------------------------

--
-- Table structure for table `involved_in`
--

CREATE TABLE `involved_in` (
  `fk_Peopleid_People` int(11) NOT NULL,
  `fk_TV_Showid_TV_Show` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `involved_in`
--

INSERT INTO `involved_in` (`fk_Peopleid_People`, `fk_TV_Showid_TV_Show`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_name` varchar(255) NOT NULL,
  `id_Language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_name`, `id_Language`) VALUES
('Spanish', 1),
('Hebrew', 2),
('Mongolian', 3),
('Malagasy', 4),
('Croatian', 5),
('Malagasy', 6),
('Hindi', 7),
('Amharic', 8),
('Bengali', 9),
('Albanian', 10),
('Dari', 11),
('Japanese', 12),
('Bulgarian', 13),
('Spanish', 14),
('Hebrew', 15),
('Bosnian', 16),
('Afrikaans', 17),
('Armenian', 18),
('Māori', 19),
('Bengali', 20);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `id_People` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`name`, `surname`, `date_of_birth`, `biography`, `id_People`) VALUES
('Vince', 'Gilligan', '1967-06-23', 'He began his career as a writer on shows like \"The X-Files\" before creating \"Breaking Bad.\" Gilligans direction in \"Breaking Bad\" showcased his ability to balance moments of dark humor with intense drama, creating a compelling and addictive viewing experi', 1),
('Alan', 'Taylor', '1971-06-20', 'Alan Taylor is an American film and television director known for his work on various acclaimed series and films. Taylor began his career in the entertainment industry directing television shows such as \"Homicide: Life on the Street\" and \"The Sopranos.\" H', 2),
('Kevin', 'Bright', '1960-03-02', 'Kevin S. Bright is an American television director and producer who played a significant role in the success of \"Friends.\"Bright began his career in the entertainment industry as a production assistant and gradually worked his way up the ranks. As a direc', 3),
('Mat and Ross', 'Duffer', '1967-08-01', 'They gained widespread recognition as the creators, writers, and directors of \"Stranger Things.\" The Duffer Brothers drew inspiration from their love of 1980s pop culture, blending elements of science fiction, horror, and adventure to create a nostalgic a', 4),
('Greg', 'Deniels', '1969-01-14', 'Greg Daniels is an American television writer, producer, and director who adapted \"The Office\" from its original British version for the U.S. audience. He also served as the showrunner and executive producer for several seasons. Daniels played a significa', 5),
('Stephen', 'Daldry', '1977-04-15', 'Stephen Daldry is a British film and theater director known for his work in both mediums. He directed the first two seasons of \"The Crown,\" which premiered in 2016 and 2017, respectively. Daldrys direction helped establish the acclaimed visual style, tone', 6),
('David', 'Silverman', '1957-03-15', 'David Silverman is an American animator and director who has worked extensively on \"The Simpsons\" since its early seasons. He has directed numerous episodes of the show, including the series first full length feature film, \"The Simpsons Movie\" (2007). Sil', 7),
('Greg', 'Nicotero', '1963-03-15', 'Greg Nicotero is an American special effects makeup artist, producer, and director. He has directed numerous episodes of \"The Walking Dead\" and has also served as an executive producer on the show. Nicoteros expertise in special effects makeup has played ', 8),
('Charlie', 'Brooker', '1971-03-03', ' Charlie Brooker is an English television presenter, author, and screenwriter who created \"Black Mirror\" and served as its showrunner. Brookers creation, \"Black Mirror,\" debuted in 2011 and quickly gained a devoted following and critical acclaim. The seri', 9),
('Mark', 'Cendrowski', '1959-08-23', 'Mark Cendrowski is an American television director known for his extensive work on \"The Big Bang Theory.\" Cendrowskis journey in the entertainment industry began as a production assistant, and he gradually rose through the ranks, gaining experience in dif', 10),
('Paul', 'McGuigan', '1963-09-19', 'Paul McGuigan is a British film and television director known for his distinctive visual style and his ability to bring compelling stories to life. McGuigans talent and unique visual storytelling caught the attention of the industry, leading him to transi', 11),
('Jon', 'Favreau', '1966-10-19', ' Jon Favreau is an American filmmaker, actor, and producer known for his work in both film and television. He served as the creator, head writer, and executive producer of \"The Mandalorian,\" and also directed several episodes of the series. Favreaus invol', 12),
('Jose', 'Padilha', '1967-08-01', 'José Padilha is a Brazilian film director and producer known for his work in both film and television. He directed the first two seasons of \"Narcos,\" which premiered in 2015 and 2016, respectively. Padilhas direction helped establish the gritty and intens', 13),
('Alex', 'Pina', '1967-06-23', 'Álex Pina is a Spanish television producer, screenwriter, and creator who gained worldwide recognition for his work on the hit Spanish television series \"Money Heist\" (also known as \"La Casa de Papel\" in Spanish). Born on June 23, 1967, in Pamplona, Spain', 14),
('Jonathan', 'Nolan', '1976-06-06', 'Jonathan Nolan is an American screenwriter, director, and producer. He co-created \"Westworld\" along with Lisa Joy and has directed several episodes of the series. Nolans involvement in the show extends beyond directing, as he also serves as an executive p', 15),
('Johan', 'Renck', '0000-00-00', 'He began his career in the music industry as a musician and music video director, working with renowned artists such as Madonna, Beyoncé, and David Bowie. Rencks background in music videos allowed him to develop a distinctive visual style that would later', 16),
('Alik', 'Sakharov', '1959-03-17', 'Alik Sakharov is a Russian-American cinematographer and director. He directed several episodes of the first season of \"The Witcher,\" contributing to the visual style and storytelling of the series. Sakharov has an extensive background in television produc', 17),
('Otto', 'Bathrst', '1971-06-20', 'Otto Bathurst is a British film and television director known for his work on various projects. He directed the first three episodes of \"Peaky Blinders,\" which premiered in 2013 and helped establish the distinct visual style and tone of the show. Bathurst', 18),
('Jason', 'Bateman', '1969-01-14', 'Jason Bateman is an American actor, director, and producer who has also directed several episodes of \"Ozark.\" Bateman not only serves as the lead actor in the series, portraying the character of Marty Byrde, but he has also directed multiple episodes, inc', 19),
('Reed', 'Morano', '1977-04-15', 'Reed Morano is an American cinematographer, director, and producer. She directed the first three episodes of \"The Handmaids Tale,\" which premiered in 2017, and set the visual tone and atmosphere of the series. Moranos direction played a significant role i', 20);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `rating` int(11) NOT NULL,
  `id_Rating` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL,
  `fk_TV_Showid_TV_Show` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`rating`, `id_Rating`, `fk_Userid_User`, `fk_TV_Showid_TV_Show`) VALUES
(10, 1, 1, 1),
(7, 2, 2, 2),
(6, 3, 3, 3),
(6, 4, 4, 4),
(6, 5, 5, 5),
(8, 6, 6, 6),
(8, 7, 7, 7),
(7, 8, 8, 8),
(10, 9, 9, 9),
(9, 10, 10, 10),
(7, 11, 11, 11),
(9, 12, 12, 12),
(10, 13, 13, 13),
(7, 14, 14, 14),
(9, 15, 15, 15),
(10, 16, 16, 16),
(5, 17, 17, 17),
(10, 18, 18, 18),
(7, 19, 19, 19),
(7, 20, 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `id_Season` int(11) NOT NULL,
  `fk_TV_Showid_TV_Show` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`title`, `description`, `release_date`, `id_Season`, `fk_TV_Showid_TV_Show`) VALUES
('Season 5A', 'In Season 5A, the stakes are raised as Walter White fully embraces his alter ego, Heisenberg, and expands his methamphetamine empire. The season explores the consequences of Walters actions and the escalating conflicts with rival drug dealers and law enfo', '2012-07-15', 1, 1),
('Season 6', 'Season 6 of \"Game of Thrones\" picks up the story after the shocking events of the previous season. It continues to follow the intricate web of political and military conflicts across the Seven Kingdoms of Westeros. This season features several major plot ', '2016-04-24', 2, 2),
('Season 5', 'Season 5 of \"Friends\" continues following the lives of the six central characters—Monica, Chandler, Ross, Rachel, Joey, and Phoebe—as they navigate relationships, careers, and the ups and downs of adulthood. This season features several pivotal storylines', '1998-09-24', 3, 3),
('Season 3', 'Season 3 of \"Stranger Things\" takes place in the summer of 1985, bringing a nostalgic and thrilling adventure to the residents of Hawkins, Indiana. The season introduces new challenges for the characters as they face a new supernatural threat from the Ups', '2019-07-04', 4, 4),
('Season 2', 'Season 2 of \"The Office\" builds upon the foundation established in the first season, further exploring the lives and dynamics of the employees at Dunder Mifflin Paper Company. This season introduces new storylines, character developments, and memorable ep', '2005-09-20', 5, 5),
('Season 4', 'Season 4 of \"The Crown\" covers the period from 1977 to 1990, delving into significant events during Queen Elizabeth IIs reign. This season introduces the characters of Lady Diana Spencer (later Princess Diana) and Prime Minister Margaret Thatcher, explori', '2020-11-15', 6, 6),
('Season 4', 'Season 4 of \"The Simpsons\" continues to follow the lives of the Simpson family—Homer, Marge, Bart, Lisa, and Maggie—in the fictional town of Springfield. This season features a range of memorable episodes, including \"Mr. Plow,\" \"Marge vs. the Monorail,\" \"', '1992-09-24', 7, 7),
('Season 5', 'Season 5 of \"The Walking Dead\" picks up the story after the intense events of Season 4, where the group of survivors led by Rick Grimes finds themselves in a dire situation. They face new threats, encounter hostile communities, and struggle to maintain th', '2014-10-12', 8, 8),
('Season 3', ' Season 3 of \"Black Mirror\" consists of six standalone episodes, each exploring different themes and presenting unique dystopian scenarios. This season showcases the shows signature blend of social commentary, psychological suspense, and technological spe', '2016-10-21', 9, 9),
('Season 4', 'Season 4 of \"The Big Bang Theory\" continues to follow the lives of the main characters, including Sheldon, Leonard, Penny, Howard, Raj, and their friends and family. This season explores their romantic relationships, career advancements, and their usual g', '2011-09-23', 10, 10),
('Season 2', 'Season 2 of \"Sherlock\" consists of three feature-length episodes, each offering a thrilling and complex mystery for Sherlock Holmes (played by Benedict Cumberbatch) and his loyal friend Dr. John Watson (played by Martin Freeman) to solve. The season delve', '2012-01-01', 11, 11),
('Season 1', 'Season 1 of \"The Mandalorian\" introduces viewers to the titular character, a lone bounty hunter who operates in the outer reaches of the galaxy. The season follows the Mandalorians journeys as he takes on various missions and encounters different characte', '2019-11-12', 12, 12),
('Season 1', 'Season 1 of \"Narcos\" focuses on the rise of the infamous Colombian drug lord Pablo Escobar and his Medellín Cartel. The season follows the efforts of the Drug Enforcement Administration (DEA), led by Steve Murphy and Javier Peña, in their mission to take ', '2015-08-28', 13, 13),
('Season 1', 'Season 1 introduces the central premise of the series, where a mysterious figure known as \"The Professor\" recruits eight criminals with unique skills to carry out a meticulously planned heist on the Royal Mint of Spain. The robbers, codenamed after cities', '2017-03-02', 14, 14),
('Season 1', 'Season 1 introduces viewers to the immersive theme park called Westworld, where human guests can interact with android hosts in a meticulously designed Wild West setting. The season follows multiple storylines, intricately woven together, that explore the', '2016-10-02', 15, 15),
('Season 1', 'Season 1 of \"Chernobyl\" consists of five episodes and provides a harrowing and intense depiction of the nuclear disaster. The series focuses on the core characters involved, including Valery Legasov, a Soviet nuclear physicist, and Boris Shcherbina, a Sov', '2019-06-03', 16, 16),
('Season 1', 'Season 1 of \"The Witcher\" introduces viewers to Geralt of Rivia, portrayed by Henry Cavill, as he navigates the vast and dangerous Continent. The season adapts several short stories from the books, interweaving Geralts adventures with those of Yennefer of', '2019-12-20', 17, 17),
('Season 1', 'Season 1 introduces viewers to the Shelby family, led by the charismatic and ambitious Tommy Shelby, portrayed by Cillian Murphy. Set in 1919, the season follows the Shelby gang as they expand their criminal empire and clash with rival factions. The seaso', '2013-09-12', 18, 18),
('Season 2', 'Season 2 continues the story of the Byrde family as they face new challenges and expand their criminal enterprise. Marty and Wendy become more deeply involved with local criminals, including the Snell family, as they try to establish a riverboat casino op', '2018-08-31', 19, 19),
('Season 3', 'Season 3 explores the ongoing resistance efforts against Gilead and the consequences faced by Offred and others involved. The season delves into the inner workings of Gileads power structure and expands the world beyond the boundaries of the Handmaids. It', '2019-06-05', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `fk_TV_Showid_TV_Show` int(11) NOT NULL,
  `fk_Advertisementid_Advertisement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`fk_TV_Showid_TV_Show`, `fk_Advertisementid_Advertisement`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `fk_Genreid_Genre` int(11) NOT NULL,
  `fk_TV_Showid_TV_Show` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`fk_Genreid_Genre`, `fk_TV_Showid_TV_Show`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

CREATE TABLE `tv_shows` (
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `id_TV_Show` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`title`, `description`, `release_date`, `id_TV_Show`, `fk_Userid_User`) VALUES
('\"Breaking Bad\"', 'A high school chemistry teacher turned methamphetamine manufacturer partners with a former student to create and sell a high-quality blue meth while navigating the dangerous criminal underworld.', '2008-01-20', 1, 1),
('\"Game of Thrones\"', 'Set in the fictional continents of Westeros and Essos, the show follows the power struggles among noble families as they vie for control of the Iron Throne, while an ancient evil threatens the entire world.', '2011-04-17', 2, 2),
('\"Friends\"', 'Follows the lives of six friends in their 20s and 30s who navigate personal and professional ups and downs, often gathering at Central Perk café in New York City.', '1994-09-22', 3, 3),
('\"Stranger Things\"', 'Set in the 1980s, the show follows a group of young friends as they encounter supernatural forces, government conspiracies, and a parallel dimension known as the Upside Down.', '2016-07-15', 4, 4),
('\"The Office\"', 'A mockumentary-style sitcom that depicts the everyday lives of office employees working at the Scranton, Pennsylvania branch of the Dunder Mifflin Paper Company.', '2005-03-24', 5, 5),
('\"The Crown\"', 'A historical drama that chronicles the reign of Queen Elizabeth II from her early days on the throne to the challenges and triumphs she faces as the leader of the British monarchy.', '2016-11-04', 6, 6),
('\"The Simpsons\"', 'A long-running animated sitcom that follows the dysfunctional Simpson family and their hilarious adventures in the fictional town of Springfield.', '1989-12-17', 7, 7),
('\"The Walking Dead\"', 'Based on the comic book series, the show depicts a group of survivors in a post-apocalyptic world overrun by zombies, as they struggle to stay alive and find a safe haven.', '2010-10-31', 8, 8),
('\"Black Mirror\"', 'An anthology series that explores the dark side of technology and its impact on society, often presenting cautionary tales about the potential dangers of advanced technology.', '2011-12-04', 9, 9),
('\"The Big Bang Theory\"', 'A sitcom that revolves around a group of socially awkward scientists and their interactions with each other, as well as with their non-scientist neighbour.', '2007-09-24', 10, 10),
('\"Sherlock\"', 'A modern-day adaptation of Arthur Conan Doyles detective stories, featuring Sherlock Holmes and his loyal friend, Dr. John Watson, solving complex crimes in contemporary London.', '2010-07-25', 11, 11),
('\"The Mandalorian\"', 'Set in the \"Star Wars\" universe, the show follows the adventures of a lone bounty hunter in the galaxy far, far away, as he protects a mysterious and adorable creature known as \"The Child\" (Baby Yoda).', '2019-11-12', 12, 12),
('\"Narcos\"', 'Based on true events, the show follows the rise and fall of infamous drug cartels in different regions of the world, with a particular focus on the rise of the Medellín Cartel in Colombia.', '2015-08-28', 13, 13),
('\"Money Heist\"', 'A Spanish heist crime drama series that revolves around a group of robbers who plan and execute heists on the Royal Mint of Spain and the Bank of Spain while using codenames based on cities.', '2017-05-02', 14, 14),
('\"Westworld\"', 'Set in a futuristic theme park populated by artificial beings, the show explores the blurring boundaries between humans and robots, with themes of consciousness, morality, and existentialism.', '2016-10-02', 15, 15),
('\"Chernobyl\"', 'A historical drama miniseries that dramatizes the 1986 Chernobyl nuclear disaster and its aftermath, depicting the efforts to contain the radioactive fallout and the political cover-up.', '2019-05-06', 16, 16),
('\"The Witcher\"', 'Based on the book series of the same name, the show follows Geralt of Rivia, a monster hunter with supernatural abilities, as he navigates a dangerous world filled with magic, monsters, and political intrigue.', '2019-12-20', 17, 17),
('\"Peaky Blinders\"', 'Set in post-World War I Birmingham, England, the show follows the Shelby crime family as they rise to power and navigate the world of organized crime.', '2013-09-12', 18, 18),
('\"Ozark\"', 'A financial planner is forced to relocate his family to the Ozarks after a money-laundering scheme goes wrong, and he becomes entangled with local criminals while trying to keep his family safe.', '2017-07-21', 19, 19),
('\"The Handmaids Tale\"', 'Based on Margaret Atwoods dystopian novel, the show is set in a totalitarian society where fertile women, known as handmaids, are forced into sexual servitude to bear children for the ruling class.', '2017-04-26', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `id_User`) VALUES
('sseager0', 83, 'ecallaghan0@bloglines.com', 1),
('tlegen1', 25, 'rplumptre1@pen.io', 2),
('achallicum2', 7059, 'kbondesen2@so-net.ne.jp', 3),
('jrillatt3', 41, 'kbretland3@theatlantic.com', 4),
('fkunzelmann4', 47, 'pbamborough4@wunderground.com', 5),
('sbooley5', 52, 'ksevior5@harvard.edu', 6),
('scelloni6', 6145, 'tmazin6@si.edu', 7),
('nphilipsohn7', 55, 'kwalcar7@icio.us', 8),
('akensington8', 26322, 'ddiess8@ted.com', 9),
('kunwin9', 295, 'mkarpinski9@ucla.edu', 10),
('ewratea', 702, 'tbereforda@shinystat.com', 11),
('dambroseb', 4, 'smartlandb@flickr.com', 12),
('rbendixenc', 5069, 'fcotec@blogger.com', 13),
('emattecotd', 186, 'bingred@marriott.com', 14),
('erunacrese', 3252, 'bkinnache@behance.net', 15),
('eschopsf', 93574, 'cspadottof@eventbrite.com', 16),
('grobardeyg', 43, 'escarseg@photobucket.com', 17),
('tdawidowskyh', 6458, 'vmauditth@elpais.com', 18),
('wivanilovi', 8, 'egemnetti@shareasale.com', 19),
('wtownsj', 7449, 'cwolferj@irs.gov', 20);

-- --------------------------------------------------------

--
-- Table structure for table `watch_histories`
--

CREATE TABLE `watch_histories` (
  `id_Watch_History` int(11) NOT NULL,
  `fk_TV_Showid_TV_Show` int(11) NOT NULL,
  `fk_Userid_User` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watch_histories`
--

INSERT INTO `watch_histories` (`id_Watch_History`, `fk_TV_Showid_TV_Show`, `fk_Userid_User`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id_Advertisement`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_Brand`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id_Device`),
  ADD KEY `from1` (`fk_Brandid_Brand`),
  ADD KEY `watches_from` (`fk_Userid_User`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id_Episode`),
  ADD KEY `goes` (`fk_Languageid_Language`),
  ADD KEY `has1` (`fk_Seasonid_Season`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id_Genre`);

--
-- Indexes for table `involved_in`
--
ALTER TABLE `involved_in`
  ADD PRIMARY KEY (`fk_Peopleid_People`,`fk_TV_Showid_TV_Show`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_Language`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id_People`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id_Rating`),
  ADD KEY `rates` (`fk_Userid_User`),
  ADD KEY `rated` (`fk_TV_Showid_TV_Show`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id_Season`),
  ADD KEY `fk_TV_Showid_TV_Show` (`fk_TV_Showid_TV_Show`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`fk_TV_Showid_TV_Show`,`fk_Advertisementid_Advertisement`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`fk_Genreid_Genre`,`fk_TV_Showid_TV_Show`);

--
-- Indexes for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD PRIMARY KEY (`id_TV_Show`),
  ADD KEY `watches` (`fk_Userid_User`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_User`);

--
-- Indexes for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD PRIMARY KEY (`id_Watch_History`),
  ADD UNIQUE KEY `fk_TV_Showid_TV_Show` (`fk_TV_Showid_TV_Show`),
  ADD UNIQUE KEY `fk_Userid_User` (`fk_Userid_User`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `from1` FOREIGN KEY (`fk_Brandid_Brand`) REFERENCES `brands` (`id_Brand`),
  ADD CONSTRAINT `watches_from` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `goes` FOREIGN KEY (`fk_Languageid_Language`) REFERENCES `languages` (`id_Language`),
  ADD CONSTRAINT `has1` FOREIGN KEY (`fk_Seasonid_Season`) REFERENCES `seasons` (`id_Season`);

--
-- Constraints for table `involved_in`
--
ALTER TABLE `involved_in`
  ADD CONSTRAINT `involved_in` FOREIGN KEY (`fk_Peopleid_People`) REFERENCES `people` (`id_People`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `rated` FOREIGN KEY (`fk_TV_Showid_TV_Show`) REFERENCES `tv_shows` (`id_TV_Show`),
  ADD CONSTRAINT `rates` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);

--
-- Constraints for table `seasons`
--
ALTER TABLE `seasons`
  ADD CONSTRAINT `seasons_ibfk_1` FOREIGN KEY (`fk_TV_Showid_TV_Show`) REFERENCES `tv_shows` (`id_TV_Show`);

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows` FOREIGN KEY (`fk_TV_Showid_TV_Show`) REFERENCES `tv_shows` (`id_TV_Show`);

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic` FOREIGN KEY (`fk_Genreid_Genre`) REFERENCES `genres` (`id_Genre`);

--
-- Constraints for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD CONSTRAINT `watches` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`);

--
-- Constraints for table `watch_histories`
--
ALTER TABLE `watch_histories`
  ADD CONSTRAINT `has2` FOREIGN KEY (`fk_Userid_User`) REFERENCES `users` (`id_User`),
  ADD CONSTRAINT `history_of` FOREIGN KEY (`fk_TV_Showid_TV_Show`) REFERENCES `tv_shows` (`id_TV_Show`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
