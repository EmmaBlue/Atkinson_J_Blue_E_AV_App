-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 15, 2018 at 12:59 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_ID` smallint(6) UNSIGNED NOT NULL,
  `category_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_ID`, `category_name`) VALUES
(1, 'comedy'),
(2, 'essay'),
(3, 'review'),
(4, 'politics'),
(5, 'movies'),
(6, 'books'),
(7, 'advice');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `video_ID` smallint(6) UNSIGNED NOT NULL,
  `video_name` varchar(75) NOT NULL,
  `video_author` varchar(25) NOT NULL,
  `video_desc` text NOT NULL,
  `video_duration` time NOT NULL,
  `video_upload_date` date NOT NULL,
  `video_url` varchar(50) NOT NULL,
  `video_image` varchar(25) NOT NULL,
  `video_rating` smallint(5) UNSIGNED NOT NULL,
  `video_visits` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`video_ID`, `video_name`, `video_author`, `video_desc`, `video_duration`, `video_upload_date`, `video_url`, `video_image`, `video_rating`, `video_visits`) VALUES
(1, 'FIVE years on YouTube! (+future plans)', 'CharliMarieTV', 'My lil YouTube channel turned 5 years old in October! Hear about my past year on YouTube and my plans for the future of this channel. I love making these videos to wrap up the past year on my YouTube anniversary.', '00:12:07', '2018-11-04', 'https://www.youtube.com/watch?v=ipBpBJy0SMs', 'fiveyears.png', 4, 426),
(2, 'Behind the Banksy Stunt', 'The Art Assignment', 'When Banksy shredded his artwork the moment after it sold at auction, he left many questions unanswered. What are we to make of the stunt? And subscribe to the new PBS Digital Studios series Two Cents: https://www.youtube.com/TwoCentsPBS. To support our channel, visit: http://www.patreon.com/artassignment. Thanks to our Grandmasters of the Arts Vincent Apa and Indianapolis Homes Realty, and all of our patrons, especially Bronze Bond, Patrick Hanna, M12 Studio, Jane Quale, and Constance Urist. Subscribe for new episodes of The Art Assignment every other Thursday! -- Follow us elsewhere for the full Art Assignment experience: Tumblr: http://theartassignment.comResponse Tumblr: http://all.theartassignment.comTwitter: http://twitter.com/artassignmentInstagram: http://instagram.com/theartassignment/Facebook: http://www.facebook.com/theartassignmentand', '00:11:19', '2018-11-01', 'https://www.youtube.com/watch?v=X-6jMi4e-0Q', 'banksy.png', 5, 81725),
(3, 'Cases for Political Art | The Art Assignment | PBS Digital Studios', 'The Art Assignment', 'This week we explore some of the most powerful artworks ever made, making the case for political art one work at a time. Pablo Picasso\'s Guernica, Kathe Kollwitz\'s prints, Kazimir Malevich\'s Black Square, Iri and Toshi Maruki\'s Hiroshima Panels, and Martha Rosler\'s House Beautiful: Bringing the War Home photomontages. What do you think of as political art? And what are the artworks you\'ve encountered that have had the greatest impact on the way you view the world? Subscribe for new episodes of The Art Assignment every Thursday! -- Follow us elsewhere for the full Art Assignment experience: Tumblr: http://theartassignment.comResponse Tumblr: http://all.theartassignment.comTwitter: http://twitter.com/artassignmentInstagram: http://instagram.com/theartassignment/Facebook: http://www.facebook.com/theartassignmentand don\'t forget Reddit!: http://www.reddit.com/r/TheArtAssignment', '00:12:54', '2016-12-15', '`https://www.youtube.com/watch?v=RfXad3HVox4`', 'politicalart.png', 4, 62841),
(4, 'Televangelists: Last Week Tonight with John Oliver (HBO)', 'LastWeekTonight', 'U.S. tax law allows television preachers to get away with almost anything. We know this from personal experience. Our Lady of Perpetual Exemption will not be able to accept donations from Church supporters from the states of Mississippi, Nevada, Pennsylvania, or South Carolina. We apologize for any inconvenience. Connect with Last Week Tonight online... Subscribe to the Last Week Tonight YouTube channel for more almost news as it almost happens: www.youtube.com/user/LastWeekTonight Find Last Week Tonight on Facebook like your mom would: http://Facebook.com/LastWeekTonight Follow us on Twitter for news about jokes and jokes about news: http://Twitter.com/LastWeekTonight Visit our official site for all that other stuff at once: http://www.hbo.com/lastweektonight', '00:20:05', '2015-08-16', 'https://www.youtube.com/watch?v=7y1xJAVZxXg', 'televangelists.png', 3, 16777215),
(5, 'Charter Schools: Last Week Tonight', 'LastWeekTonight', 'Charter schools are privately run, publicly funded, and irregularly regulated. John Oliver explores why they aren’t at all like pizzerias. Connect with Last Week Tonight online... Subscribe to the Last Week Tonight YouTube channel for more almost news as it almost happens: www.youtube.com/user/LastWeekTonight Find Last Week Tonight on Facebook like your mom would: http://Facebook.com/LastWeekTonight Follow us on Twitter for news about jokes and jokes about news: http://Twitter.com/LastWeekTonight Visit our official site for all that other stuff at once: http://www.hbo.com/lastweektonight', '00:18:12', '2016-08-21', 'https://www.youtube.com/watch?v=l_htSPGAY7I', 'charter.png', 3, 9683150),
(6, 'Inside the mind of a master procrastinator', 'TED', 'Tim Urban knows that procrastination doesn not make sense, but he\'snever been able to shake his habit of waiting until the last minute to get things done. In this hilarious and insightful talk, Urban takes us on a journey through YouTube binges, Wikipedia rabbit holes and bouts of staring out the window -- and encourages us to think harder about what were really procrastinating on, before we run out of time. For more from Tim Urban, visit Wait But Why: http://www.waitbutwhy.com/ TEDTalks is a daily video podcast of the best talks and performances from the TED Conference, where the world\'sleading thinkers and doers give the talk of their lives in 18 minutes (or less). Look for talks on Technology, Entertainment and Design -- plus science, business, global issues, the arts and much more. Find closed captions and translated subtitles in many languages at http://www.ted.com/translate Follow TED news on Twitter: http://www.twitter.com/tednewsLike TED on Facebook: https://www.facebook.com/TED Subscribe to our channel: http://www.youtube.com/user/TEDtalksD...', '00:14:03', '2016-04-06', 'https://www.youtube.com/watch?v=arj7oStGLkU', 'procrastinator.png', 2, 16259756),
(7, 'How to fix a broken heart | Guy Winch', 'TED', 'At some point in our lives, almost every one of us will have our heart broken. Imagine how different things would be if we paid more attention to this unique emotional pain. Psychologist Guy Winch reveals how recovering from heartbreak starts with a determination to fight our instincts to idealize and search for answers that aren\'tthere -- and offers a toolkit on how to, eventually, move on. Our hearts might sometimes be broken, but we don\'t\' have to break with them. Check out more TED Talks: http://www.ted.com The TED Talks channel features the best talks and performances from the TED Conference, where the world\'s leading thinkers and doers give the talk of their lives in 18 minutes (or less). Look for talks on Technology, Entertainment and Design -- plus science, business, global issues, the arts and more. Follow TED on Twitter: http://www.twitter.com/TEDTalksLike TED on Facebook: https://www.facebook.com/TED Subscribe to our channel: https://www.youtube.com/TED', '00:12:25', '2018-02-27', 'https://www.youtube.com/watch?v=k0GQSJrpVhM', 'broken-heart.png', 3, 1868263),
(8, 'I asked my friends about my flaws', 'Anna Akana', 'Start your Squarespace free trial today - http://Squarespace.com/anna connect Instagram: https://www.instagram.com/annaakanaTwitter: http://twitter.com/annaakanaFacebook: https://www.facebook.com/annaakanaSpotify: https://spoti.fi/2MvmYjE shot by Eric Lombart http://youtube.com/EricLombart make ups by Caitlyn Brisbin http://instagram.com/CatCalico produced by Reed Hedani http://instagram.com/rhedani grip - Melissa Gasca, John Lee, Megan Pham sound - John Lee edited by Zac Surprenant gfx by Bethany Radloff http://youtube.com/bethberad', '00:04:29', '2018-10-18', 'https://www.youtube.com/watch?v=2qqoEBUKQvs', 'flaws.png', 3, 264194),
(9, 'Jordan Peterson | ContraPoints', 'Contrapoints', 'A response. ✿Patreon: https://www.patreon.com/contrapoints✿Donate: https://paypal.me/contrapoints✿Merch: https://www.teepublic.com/stores/cont...✿Subscribe: https://www.youtube.com/c/ContraPoints✿Live Stream Channel: https://www.youtube.com/c/ContraPoint...✿Twitter: https://twitter.com/ContraPoints✿Facebook: https://www.facebook.com/ContraPoints/✿Instagram: https://www.instagram.com/contrapoints/ Credits music by Zoë Blade: http://zoeblade.com/ Check out my videos about: Capitalism (Part 2): https://youtu.be/AR7ryg1w_IQCapitalism (Part 1): https://youtu.be/gJW4-cOZt8AAmerica—Still Racist: https://youtu.be/GWwiUIVpmNYAutogynephilia: https://youtu.be/6czRFLs5JQoViolence: https://youtu.be/lmsoVFCUN3QDegeneracy: https://youtu.be/9BlNGZunYM8The Left: https://youtu.be/QuN6GfUix7cDecrypting the Alt-Right: https://youtu.be/Sx4BVGPkdzkTERFs: https://youtu.be/AQPWI7cEJGsGender Dysphoria: https://youtu.be/Ayuqizp4fyYFree Speech (Part 1): https://youtu.be/GGTDhutW_usFree Speech (Part 2): https://youtu.be/IBUuBd5VRbYDebating the Alt-Right: https://youtu.be/zPa1wikTd5cWhat is Race?: https://youtu.be/PY3lBKje46EWhat is Gender?: https://youtu.be/b_uEXzqW43c', '00:23:19', '2018-05-02', 'https://www.youtube.com/watch?v=4LqZdkkBDas', 'jordan-peterson.png', 5, 884635),
(10, 'That Time Disney Remade Beauty and the Beast', ' Lindsay Ellis', 'Thanks, I hate it. Sponsored in part by Audible - join at http://audible.com/lindsayellis', '00:36:52', '2018-07-10', 'https://www.youtube.com/watch?v=vpUx9DnQUkA', 'beauty-beast.png', 4, 1000149),
(11, 'The Worst Ghost Hunting Show of All Time', 'Jenny Nicholson', ' You\'ve got to hand it to them, they DID find a heck of a lot of ghosts. Paranormal Home Inspectors drinking game rules! Sip every time: The family turns out to live right next to a train which is periodically vibrating their house and making things move - https://www.patreon.com/JennyNicholsonBrian says the phrase “well here’s the problem right here” - https://twitter.com/JennyENicholsonNadine Mercy mentions her own unprovable physiological response (shaking, trouble breathing, “look I have goosebumps” and we can’t see her arms) as though it is proof of ghosts - https://www.instagram.com/spider_jewel/Drink once for each new ghost said to be in the residence - https://spiderjewel.tumblr.com/Drink once for each faucet turned on, door slammed, or sensor tripped - https://www.facebook.com/JennyNichols...Finish your drink if the episode features any member of the household who has agreed to be on camera but does NOT believe in ghosts - https://www.youtube.com/user/EileMont...', '00:31:42', '2018-10-25', 'https://www.youtube.com/watch?v=-wG9m-eYNiM', 'ghost-hunting.png', 4, 2445789),
(12, 'Bright: The Apotheosis of Lazy Worldbuilding | Video Essay', 'Lindsay Ellis', 'We\'re broken people now. Support us on Patreon: https://www.patreon.com/loosecanonFull \"Orc Cop\" song by Rap Critic: https://soundcloud.com/mastaartisan/o...Rap Critic on YouTube: https://www.youtube.com/channel/UCL3w...', '00:44:33', '2018-10-11', 'https://www.youtube.com/watch?v=gLOxQxMnEz8&t=1569', 'bright.png', 3, 1201334),
(13, 'Annihilation and Decoding Metaphor', 'Folding Ideas', 'Clickbait Title: The Ending of Annihilation Actually Explained For Real There was a lot of anxiety in the final stretch of this one, I got really worried that the front half was too mean. I wondered what Mikey would think of me. I always admire his commitment to optimism, but I also envy it, because I am an envious person. So you\'ll have to forgive me for my weakness. Written and performed by Dan Olson Twitter: https://twitter.com/FoldableHuman', '00:19:35', '2018-02-01', 'https://www.youtube.com/watch?v=URo66iLNEZw', 'annihilation.png', 3, 108241),
(14, 'Natalie Portman Breaks Down Her Career, from “Star Wars” to “Vox Lux\" | Van', 'Vanity Fair', 'Natalie Portman discusses her remarkable career, including roles in \"The Professional,\" \"Mars Attacks,\" \"Star Wars,\" \"Garden State,\" \"V for Vendetta,\" \"Closer,\" \"A Tale of Love and Darkness,\" \"Black Swan,\" \"Jackie,\" and \"Vox Lux.\" Still haven’t subscribed to Vanity Fair on YouTube? ►► http://bit.ly/2z6Ya9M ABOUT VANITY FAIR Arts and entertainment, business and media, politics, and world affairs—Vanity Fair’s features and exclusive videos capture the people, places, and ideas that define modern culture. Natalie Portman Breaks Down Her Career, from “Star Wars” to “Vox Lux\" | Vanity Fair', '00:10:37', '2018-10-31', 'https://www.youtube.com/watch?v=_ra91EqeuYA', 'natalie-portman.png', 2, 395803),
(15, 'Movie Accent Expert Breaks Down 28 More Actors\' Accents | WIRED', 'Wired', 'Dialect coach Erik Singer once again analyzes the accents of some of Hollywood\'s biggest names. How accurate were their accents, really\'? Check out more from Erik here: http://www.eriksinger.com/ Still haven’t subscribed to WIRED on YouTube? ►► http://wrd.cm/15fP7B7 ABOUT WIRED WIRED is where tomorrow is realized. Through thought-provoking stories and videos, WIRED explores the future of business, innovation, and culture. Movie Accent Expert Breaks Down 28 More ActorsAccents | WIRED', '00:24:21', '2018-10-20', 'https://www.youtube.com/watch?v=ZXyWwirLfcg', 'accents.png', 4, 3188001),
(16, 'Knife Expert Guesses Cheap vs. Expensive Knives | Price Points | Epicurious', 'Epicurious', 'In this episode of \'Price Points\', Epicurious challenges knife expert Geoff Feder to guess which knife is more expensive. Feder breaks down paring knives, chef knives, boning knives, and serrated knives. For each type, the connoisseur looks at and tests each knife before guessing which knife costs more. Once the prices are revealed, Feder explains why a specific knife costs more and dives into specifics on how each knife is made. Thank you to federknives.com Check out the Damascus Knife: maumasifirearts.com Still haven’t subscribed to Epicurious on YouTube? ►► http://bit.ly/epiyoutubesub ABOUT EPICURIOUS Browse thousands of recipes and videos from Bon Appétit, Gourmet, and more. Find inventive cooking ideas, ingredients, and restaurant menus from the world’s largest food archive. Knife Expert Guesses Cheap vs. Expensive Knives | Price Points | Epicurious\" | Vanity Fair', '00:16:12', '2018-09-17', 'https://www.youtube.com/watch?v=T9UHD30MSGk', 'epicurious.png', 3, 2419015),
(17, 'Real Lawyer Reacts to Better Call Saul (Episode 1)', 'LegalEagle', 'Why do bad things happen to good lawyers? Before he was Saul Goodman he was Jimmy McGill -- but he was always a great lawyer. Today we’re going to review Better Call Saul. Stay until the end for my Legal Realism Grade! I loved Breaking Bad. And Saul Goodman was one of my favorite characters. Despite being down on his luck and faking his own name, he somehow always managed to give good legal advice to certain meth dealers in Albuquerque. Not surprisingly I REALLY enjoyed this show. Are there other episodes that are particularly good? Would you like me to react to another one? Let me know in the comments! ★ GET TIED! If you’re looking for skinny ties, pocket squares, or tie bars (like the ones I wear) check out Ties.com. Huge selection and great prices: https://go.magik.ly/ml/ftki/ ★ SUIT UP! Even if you\'re not a lawyer, you can still DRESS LIKE A LAWYER. All of my suits are from BlackLapel (I\'ve used them exclusively for over five years). Their custom suits are amazing, yet still ridiculously affordable. HIGHLY recommended: https://go.magik.ly/ml/f78n/ I get asked a lot about whether being a practicing attorney is like being a lawyer on TV. I love watching legal movies and courtroom dramas. It\'s one of the reasons I decided to become a lawyer. But sometimes they make me want to pull my hair out because they are ridiculous. Today I\'m taking a break from teaching law students how to kick ass in law school to take on lawyers in the movies and on TV. While all legal movies and shows take dramatic license to make things more interesting (nobody wants to see hundreds of hours of brief writing), many of them have a grain of truth. This is part of a continuing series of \"Lawyer Reaction\" videos. Got a legal movie or TV show you\'d like me to critique? Let me know in the comments! Props to Dr. Mike\'s Real Doctor Reacts (https://goo.gl/qF6Hza) and Wired\'s Technique Critique (https://goo.gl/C8dz2U) for the inspiration. All clips used for fair use commentary, criticism, and educational purposes. See Hosseinzadeh v. Klein, 276 F.Supp.3d 34 (SDNY 2017); Equals Three, LLC v. Jukin Media, Inc., 139 F. Supp. 3d 1094 (C.D. Cal. 2015). Typical legal disclaimer from a lawyer (occupational hazard): This is not legal advice, nor can I give you legal advice. Sorry! Everything here is for informational purposes only and not for the purpose of providing legal advice. You should contact your attorney to obtain advice with respect to any particular issue or problem. Nothing here should be construed to form an attorney client relationship. Also, some of the links in this post may be affiliate links, meaning, at no cost to you, I will earn a small commission if you click through and make a purchase. But if you click, it really helps me make more of these videos! ======================================================== ★ Got law school questions? Ask in the comments! ★ Say hi on Facebook: ➜ https://www.facebook.com/legaleaglere...★ Tweet at us on Twitter @LegalEagleDJ', '00:14:25', '2018-06-16', 'https://www.youtube.com/watch?v=HG29zeyWn58', 'better-call-saul.png', 2, 979581),
(18, 'Hercules, Disney\'s Beautiful Hot Mess: a Video Essay', 'Lindsay Ellis', 'At long last, we can finally put to bed the mystery of why Disney\'s Hercules was kind of eh. Patreon: https://www.patreon.com/loosecanon', '00:23:01', '2018-09-23', 'https://www.youtube.com/watch?v=KznZcK7ksf4&t=1980', 'hercules.png', 3, 1723156),
(19, 'The Looking for Alaska Thing', 'vlogbrothers', 'In which John charts the long and winding road of the movie/television adaptation of his first novel, Looking for Alaska. HAPPY PIZZAMAS: https://store.dftba.com/collections/p... Congrats to Charlie Plummer and Kristine Froseth on being cast in the Looking for Alaska series; their auditions really blew me away. I just want to put a note here to restate my gratitude to everyone--including the producers and Josh and Stephanie and everyone at Hulu and Paramount TV--for working together to make this happen. I am so hopeful for the series and so excited about it. ---- Subscribe to our newsletter! http://nerdfighteria.com/newsletter/ And join the community at http://nerdfighteria.com http://effyeahnerdfighters.comHelp transcribe videos - http://nerdfighteria.infoJohn\'s twitter - http://twitter.com/johngreenJohn\'s tumblr - http://fishingboatproceeds.tumblr.comHank\'s twitter - http://twitter.com/hankgreenHank\'s tumblr - http://edwardspoonhands.tumblr.com', '00:03:59', '2016-10-03', 'https://www.youtube.com/watch?v=jVdyfnss-ys', 'looking-for-alaska.png', 2, 163312),
(20, 'Autogynephilia | ContraPoints', 'contrapoints', 'A psychosexual journey to the heart of a bad theory about trans women.\r\n\r\n✿Patreon: https://www.patreon.com/contrapoints\r\n✿Donate: https://paypal.me/contrapoints\r\n✿Merch: https://www.teepublic.com/stores/cont...\r\n✿Subscribe: https://www.youtube.com/c/ContraPoints\r\n✿Live Stream Channel: https://www.youtube.com/c/ContraPoint...\r\n✿Twitter: https://twitter.com/ContraPoints\r\n✿Facebook: https://www.facebook.com/ContraPoints/\r\n✿Instagram: https://www.instagram.com/contrapoints/\r\n\r\nOriginal music by Zoë Blade: http://zoeblade.com/\r\nWith Peter Coffin as the voice of Bailey/Blanchard: https://www.youtube.com/user/petercoffin\r\n\r\nSome more academic criticisms of autogynephilia theory:\r\nJulia Serano, \"The Case Against Autogynephilia\": http://www.juliaserano.com/av/Serano-...\r\nZinnia Jones, \"Alice Dreger, autogynephilia, and the misrepresentation of trans sexualities\": https://genderanalysis.net/2016/04/al...\r\n\r\nCheck out my videos about:\r\nWhat\'s Wrong with Capitalism (Part 1): https://youtu.be/gJW4-cOZt8A\r\nViolence: https://youtu.be/lmsoVFCUN3Q\r\nDegeneracy: https://youtu.be/9BlNGZunYM8\r\nThe Left: https://youtu.be/QuN6GfUix7c\r\nDecrypting the Alt-Right: https://youtu.be/Sx4BVGPkdzk\r\nTERFs: https://youtu.be/AQPWI7cEJGs\r\nGender Dysphoria: https://youtu.be/Ayuqizp4fyY\r\nFree Speech (Part 1): https://youtu.be/GGTDhutW_us\r\nFree Speech (Part 2): https://youtu.be/IBUuBd5VRbY\r\nDebating the Alt-Right: https://youtu.be/zPa1wikTd5c\r\nWhat is Race?: https://youtu.be/PY3lBKje46E\r\nWhat is Gender?: https://youtu.be/b_uEXzqW43c', '00:48:54', '2018-10-21', 'https://www.youtube.com/watch?v=6czRFLs5JQo', 'autogynephilia.png', 4, 214011),
(21, 'How The Last Jedi Defies Expectations About Male Heroes', 'Pop Culture Detective', 'Help me make more videos! https://www.patreon.com/popdetective The Last Jedi is a movie that’s designed to defy fan expectations. Nowhere is this subversion more evident than in the way the film handles its three male heroes: X-Wing pilot Poe Dameron, renegade Stormtrooper Finn, and legendary Jedi Knight Luke Skywalker. PATREON If you’d like to see more long-form video essays focusing on the intersections of entertainment and masculinity, please help fund this series on Patreon: https://www.patreon.com/popdetective PAYPAL If you\'d rather make a one-time donation you can do that via PayPal: https://www.paypal.me/popdetective TEXT TRANSCRIPT Coming soon! FOOTAGE USED: • Star Wars: The Last Jedi (2017) • Star Wars: The Force Awakens (2015) • Star Wars: Return of the Jedi (1983) • Star Wars: Empire Strikes Back (1980) • Star Wars: A New Hope (1977) • The Director and The Jedi (2018) • The Avengers (2015) • Captain America: The First Avenger (2011) • Avatar (2009) • The Lord of the Rings: The Two Towers (2002) • The Lord of the Rings: The Return of the King (2003) • Independence Day (1996) • Jurassic World (2015) • Goldfinger (1964) • Tron Legacy (2010) • The Matrix (1999) OTHER ARTICLES ABOUT THE LAST JEDI: • The Beautiful, Ugly, and Possessive Hearts of Star Wars: http://observer.com/2018/07/film-crit...• Toxic Masculinity Is the True Villain of The Last Jedi http://www.denofgeek.com/us/movies/st...• The Last Jedi: Saving Star Wars from Itself: https://lareviewofbooks.org/article/t...• The Last Jedi Offers the Harsh Condemnation of Mansplaining https://www.vanityfair.com/hollywood/... COMMENTS All YouTube comments are held for approval due to harassment of this channel. If you\'d like to participate in constructive online conversations about this video, please share it on your social media networks. FAIR USE All multimedia clips included in this video constitute a \'fair useof any copyrighted material as provided for in Section 107 of U.S. Copyright law, which allows for criticism, comment and scholarship. Learn more about fair use with this awesome app by New Media Rights! http://newmediarights.org/fairuse CREDITS Writer/Producer: Jonathan McIntosh Motion Graphics: Jonathan McIntosh Logo Design: Justin McIntosh Outro music: Jonathan Mann https://www.patreon.com/jonathanmann Help us caption & translate this video! https://amara.org/v/lDLh/', '00:20:49', '2018-08-31', 'https://www.youtube.com/watch?v=mWqVJZMh6-w', 'last-jedi.png', 3, 3708857),
(22, 'Real Women - Beauty Through The Decades The Realistic Way', 'Karolina Zebrowska', 'To be frank, it was supposed to be just another \"Beauty Through The Decades\" video. I saw lots of them already, but they all have seemed to show beauty standards in a very stereotypical and pop-culture way, so I wanted to do a more historically accurate one. As I was doing some research, I became more and more aware that beautiful faces and fashion we see on the photos, ads and fashion plates are just an idealistic version of reality. So here\'s to reality. NOTES: It was hard for me to make this video universal and find some papers referring to the whole Europe or even the whole world, so the numbers I used may be a little misleading. To make it clear: - 40% of women in factories (1901) refers to Great Britain only - one out of nine women working in domestic service refers to Russia. If you know any other specific numbers referring to a wider cultural context I\'d be more than greatful. [POLISH] \"Prawdziwe kobiety\" Szczerze mówiąc, miało to być kolejne wideo \"Piękno przez dziesięciolecia\". Widziałam już ich wiele, ale wszystkie one wydają się pokazywać standardy urody w bardzo stereotypowy i pop-kulturowy sposób, więc chciałam zrobić bardziej dokładny historycznie film. Kiedy przeprowadzałam badania, coraz lepiej zdawałam sobie sprawę, że piękne twarze i moda, które widzimy na zdjęciach, reklamach i płytach modowych, to tylko idealistyczna wersja rzeczywistości. A więc jak było naprawdę. UWAGI: Trudno było mi uczynić to wideo uniwersalnym i znaleźć jakieś dokumenty odnoszące się do całej Europy, a nawet całego świata, więc liczby, których użyłam, mogą być trochę mylące. Żeby było jasne: - 40% kobiet w fabrykach (1901) odnosi się tylko do Wielkiej Brytanii - jedna z dziewięciu kobiet pracujących w służbie domowej odnosi się do Rosji. Jeśli znasz jakieś inne konkretne liczby odnoszące się do szerszego kontekstu kulturowego, byłabym więcej niż wdzięczna za informacje.', '00:02:00', '2015-10-24', 'https://www.youtube.com/watch?v=t__RhUyZMDM', 'real-women.png', 4, 1002567),
(23, 'I did it. I found the Worst Book.', 'Jenny Nicholson', 'We seem to be made to suffer. It\'s our lot in life.\" - C-3PO Get YOUR very own copy of Troll by Emma Clark today! (Does not come with my incredulous notes in the margins.) http://www.amazon.com/Troll-First-3-B... Select your favorite romance novel trope: Slave of sexy werewolf - http://www.patreon.com/JennyNicholsonCowboy boyfriend joins the army - http://twitter.com/JennyENicholsonSecret billionaire baby - http://www.instagram.com/spider_jewel/Billionaire werewolf and his five sexy brothers - http://www.facebook.com/JennyNicholso...Uh it\'s\' a Scottish guy - http://spiderjewel.tumblr.com', '00:23:18', '2017-09-25', 'https://www.youtube.com/watch?v=yZMt87ZdUbw', 'worst-book.png', 3, 108241),
(24, '6 Scary Things No One Tells You About Turning 30', 'The Financial Diet', 'This video is brought to you in partnership with Wealthsimple. Visit http://wealthsimple.com/TFD. TFD followers will receive a special $50 cash bonus when you open and fund a new account (minimum initial deposit of $500). In this week\'s video, Chelsea covers the less glamorous aspects of turning 30. She touches on some common expectations, that we should all learn to let go of, to make room for bigger and better things in this new chapter of our lives. Chelsea\'s Instagram: https://www.instagram.com/faganchelsea/ 7 \"Grown-Up\" Behaviors That Are Wasting Your Money: https://www.youtube.com/watch?v=rQcro... What Would It Cost To Live Like Carrie Bradshaw In 2018?: https://www.girlboss.com/money/carrie... How Much Would The \'FriendsApartments Cost In Real Life? Let\'s Just Say, They\'ve Always Been Slightly Unrealistic: https://www.bustle.com/articles/60983... 12 bad money habits to break to build more wealth in 2017: https://www.cnbc.com/2016/12/29/12-ba... Here’s how much you should have saved by 35: https://www.cnbc.com/2017/08/08/how-m... Here\'s how many millennials are actually saving for retirement: https://www.cnbc.com/2017/10/03/how-m... Will You Follow in Your Parents’ Footsteps?: https://www.nytimes.com/2017/12/01/le... Study reveals the age you officially become boring: https://www.harpersbazaar.com/uk/cult... How Happiness Changes With Age: https://www.theatlantic.com/health/ar... Here’s why millions of millennials are not homeowners: https://www.cnbc.com/2018/08/09/milli... Why aren’t millennials buying houses?: https://www.curbed.com/2018/7/11/1754... The Real Reasons Millennials Aren\'t Buying Homes: https://www.investopedia.com/news/rea... Here\'s how much the average student loan borrower owes when they graduate: https://www.cnbc.com/2018/02/15/heres... Why is Adult Acne on the Rise?: http://www.dermalinstitute.com/us/lib... The Emotional Impact of Skin Problems: https://www.psychologytoday.com/us/bl... Why your first job out of college really, really matters: https://www.cnbc.com/2018/06/25/why-y... Hours of Work in U.S. History: https://eh.net/encyclopedia/hours-of-... 10 Shocking Workplace Stats You Need To Know: https://www.forbes.com/sites/davidstu... Workplace Stress: https://www.stress.org/workplace-stress/ 9 Simple Ways to Deal With Stress at Work: https://www.verywellmind.com/how-to-d... How Successful People Set Boundaries at Work: https://www.inc.com/dana-gionta-dan-g... The Financial Diet site: http://www.thefinancialdiet.com', '00:05:34', '2018-10-30', 'https://www.youtube.com/watch?v=StU2WN4PSDY', 'thirty.png', 2, 66279),
(25, 'The Death of the Hollywood Movie Musical', 'Lindsay Ellis', 'Sponsored by Skillshare - https://skl.sh/lindsay “Roadshows command premium prices and the exclusive firstruns presumably whet appetites for the subsequent runs at regular prices. And they justify financially the greater length, high costs, starrier casts, and whatever else is big about bigness. The roadshow contagion is now so epidemic that almost any picture deal which comes along is very carefully mined for its intermission potential.”--Charles Champlin, The Los Angeles Times, 1967', '00:24:56', '2018-08-31', 'https://www.youtube.com/watch?v=b8o7LzGqc3E', 'hollywood-musical.png', 5, 440956);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_category`
--

CREATE TABLE `tbl_video_category` (
  `ID` smallint(6) UNSIGNED NOT NULL,
  `video_ID` smallint(6) UNSIGNED NOT NULL,
  `category_ID` smallint(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_video_category`
--

INSERT INTO `tbl_video_category` (`ID`, `video_ID`, `category_ID`) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 3, 2),
(5, 4, 1),
(7, 5, 1),
(9, 6, 7),
(10, 7, 7),
(11, 8, 1),
(12, 9, 4),
(13, 10, 5),
(14, 11, 1),
(15, 12, 5),
(17, 13, 3),
(18, 14, 5),
(19, 15, 5),
(20, 16, 3),
(21, 17, 3),
(22, 18, 3),
(23, 19, 6),
(24, 20, 4),
(25, 21, 3),
(27, 22, 2),
(28, 23, 3),
(29, 24, 7),
(30, 25, 3),
(39, 24, 7),
(40, 25, 5),
(41, 23, 1),
(42, 24, 7),
(43, 25, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`video_ID`);

--
-- Indexes for table `tbl_video_category`
--
ALTER TABLE `tbl_video_category`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_ID` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `video_ID` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_video_category`
--
ALTER TABLE `tbl_video_category`
  MODIFY `ID` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
