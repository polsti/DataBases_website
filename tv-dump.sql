PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "episodes" (
  "title" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL,
  "episode_number" int(11) NOT NULL,
  "duration" double NOT NULL,
  "id_Episode" INTEGER PRIMARY KEY,
  "fk_Languageid_Language" int(11) NOT NULL,
  "fk_Seasonid_Season" int(11) NOT NULL,
  CONSTRAINT "goes" FOREIGN KEY ("fk_Languageid_Language") REFERENCES "languages" ("id_Language"),
  CONSTRAINT "has1" FOREIGN KEY ("fk_Seasonid_Season") REFERENCES "seasons" ("id_Season")
);
INSERT INTO episodes VALUES('"Pilot"','High school chemistry teacher Walter White (played by Bryan Cranston) is diagnosed with terminal cancer. To secure his familys financial future, he teams up with former student Jesse Pinkman (played by Aaron Paul) to produce and sell methamphetamine. This',1,58.0,1,1,1);
INSERT INTO episodes VALUES('"Battle of the Bastards"','"Battle of the Bastards"',2,60.0,2,2,2);
INSERT INTO episodes VALUES('"The One Where Monica Gets a Roommate"','In the pilot episode, Rachel Green (played by Jennifer Aniston) arrives at Central Perk, a coffee shop in New York City, after leaving her fiancé at the altar. She reunites with her childhood friend Monica Geller (played by Courteney Cox), and the rest of',3,22.0,3,3,3);
INSERT INTO episodes VALUES('"Chapter One: The Vanishing of Will Byers"',' Set in the 1980s, the show follows a group of young friends in the town of Hawkins, Indiana. When Will Byers (played by Noah Schnapp) mysteriously disappears, his friends embark on a quest to find him. They encounter a strange girl with telekinetic power',4,48.0,4,4,4);
INSERT INTO episodes VALUES('"Gay Witch Hunt"','After a merger with the Stamford branch, tensions rise at the Dunder Mifflin paper company. In this episode, Michael Scott (played by Steve Carell) accidentally outs Oscar Martinez (played by Oscar Nunez) as gay, leading to a series of awkward and humorou',5,21.0,5,5,5);
INSERT INTO episodes VALUES('"Wolferton Splash"','The series chronicles the reign of Queen Elizabeth II (played by Claire Foy). In the first episode, the young Queen ascends to the throne following the death of her father, King George VI. She faces the challenges of her new role while navigating the comp',6,57.0,6,6,6);
INSERT INTO episodes VALUES('"Marge vs. the Monorail"','When Springfield receives a large sum of money from a lawsuit, the town decides to build a monorail system. Marge Simpson (voiced by Julie Kavner) becomes skeptical of the project and suspects it may lead to disaster. The episode features humor, satire, a',7,22.0,7,7,7);
INSERT INTO episodes VALUES('"Days Gone Bye"','Sheriffs deputy Rick Grimes (played by Andrew Lincoln) wakes up from a coma to find himself in a post-apocalyptic world overrun by zombies, known as walkers. He sets out to find his family and encounters other survivors along the way. This episode establi',8,67.0,8,8,8);
INSERT INTO episodes VALUES('"Nosedive"',' In a society where people can rate each other based on their interactions, Lacie Pound (played by Bryce Dallas Howard) obsesses over her social media ratings. In an attempt to increase her score, she agrees to be the maid of honor for a childhood friend ',9,63.0,9,9,9);
INSERT INTO episodes VALUES('"Pilot"','The series revolves around a group of socially awkward but highly intelligent friends, primarily focusing on physicists Leonard Hofstadter (played by Johnny Galecki) and Sheldon Cooper (played by Jim Parsons). In the pilot episode, their lives take a turn',10,22.0,10,10,10);
INSERT INTO episodes VALUES('"A Study in Pink"',' This modern adaptation of Arthur Conan Doyles detective stories follows Sherlock Holmes (played by Benedict Cumberbatch) and his loyal friend Dr. John Watson (played by Martin Freeman) as they solve complex and intriguing cases. In the first episode, the',11,88.0,11,11,11);
INSERT INTO episodes VALUES('"Chapter 1: The Mandalorian"','Set in the Star Wars universe, the series follows a lone bounty hunter known as the Mandalorian (played by Pedro Pascal) in the outer reaches of the galaxy. In the first episode, he embarks on a dangerous mission to capture a valuable target, which leads ',12,39.0,12,12,12);
INSERT INTO episodes VALUES('"Descenso"','Based on real events, the series explores the rise and fall of notorious drug lord Pablo Escobar (played by Wagner Moura) and the efforts of law enforcement to bring him down. In the first episode, DEA agent Steve Murphy (played by Boyd Holbrook) arrives ',13,57.0,13,13,13);
INSERT INTO episodes VALUES('"Efectuar lo acordado"','A criminal mastermind known as "The Professor" recruits eight criminals with unique skills to carry out an ambitious plan: to rob the Royal Mint of Spain while using hostages as leverage. In the first episode, the heist begins, and the robbers face numero',14,48.0,14,14,14);
INSERT INTO episodes VALUES('"The Original"','The series takes place in a futuristic theme park where human-like robots, known as hosts, cater to the desires of the parks wealthy guests. In the first episode, the hosts begin to exhibit unusual behavior, signaling a potential malfunction in the parks ',15,70.0,15,15,15);
INSERT INTO episodes VALUES('"1:23:45"','Based on the 1986 Chernobyl disaster, the series depicts the catastrophic nuclear accident and its aftermath. In the first episode, the explosion at the Chernobyl Nuclear Power Plant occurs, leading to a race against time to contain the disaster and mitig',16,65.0,16,16,16);
INSERT INTO episodes VALUES('"The Ens Beginning"','Set in a fantasy world, the series follows Geralt of Rivia (played by Henry Cavill), a monster hunter known as a Witcher. In the first episode, Geralts path crosses with a powerful sorceress and a princess with a dangerous secret, leading to a journey fil',17,62.0,17,17,17);
INSERT INTO episodes VALUES('"Episode 1"','Set in post-World War I Birmingham, England, the series revolves around the Shelby crime family, led by Tommy Shelby (played by Cillian Murphy). In the first episode, the Shelby familys illegal activities, connections, and ambitions attract the attention ',18,57.0,18,18,18);
INSERT INTO episodes VALUES('"Sugarwood"','Financial planner Marty Byrde (played by Jason Bateman) is forced to relocate his family to the Ozarks after a money-laundering scheme goes wrong. In the first episode, Marty navigates the dangerous world of drug cartels, money laundering, and local crimi',19,58.0,19,19,19);
INSERT INTO episodes VALUES('"Offred"','Based on Margaret Atwoods dystopian novel, the series is set in a totalitarian society where fertile women are forced into sexual servitude for the ruling class. In the first episode, Offred (played by Elisabeth Moss) narrates her life as a Handmaid, high',20,47.0,20,20,20);
CREATE TABLE IF NOT EXISTS "languages" (
  "language_name" varchar(255) NOT NULL,
  "id_Language" INTEGER PRIMARY KEY
);
INSERT INTO languages VALUES('Spanish',1);
INSERT INTO languages VALUES('Hebrew',2);
INSERT INTO languages VALUES('Mongolian',3);
INSERT INTO languages VALUES('Malagasy',4);
INSERT INTO languages VALUES('Croatian',5);
INSERT INTO languages VALUES('Malagasy',6);
INSERT INTO languages VALUES('Hindi',7);
INSERT INTO languages VALUES('Amharic',8);
INSERT INTO languages VALUES('Bengali',9);
INSERT INTO languages VALUES('Albanian',10);
INSERT INTO languages VALUES('Dari',11);
INSERT INTO languages VALUES('Japanese',12);
INSERT INTO languages VALUES('Bulgarian',13);
INSERT INTO languages VALUES('Spanish',14);
INSERT INTO languages VALUES('Hebrew',15);
INSERT INTO languages VALUES('Bosnian',16);
INSERT INTO languages VALUES('Afrikaans',17);
INSERT INTO languages VALUES('Armenian',18);
INSERT INTO languages VALUES('Māori',19);
INSERT INTO languages VALUES('Bengali',20);
CREATE TABLE IF NOT EXISTS "seasons" (
  "title" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL,
  "release_date" date NOT NULL,
  "id_Season" INTEGER PRIMARY KEY,
  "fk_TV_Showid_TV_Show" int(11) NOT NULL,
  CONSTRAINT "seasons_ibfk_1" FOREIGN KEY ("fk_TV_Showid_TV_Show") REFERENCES "tv_shows" ("id_TV_Show")
);
INSERT INTO seasons VALUES('Season 5A','In Season 5A, the stakes are raised as Walter White fully embraces his alter ego, Heisenberg, and expands his methamphetamine empire. The season explores the consequences of Walters actions and the escalating conflicts with rival drug dealers and law enfo','2012-07-15',1,1);
INSERT INTO seasons VALUES('Season 6','Season 6 of "Game of Thrones" picks up the story after the shocking events of the previous season. It continues to follow the intricate web of political and military conflicts across the Seven Kingdoms of Westeros. This season features several major plot ','2016-04-24',2,2);
INSERT INTO seasons VALUES('Season 5','Season 5 of "Friends" continues following the lives of the six central characters—Monica, Chandler, Ross, Rachel, Joey, and Phoebe—as they navigate relationships, careers, and the ups and downs of adulthood. This season features several pivotal storylines','1998-09-24',3,3);
INSERT INTO seasons VALUES('Season 3','Season 3 of "Stranger Things" takes place in the summer of 1985, bringing a nostalgic and thrilling adventure to the residents of Hawkins, Indiana. The season introduces new challenges for the characters as they face a new supernatural threat from the Ups','2019-07-04',4,4);
INSERT INTO seasons VALUES('Season 2','Season 2 of "The Office" builds upon the foundation established in the first season, further exploring the lives and dynamics of the employees at Dunder Mifflin Paper Company. This season introduces new storylines, character developments, and memorable ep','2005-09-20',5,5);
INSERT INTO seasons VALUES('Season 4','Season 4 of "The Crown" covers the period from 1977 to 1990, delving into significant events during Queen Elizabeth IIs reign. This season introduces the characters of Lady Diana Spencer (later Princess Diana) and Prime Minister Margaret Thatcher, explori','2020-11-15',6,6);
INSERT INTO seasons VALUES('Season 4','Season 4 of "The Simpsons" continues to follow the lives of the Simpson family—Homer, Marge, Bart, Lisa, and Maggie—in the fictional town of Springfield. This season features a range of memorable episodes, including "Mr. Plow," "Marge vs. the Monorail," "','1992-09-24',7,7);
INSERT INTO seasons VALUES('Season 5','Season 5 of "The Walking Dead" picks up the story after the intense events of Season 4, where the group of survivors led by Rick Grimes finds themselves in a dire situation. They face new threats, encounter hostile communities, and struggle to maintain th','2014-10-12',8,8);
INSERT INTO seasons VALUES('Season 3',' Season 3 of "Black Mirror" consists of six standalone episodes, each exploring different themes and presenting unique dystopian scenarios. This season showcases the shows signature blend of social commentary, psychological suspense, and technological spe','2016-10-21',9,9);
INSERT INTO seasons VALUES('Season 4','Season 4 of "The Big Bang Theory" continues to follow the lives of the main characters, including Sheldon, Leonard, Penny, Howard, Raj, and their friends and family. This season explores their romantic relationships, career advancements, and their usual g','2011-09-23',10,10);
INSERT INTO seasons VALUES('Season 2','Season 2 of "Sherlock" consists of three feature-length episodes, each offering a thrilling and complex mystery for Sherlock Holmes (played by Benedict Cumberbatch) and his loyal friend Dr. John Watson (played by Martin Freeman) to solve. The season delve','2012-01-01',11,11);
INSERT INTO seasons VALUES('Season 1','Season 1 of "The Mandalorian" introduces viewers to the titular character, a lone bounty hunter who operates in the outer reaches of the galaxy. The season follows the Mandalorians journeys as he takes on various missions and encounters different characte','2019-11-12',12,12);
INSERT INTO seasons VALUES('Season 1','Season 1 of "Narcos" focuses on the rise of the infamous Colombian drug lord Pablo Escobar and his Medellín Cartel. The season follows the efforts of the Drug Enforcement Administration (DEA), led by Steve Murphy and Javier Peña, in their mission to take ','2015-08-28',13,13);
INSERT INTO seasons VALUES('Season 1','Season 1 introduces the central premise of the series, where a mysterious figure known as "The Professor" recruits eight criminals with unique skills to carry out a meticulously planned heist on the Royal Mint of Spain. The robbers, codenamed after cities','2017-03-02',14,14);
INSERT INTO seasons VALUES('Season 1','Season 1 introduces viewers to the immersive theme park called Westworld, where human guests can interact with android hosts in a meticulously designed Wild West setting. The season follows multiple storylines, intricately woven together, that explore the','2016-10-02',15,15);
INSERT INTO seasons VALUES('Season 1','Season 1 of "Chernobyl" consists of five episodes and provides a harrowing and intense depiction of the nuclear disaster. The series focuses on the core characters involved, including Valery Legasov, a Soviet nuclear physicist, and Boris Shcherbina, a Sov','2019-06-03',16,16);
INSERT INTO seasons VALUES('Season 1','Season 1 of "The Witcher" introduces viewers to Geralt of Rivia, portrayed by Henry Cavill, as he navigates the vast and dangerous Continent. The season adapts several short stories from the books, interweaving Geralts adventures with those of Yennefer of','2019-12-20',17,17);
INSERT INTO seasons VALUES('Season 1','Season 1 introduces viewers to the Shelby family, led by the charismatic and ambitious Tommy Shelby, portrayed by Cillian Murphy. Set in 1919, the season follows the Shelby gang as they expand their criminal empire and clash with rival factions. The seaso','2013-09-12',18,18);
INSERT INTO seasons VALUES('Season 2','Season 2 continues the story of the Byrde family as they face new challenges and expand their criminal enterprise. Marty and Wendy become more deeply involved with local criminals, including the Snell family, as they try to establish a riverboat casino op','2018-08-31',19,19);
INSERT INTO seasons VALUES('Season 3','Season 3 explores the ongoing resistance efforts against Gilead and the consequences faced by Offred and others involved. The season delves into the inner workings of Gileads power structure and expands the world beyond the boundaries of the Handmaids. It','2019-06-05',20,20);
CREATE TABLE IF NOT EXISTS "tv_shows" (
  "title" varchar(255) NOT NULL,
  "description" varchar(255) NOT NULL,
  "release_date" date NOT NULL,
  "id_TV_Show" INTEGER PRIMARY KEY
);
INSERT INTO tv_shows VALUES('"Breaking Bad"','A high school chemistry teacher turned methamphetamine manufacturer partners with a former student to create and sell a high-quality blue meth while navigating the dangerous criminal underworld.','2008-01-20',1);
INSERT INTO tv_shows VALUES('"Game of Thrones"','Set in the fictional continents of Westeros and Essos, the show follows the power struggles among noble families as they vie for control of the Iron Throne, while an ancient evil threatens the entire world.','2011-04-17',2);
INSERT INTO tv_shows VALUES('"Friends"','Follows the lives of six friends in their 20s and 30s who navigate personal and professional ups and downs, often gathering at Central Perk café in New York City.','1994-09-22',3);
INSERT INTO tv_shows VALUES('"Stranger Things"','Set in the 1980s, the show follows a group of young friends as they encounter supernatural forces, government conspiracies, and a parallel dimension known as the Upside Down.','2016-07-15',4);
INSERT INTO tv_shows VALUES('"The Office"','A mockumentary-style sitcom that depicts the everyday lives of office employees working at the Scranton, Pennsylvania branch of the Dunder Mifflin Paper Company.','2005-03-24',5);
INSERT INTO tv_shows VALUES('"The Crown"','A historical drama that chronicles the reign of Queen Elizabeth II from her early days on the throne to the challenges and triumphs she faces as the leader of the British monarchy.','2016-11-04',6);
INSERT INTO tv_shows VALUES('"The Simpsons"','A long-running animated sitcom that follows the dysfunctional Simpson family and their hilarious adventures in the fictional town of Springfield.','1989-12-17',7);
INSERT INTO tv_shows VALUES('"The Walking Dead"','Based on the comic book series, the show depicts a group of survivors in a post-apocalyptic world overrun by zombies, as they struggle to stay alive and find a safe haven.','2010-10-31',8);
INSERT INTO tv_shows VALUES('"Black Mirror"','An anthology series that explores the dark side of technology and its impact on society, often presenting cautionary tales about the potential dangers of advanced technology.','2011-12-04',9);
INSERT INTO tv_shows VALUES('"The Big Bang Theory"','A sitcom that revolves around a group of socially awkward scientists and their interactions with each other, as well as with their non-scientist neighbour.','2007-09-24',10);
INSERT INTO tv_shows VALUES('"Sherlock"','A modern-day adaptation of Arthur Conan Doyles detective stories, featuring Sherlock Holmes and his loyal friend, Dr. John Watson, solving complex crimes in contemporary London.','2010-07-25',11);
INSERT INTO tv_shows VALUES('"The Mandalorian"','Set in the "Star Wars" universe, the show follows the adventures of a lone bounty hunter in the galaxy far, far away, as he protects a mysterious and adorable creature known as "The Child" (Baby Yoda).','2019-11-12',12);
INSERT INTO tv_shows VALUES('"Narcos"','Based on true events, the show follows the rise and fall of infamous drug cartels in different regions of the world, with a particular focus on the rise of the Medellín Cartel in Colombia.','2015-08-28',13);
INSERT INTO tv_shows VALUES('"Money Heist"','A Spanish heist crime drama series that revolves around a group of robbers who plan and execute heists on the Royal Mint of Spain and the Bank of Spain while using codenames based on cities.','2017-05-02',14);
INSERT INTO tv_shows VALUES('"Westworld"','Set in a futuristic theme park populated by artificial beings, the show explores the blurring boundaries between humans and robots, with themes of consciousness, morality, and existentialism.','2016-10-02',15);
INSERT INTO tv_shows VALUES('"Chernobyl"','A historical drama miniseries that dramatizes the 1986 Chernobyl nuclear disaster and its aftermath, depicting the efforts to contain the radioactive fallout and the political cover-up.','2019-05-06',16);
INSERT INTO tv_shows VALUES('"The Witcher"','Based on the book series of the same name, the show follows Geralt of Rivia, a monster hunter with supernatural abilities, as he navigates a dangerous world filled with magic, monsters, and political intrigue.','2019-12-20',17);
INSERT INTO tv_shows VALUES('"Peaky Blinders"','Set in post-World War I Birmingham, England, the show follows the Shelby crime family as they rise to power and navigate the world of organized crime.','2013-09-12',18);
INSERT INTO tv_shows VALUES('"Ozark"','A financial planner is forced to relocate his family to the Ozarks after a money-laundering scheme goes wrong, and he becomes entangled with local criminals while trying to keep his family safe.','2017-07-21',19);
INSERT INTO tv_shows VALUES('"The Handmaids Tale"','Based on Margaret Atwoods dystopian novel, the show is set in a totalitarian society where fertile women, known as handmaids, are forced into sexual servitude to bear children for the ruling class.','2017-04-26',20);
COMMIT;

