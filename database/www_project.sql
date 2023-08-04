-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 06:37 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `categoryid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `categoryid`) VALUES
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market leading platforms Apple iOS and Googles Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou will develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you are new to iOS, you will also find an easy, practical introduction to Objective C, native language of Apple.', '1000.00', 6, 1),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '1200.00', 2, 4),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants. Programmable Logic Controllers A Practical Approach using CoDeSys is a hands on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 611313 standard. Using the freely available software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real world examples. The design tool, CoDeSys, also features a built in simulator or soft PLC enabling the reader to undertake exercises and test the examples.', '1100.00', 2, 1),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve full potential of JavaScript, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you will have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '1000.00', 1, 1),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client server communication, and use a cloud based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '900.00', 3, 1),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language whether it is turning the most feared features into useful tools, or how JavaScript can be used for self expression.', '980.00', 3, 1),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '1000.00', 1, 1),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '1000.00', 4, 1),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', '	Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well organized format that can be used as a handy reference.\r\n\r\nYou will not find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must have for any C++ programmer.\r\n\r\nIn the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '1000.00', 4, 1),
('978-1-49192-706-9', 'C# 6.0 in a Nutshell, 6th Edition', 'Joseph Albahari, Ben Albahari', 'c_sharp_6.jpg', 'When you have questions about C sharp 6.0 or the .NET CLR and its core Framework assemblies, this bestselling guide has the answers you need. C sharp has become a language of unusual flexibility and breadth since its premiere in 2000, but this continual growth means there is still much more to learn.\r\n\r\nOrganized around concepts and use cases, this thoroughly updated sixth edition provides intermediate and advanced programmers with a concise map of C# and .NET knowledge. Dive in and discover why this Nutshell guide is considered the definitive reference on C sharp.', '900.00', 3, 1),
('9780061053542', 'The Sandman Book of Dreams', 'Neil Gaiman', 'sandman.jpg', 'An entrancing collection of stories based on the World Fantasy Award winning Sandman comic book series by Neil Gaiman the basis for the highly anticipated Netflix series and hailed by the Los Angeles Times Magazine as the greatest epic in the history of comic books, including contributions from Tori Amos, Clive Barker, Susanna Clarke, Tad Williams, and Gene Wolfe,  among other celebrated names in fantasy and horror.', '2400.00', 0, 0),
('9780143135968', 'Regenesis: Feeding the World Without Devouring the Planet', 'George Monbiot', 'plant.jpg', 'Farming is the world greatest cause of environmental destruction and the one we are least prepared to talk about. We criticize urban sprawl, but farming sprawls across thirty times as much land. We have ploughed, fenced and grazed great tracts of the planet, felling forests, killing wildlife, and poisoning rivers and oceans to feed ourselves. Yet millions still go hungry.', '2500.00', 0, 2),
('9780143137252', 'The Symmetry of Fish, Penguin Poets', 'Su Cho', 'fish.jpg', 'Language and lore are at the core of The Symmetry of Fish, a moving debut about coming of age in the middle of nowhere. With striking and tender insight, it seeks to give voice to those who have been denied their stories, and examines the way phrases and narratives are passed down through immigrant families not diluted over time, but distilled into potency over generations. In this way, the language of a family is not lost but continuously remade, hitched to new associations, and capable of blooming anew, with the power to cut across space and time to unearth buried memories.', '1500.00', 0, 3),
('9780241597002', 'The Adventure of the Blue Carbuncle, Little Clothbound Class', 'Arthur Conan Doyle', 'car.jpg', 'Emerging from their smoke filled rooms at 21B Baker Street, Holmes and Watson grapple with the forces of crime that stalk the streets of London. From the first story titled A Scandal in Bohemia where Holmes is foiled by the quick thinking of the woman, Irene Adler, to what was presumed to be the last, The Final Problem where Holmes at last comes face to face with the diabolical Professor Moriarty.', '1900.00', 0, 3),
('9780262544306', 'What Not', 'Rose Macaulay', 'what.jpg', 'In a near future England, a new government entity the Ministry of Brains attempts to stave off idiocracy through a program of compulsory selective breeding. Kitty Grammont, who shares author Rose Macaulays own ambivalent attitude, gets involved in the Ministrys propaganda efforts, which the novel details with an entertaining thoroughness.', '1900.00', 0, 0),
('9780306828881', 'Acne: A Memoir', 'Laura Chinn', 'acne.jpg', 'This is not a sad story. There is Jell O wrestling. There is an abnormal amount of dancing. There is information about whether you can drink gallons of sangria while taking unregulated Accutane acquired in Mexico. But mostly there is love, and ultimately there is redemption. Laura explores her trauma through anecdotes riddled with grit and humor, proving that in the face of unspeakable tragedy, it is possible to find success, love, and self acceptance, zits and all.', '2100.00', 0, 4),
('9780316270182', 'A Carnival of Snackery, Diaries, 2003-2020', 'David Sedaris', 'carnival.jpg', 'If it is navel gazing you are after, you have come to the wrong place ditto treacly self-examination. Rather, his observations turn outward a fight between two men on a bus, a fight between two men on the street, pedestrians being whacked over the head or gathering to watch as a man considers leaping to his death. There is a dirty joke shared at a book signing, then a dirtier one told at a dinner party lots of jokes here. Plenty of laughs.', '2500.00', 0, 4),
('9780316273992', 'The Age of AI  And Our Human Future', 'Henry A Kissinger, Eric Schmidt', 'ai.jpg', 'An AI learned to win chess by making moves human grand masters had never conceived. Another AI discovered a new antibiotic by analyzing molecular properties human scientists did not understand. Now, AI powered jets are defeating experienced human pilots in simulated dogfights. AI is coming online in searching, streaming, medicine, education, and many other fields and, in so doing, transforming how humans are experiencing reality.', '1999.00', 0, 2),
('9780316438964', 'The Last Wish Introducing The Witcher', 'Andrzej Sapkowski', 'witcher.jpg', 'Geralt is a Witcher, a man whose magic powers, enhanced by long training and a mysterious elixir, have made him a brilliant fighter and a merciless assassin. Yet he is no ordinary killer. His sole purpose to destroy the monsters that plague the world. But not everything monstrous looking is evil and not everything fair is good...and in every fairy tale there is a grain of truth.', '2000.00', 0, 0),
('9780358682950', 'This Is Not A Pity Memoir', 'Abi Morgan', 'memo.jpg', 'When the partner of Emmy Award winning screenwriter Abi Morgan abruptly collapsed from a mysterious illness, doctors were concerned that he would not survive. Then, six months later, Jacob woke from his coma, to the delight and relief of his family and friends except this proved to be anything but a Hollywood ending. Because to Jacob, the woman standing at his bedside, who had cared for him all these months, was not his partner.', '2200.00', 0, 4),
('9780374606480', 'Winter Recipes from the Collective Poems', 'Louise Glück', 'poem.jpg', 'Louise Gluck thirteenth book is among her most haunting. Here as in the Wild Iris there is a chorus, but the speakers are entirely human, simultaneously spectral and ancient. Winter Recipes from the Collective is chamber music, an invitation into that privileged realm small enough for the individual instrument to make itself heard, dolente, its line sustained, carried, and then taken up by the next instrument, spirited, animoso, while at the same time being large enough to contain a whole lifetime, the inconceivable gifts and losses of old age, the little princesses rattling in the back of a car, an abandoned passport, the ingredients of an invigorating winter sandwich, a death of a sister, the joyful presence of the sun, its brightness measured by the darkness it casts.', '2100.00', 0, 3),
('9780385549431', 'When Women Were Dragons', 'Kelly Barnhill', 'dragon.jpg', 'Alex Green is a young girl in a world much like ours, except for its most seminal event the Mass Dragoning of 1955, when hundreds of thousands of ordinary wives and mothers sprouted wings, scales, and talons left a trail of fiery destruction in their path and took to the skies. Was it their choice, What will become of those left behind, Why did beloved aunt of Alex named Marla transform but her mother did not, Alex does not know. It is taboo to speak of.', '2000.00', 0, 0),
('9780440001614', 'Soul Taken A Mercy Thompson Novel, Book 13', 'Patricia Briggs', 'soul.jpg', 'The vampire Wulfe is missing. Since he is deadly, possibly insane, and his current idea of fun is stalking me, some may see it as no great loss. But, warned that his disappearance might bring down the carefully constructed alliances that keep our pack safe, my mate and I must find Wulfe and hope he is still alive. As alive as a vampire can be, anyway.', '1000.00', 0, 0),
('9780553419481', '1000 Years of Joys and Sorrows  A Memoir', 'Ai Weiwei', '91d3da8-igl_1_.jpg', 'Ai Weiwei recounts his childhood in exile, and his difficult decision to leave his family to study art in America, where he befriended Allen Ginsberg and was inspired by Andy Warhol and the artworks of Marcel Duchamp. With candor and wit, he details his return to China and his rise from artistic unknown to art world superstar and international human rights activist—and how his work has been shaped by living under a totalitarian regime.', '1200.00', 0, 4),
('9780593083376', 'Orwell\'s Roses', 'Rebecca Solnit', 'rose.jpg', 'In the spring of 1936, a writer planted roses. A new book by Rebecca Solnit,, a reflection on George Orwell passionate gardening and the way that his involvement with plants, particularly flowers, illuminates his other commitments as a writer and antifascist, and on the intertwined politics of nature and power. Sparked by her unexpected encounter with the roses he reportedly planted in 1936,the account of Solnit to this overlooked aspect on the life of orwell journeys through his writing and his actions from going deep into the coal mines of England, fighting in the Spanish Civil War, critiquing Stalin when much of the international left still supported him (and then critiquing that left) to his analysis of the relationship between lies and authoritarianism.', '1500.00', 0, 4),
('9780593086094', 'Concepcion Conquest, Colonialism, and an Immigrant Family', 'Albert Samaha', 'concepcion.jpg', 'Nearing the age at which his mother had migrated to the US, part of the wave of non Europeans who arrived after immigration quotas were relaxed in 1965, Albert Samaha began to question the ironclad belief in a better future that had inspired her family to uproot themselves from their birthplace.', '1500.00', 0, 2),
('9780593135228', 'Project Hail Mary A Novel', 'Andy Weir', 'mary.jpg', 'Ryland Grace is the sole survivor on a desperate, last chance mission and if he fails, humanity and the earth itself will perish. Except that right now, he does not know that. He cannot even remember his own name, let alone the nature of his assignment or how to complete it. All he knows is that he is been asleep for a very, very long time. And he is just been awakened to find himself millions of miles from home, with nothing but two corpses for company.', '2000.00', 0, 0),
('9780593156599', 'The Spear Cuts Through Water', 'Simon Jimenez', 'spear.jpg', 'The people suffer under the centuries long rule of the Moon Throne. The royal family the despotic emperor and his monstrous sons, the Three Terrors hold the countryside in their choking grip. They bleed the land and oppress the citizens with the frightful powers they inherited from the god locked under their palace.', '1800.00', 0, 0),
('9780593230794', 'No Cure for Being Human (And Other Truths I Need to Hear)', 'Kate Bowler', '9780593230794.jpg', 'It is hard to give up on the feeling that the life you really want is just out of reach. A beach body by summer. A trip to Disneyland around the corner. A promotion on the horizon. Everyone wants to believe that they are headed toward good, better, best. But what happens when the life you hoped for is put on hold indefinitely', '2100.00', 0, 4),
('9780593313008', 'Beautiful Country A Memoir of an Undocumented Childhood', 'Qian Julie Wang', 'child.jpg', 'In Chinese, the word for America, Mei Guo, translates directly to a beautiful country. Yet when seven year old Qian arrives in New York City in 1994 full of curiosity, she is overwhelmed by crushing fear and scarcity. In China, parents of Qian were professors, in America, her family is illegal and it will require all the determination and small joys they can muster to survive.', '2000.00', 0, 4),
('9780593467510', 'The Steps of the Sun', 'Walter Tevis', 'sun.jpg', 'The year is 2063. Energy of the the resources of the Earth are dangerously close to being depleted, a new world superpower has upset global dominance of America, and the threat of a new Ice Age looms large. Fortunately, there is one man brave enough and perhaps foolish enough to venture beyond the planet to find the mineral resources that will secure the future of the country, Ben Belson.', '2100.00', 0, 0),
('9780593493526', 'No Filter The Good, the Bad, and the Beautiful', 'Paulina Porizkova', 'filter.jpg', 'Born in Cold War Czechoslovakia, Paulina Porizkova rose to prominence as a model, appearing on her first Sports Illustrated Swimsuit Issue cover in 1984.  As the face of Estée Lauder in 1989, she was one of the highest paid models in the world. When she was cast in the music video for the song Drive by The Cars, it was love at first sight for her and frontman Ric Ocasek.', '1000.00', 0, 4),
('9780593497067', 'Death Troopers Star Wars Legends', 'Joe Schreiber', 'starwars.jpg', 'When the Imperial prison barge Purge temporary home to five hundred of the most ruthless killers of the galaxy, Rebels, scoundrels, and thieves breaks down in a distant part of space, its only hope appears to lie with a Star Destroyer found drifting and seemingly abandoned. But when a boarding party from the Purge is sent to scavenge for parts, only half of them come back bringing with them a horrific disease so lethal that within hours, nearly all aboard the Purge die in ways too hideous to imagine.', '1200.00', 0, 0),
('9780735214736', 'Kingdom of Characters, The Language Revolution That Made Chi', 'Jing Tsu', 'charac-history.jpg', 'After a meteoric rise, China today is one of the worlds most powerful nations. Just a century ago, it was a crumbling empire with literacy reserved for the elite few, as the world underwent a massive technological transformation that threatened to leave them behind. In Kingdom of Characters, Jing Tsu argues that most daunting challenge of China was a linguistic one, the century long fight to make the formidable Chinese language accessible to the modern world of global trade and digital technology.', '1000.00', 1, 2),
('9780735280724', 'Generation Dread, Finding Purpose in an Age of Climate Crisi', 'Britt Wray', 'dread-history.jpg', 'Climate and environment related fears and anxieties are on the rise everywhere. As with any type of stress, eco anxiety can lead to lead to burnout, avoidance, or a disturbance of daily functioning.', '1200.00', 1, 2),
('9780807055397', 'Dangerous Ideas, A brief history of censorship in the west, ', 'Eric Berkowitz', 'idea-history.jpg', 'A fascinating examination of how restricting speech has continuously shaped our culture, and how censorship is used as a tool to prop up authorities and maintain class and gender disparities. Through compelling narrative, historian Eric Berkowitz reveals how drastically censorship has shaped our modern society. More than just a history of censorship, Dangerous Ideas illuminates the power of restricting speech how it has defined states, ideas, and culture and (despite how each of us would like to believe otherwise) how it is something we all participate in.', '900.00', 2, 2),
('9781426221897', 'National Geographic Ultimate Visual History of the World', 'Jean-Pierre Isbouts', 'world.jpg', 'History comes to life in this comprehensive overview of humankind, from earliest times to the present day. Each page is filled with stunning visuals and thought provoking text that make this book an instant classic. From the Babylonian Empire to the Persian Gulf War, from the Xia and Shang Dynasties of Bronze Age China to the new space race, from Egyptian hieroglyphics to the digital age here, in vivid color and crisp narrative, is the sweeping story of the history of civilization.', '1600.00', 0, 2),
('9781468308570', 'History of the Philippines: From Indios Bravos to Filipinos', 'Luis H. Francia', 'fil.jpg', 'Over three million Filipino Americans now live in the US, but popular histories of this rich, complicated nation are still rare. From ancient Malay settlements to Spanish colonization, the American occupation and beyond, A History of the Philippines recasts various Philippine narratives with an eye for the layers of colonial and post colonial history that have created this diverse and fascinating population.', '2000.00', 0, 2),
('9781524880798', 'I Hope This Reaches Her in Time', 'r.h. Sin', 'reach-poetry.jpg', 'There will come a time when the weariness of your soul will urge you to seek out a sign, some sort of indication that things will get better. Your heart will be drawn to this place, to these pages. These words were written for you, this book is your manifesto. I hope this reaches you in time.', '800.00', 1, 3),
('9781534430990', 'This Is How You Lose the Time War', 'Amal El-Mohtar, Max Gladstone', 'timewar.jpg', 'Among the ashes of a dying world, an agent of the Commandant finds a letter. It reads, Burn before reading. Thus begins an unlikely correspondence between two rival agents hellbent on securing the best possible future for their warring factions. Now, what began as a taunt, a battlefield boast, grows into something more. Something epic. Something romantic. Something that could change the past and the future.', '1800.00', 0, 0),
('9781571315120', 'The Carrying', 'Ada Limon', 'cary.jpg', 'Vulnerable, tender, acute, these are serious poems, brave poems, exploring with honesty the ambiguous moment between the rapture of youth and the grace of acceptance. A daughter tends to aging parents. A woman struggles with infertility and a body seized by pain and vertigo as well as ecstasy.', '1300.00', 0, 3),
('9781684121335', 'H. P. Lovecraft Cthulhu Mythos Tales, Word Cloud Classics', 'H. P. Lovecraft', 'hp-poetry.jpg', 'For the few mortals who dare to glimpse this unknowable world, the result is a complete disconnection from what was once considered reality. stories of Lovecraft are grim, fantastical, dark, horrifying and yet endlessly fascinating.', '800.00', 1, 3),
('9781847493729', 'The Picture of Dorian Gray, Alma Evergreens', 'Oscar Wilde', 'oscar.jpg', 'Dorian Gray is having his picture painted by Basil Hallward, who is charmed by his looks. But when Sir Henry Wotton visits and seduces Dorian into the worship of youthful beauty with an intoxicating speech, Dorian makes a wish he will live to regret that all the marks of age will now be reflected in the portrait rather than on the own face of Dorian. The stage is now set for a masterful tale about appearance, reality, art, life, truth, fiction and the burden of conscience.', '1400.00', 0, 4),
('9781847497802', 'Humiliated and Insulted, New Translation, Alma Classics', 'Fyodor Dostoevsky', 'insulted-poetry.jpg', 'First published in 1861, Humiliated and Insulted plunges the reader into a world of moral degradation, childhood trauma, unrequited love and irreconcil­able relationships. At the centre of the story are a young struggling author, an orphaned teenager and a depraved aristocrat, who not only foreshadows the great figures of evil in Dostoevsky’s later fiction, but is a powerful and original presence in his own right.', '900.00', 1, 3),
('9781912714971', 'A Portrait of the Artist as a Young Man, Chiltern Classics', 'James Joyce', 'youngman-poetry.jpg', 'A Portrait of the Artist as a Young Man describes Stephen Dedalus development from a bright young student to a promising clergy student to an artist. Set in Ireland at the turn of the century, It begins with his earliest childhood memories and progresses to his grand epiphany, in which he announces to his closest companions his decision to pursue art rather than a religious life. Stephen\'s decision results from a combination of factors, the temperament that colors his impressions of the world, his interactions with others, and his interpretation of social forces.', '1000.00', 1, 3),
('9781913380489', 'Mathematics for Ladies: Poems on Women in Science', 'Jessy Randall', 'woe.jpg', 'Hilarious, heartbreaking, and perfectly pitched, these carefully researched poems about historical women in science, technology, engineering, mathematics, and medicine will bring you to both laughter and outrage in just a few lines. A wickedly funny, feminist take on the lives and work of women who resisted their parents, their governments, the rules and conventions of their times, and sometimes situations as insidious as a lack of a bathroom for women in a college science building.', '1200.00', 0, 2),
('9781982168353', 'This Will All Be Over Soon: A Memoir', 'Cecily Strong', 'over.jpg', 'Cecily Strong had a special bond with her cousin Owen. And so she was devastated when, in early 2020, he passed away at age thirty from the brain cancer glioblastoma. Before Strong could attempt to process her grief, another tragedy struck the coronavirus pandemic. Following a few harrowing weeks in the virus epicenter of New York City, Strong relocated to an isolated house in the woods upstate. Here, trying to make sense on the death of Owen and the upended world, she spent much of the ensuing months writing. The result is This Will All Be Over Soon, a raw, unflinching memoir about loss, love, laughter, and hope.', '2000.00', 0, 4),
('9781982191542', 'Immortal Poems of the English Language', 'Oscar Williams', 'english-poetry.jpg', 'The last six hundred years in British and American literature have given us some of the most moving and memorable poems in all literature. Now, discover many of these same works in one gorgeously wrought collection, featuring entries from poets as legendary and beloved as Elizabeth Barrett Browning, John Keats, Rudyard Kipling, Ralph Waldo Emerson, D.H. Lawrence, and many more.', '1000.00', 1, 3),
('9781982195786', 'Making History: The Storytellers Who Shaped the Past', 'Richard Cohen', 'his.jpg', 'From the origins of history writing, when such an activity itself seemed revolutionary, through to television and the digital age, Cohen brings captivating figures to vivid light, from Thucydides and Tacitus to Voltaire and Gibbon, Winston Churchill and Henry Louis Gates.', '2000.00', 0, 2),
('9798572931358', 'Field Guide to the Haunted Forest', 'Jarod K Anderson', 'forest.jpg', 'This poetry collection celebrates the impossible truths of the natural world and the magic that hides in plain sight. Poet and podcaster Jarod K. Anderson (creator of The CryptoNaturalist Podcast) has built a large audience of social media followers and podcast listeners with his strange, vibrant appreciations of nature. Ranging from contemplations of mortality to appreciations of single celled organisms, the poems in this collection highlight our connection to a living universe and affirm our place in a wilderness worthy of our love.', '2200.00', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(0, 'Sci Fi'),
(1, 'Programming'),
(2, 'History'),
(3, 'Poetry'),
(4, 'Biographies');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(0, 'Sir Al Publishing Co'),
(1, 'Aivan Publishing'),
(2, 'Hidden Leaf'),
(3, 'O\'Reilly Media'),
(4, 'Shi Aidu Fala Tu'),
(5, 'Nelson Publishing'),
(6, 'Tricia Company');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
