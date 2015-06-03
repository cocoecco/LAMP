-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2015 at 07:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lamp_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE IF NOT EXISTS `Category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`category_id`, `category_name`) VALUES
(1, 'Housing'),
(2, 'Jobs'),
(3, 'For Sale'),
(4, 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE IF NOT EXISTS `Location` (
`location_id` int(11) NOT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `location_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`location_id`, `region_name`, `location_name`) VALUES
(1, 'USA', 'Los Angeles'),
(2, 'USA', 'Orange County'),
(3, 'USA', 'Portland'),
(4, 'USA', 'San Francisco'),
(5, 'USA', 'Seattle'),
(6, 'Australia', 'Sydney'),
(7, 'Australia', 'Cairns'),
(8, 'Australia', 'Melbourne'),
(9, 'Australia', 'Geelong'),
(10, 'Israel', 'Tel Aviv'),
(11, 'Israel', 'Hertzelia'),
(12, 'Israel', 'Beer Sheva'),
(13, 'Europe', 'Berlin'),
(14, 'Europe', 'Amsterdam'),
(15, 'Europe', 'Paris'),
(16, 'Europe', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE IF NOT EXISTS `Posts` (
`post_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `description` longtext,
  `email` varchar(50) DEFAULT NULL,
  `agreement` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`post_id`, `title`, `price`, `description`, `email`, `agreement`, `timestamp`, `image1`, `image2`, `image3`, `image4`, `subcategory_id`, `location_id`) VALUES
(1, ' Electric Mulching Lawn Mower', '32', 'Wow', 'email@email.com', 'ON', '2015-03-24 19:32:56', 'http://www.burkhartinsurance.com/wp-content/uploads/2011/12/home1.jpg', 'http://www.nahb.org/assets/images/11Membership/neighborhood.jpg', 'http://www3.featuredwebsite.com/users/47417/images/houseeee.jpg', 'http://media-cdn.tripadvisor.com/media/photo-s/01/8b/3b/23/luxury-home-stays.jpg', 4, 1),
(7, 'Looking for a roomie', '600', 'Room for share in a huge house downtown', 'a@b.com', 'YES', '2015-03-25 17:41:14', './uploads/26edf2ec19692b6d6b5673f76a93a03105133af1.jpg', './uploads/ca44fcf79c5c68e80a47bcdc7891fc9544b043f8.jpg', './uploads/9afdca4a27728e370bd64c246a325b89914c0418.jpg', './uploads/8d6917b2658f9c45cdc2d60a637629e5524c09b4.jpg', 1, 1),
(8, 'Great House For Rent', '1200', 'Super Great House!', 'a@b.com', 'YES', '2015-03-25 17:41:17', '', '', '', '', 1, 1),
(9, 'Master Bedroom with Fireplace', '999', 'Big space, lots of shops in the area, quiet location with lots of trees.', 'a@b.com', 'YES', '2015-03-25 17:41:20', './uploads/f5a014df8e793a9c5ae5ce0ad7a3a8fa5e74937b.jpg', '', '', '', 1, 1),
(10, 'Fully Furnished, Big Space', '1100', 'This house is for rent for the next two years, perfect for a small family, best schools in the area, lots of shops, close to the CalTrain', 'a@b.com', 'YES', '2015-03-25 17:41:23', './uploads/8cdd1e94336a49ab30753568adf6be3a0ce8cedb.jpg', '', '', '', 1, 1),
(11, 'ROOM IN 2BD/1BA BEAUTIFUL REMODELED APT. UCSF/9TH AVE', '1700', 'We are looking for a roommate to share the apartment we rent on 9th Avenue and Kirkham Street. It''s a beautiful remodeled apartment, 2BD/1BA. Carpet throughout and very spacious. Coin-operated laundry in the building. Very close to Bus lines 43, 6, 66 and N Muni. The common areas are furnished. The room for rent has a full-size bed, a night stand and large desk.\r\n\r\nWe ask mainly for two things from a roommate: CLEANLINESS and RESPECT. You have to be a VERY, VERY, VERY clean and organized person and be respectful. I am a 32-year old woman originally from Venezuela, who works at a university downtown, and my boyfriend is French, 27 years old, who works in IT in the East Bay. We would like to live with someone who is also busy and who we can get along well with, even have a friendship with. The best roommate experiences we have both had and how we have felt more comfortable with is when our roommates have become friends. It would be great if you are looking for the same.\r\n\r\nPlease e-mail with a description of yourself, where are you from, what you do, how old, etc. If we click we can set up an appointment so you can come look at the apartment. Move-in date: March 15th. No smokers, absolutely no drugs, and no pets, please.', 'a@b.com', 'YES', '2015-03-25 17:41:27', './uploads/8cdd1e94336a49ab30753568adf6be3a0ce8cedb.jpg', '', '', '', 2, 1),
(12, 'Cozy Just Remolded 1story 3bed', '1999', 'Peaceful and Cozy traditional one story 3bed/1bath home in Mountain view for rent. Just remodeled with new kitchen/ bath/ hardwood floor/Doors/Paint/New dishwasher/hoods. Simple, Nice and Neat, Move-in right away. Inside laundry. It''s the front unit of a Duplex but totally detached from the back. It has own yard, 2 covered car port and lots of street parking and storage space. Like to live in a single family and no disturbance from others. Safe and great neighbor. Live in city but feel like countryside. Great school district (Huff elementary API 958/Mt.View high API 861). The other side of the street is Symantec and Google Campus. Convenient commute to 237/ 101/85/Central. Easy to go Palo Alto, Sunnyvale or Santa Clara. According to neighbor, there are free Mountain view shuttle to downtown, Bart station, El camino etc. Great home to enjoy. Pets Ok. Lots of place to walk dogs.\r\n', 'a@b.com', 'YES', '2015-03-25 17:41:29', './uploads/2c60c35782ed8b1a5447c0377537db33e9f9a0d0.jpg', './uploads/8cdd1e94336a49ab30753568adf6be3a0ce8cedb.jpg', '', '', 2, 1),
(13, 'Spacious Luxury Living', '1823', 'At Vivere, you will appreciate the finest in Los Gatos living and enjoy an extensive list of convenient amenities We offer two bedroom townhomes and one and two bedroom apartment flats with spacious, open floor plans, large picture windows and gorgeous panoramic vistas, including courtyard, pool and mountain views. We are walking distance to vibrant downtown Los Gatos, where you will find an array of shops, dining and entertainment.Los Gatos offers top-rated public schools and numerous options for recreation, including the adjacent Los Gatos Creek Trail. We are convenient to Highways 9, 17, 85, 280 and 30 minutes from Santa Cruz beaches. Enjoy on-site amenities such as the state-of-the-art fitness center and outdoor entertainment lounge with kitchen, TV, fireplace and grilling stations. ', 'a@b.com', 'YES', '2015-03-25 17:41:32', './uploads/225b3ae8900f9b74ad0d5687ec03f6798457f749.jpg', './uploads/ef01b1a5d4ae52cb0e96b10e77e6c74dbadaa2c4.jpg', './uploads/8cdd1e94336a49ab30753568adf6be3a0ce8cedb.jpg', '', 2, 1),
(14, 'Wine Country Get Away Minutes from Downtown', '225', 'This fabulous Wine Country home consists of a 3/2 main house and adjacent ''wine room'' studio. Two bedrooms have queen beds while the third has a set of double size bunk beds. Two bathrooms, one with walk in shower. Central air and heat. The kitchen is fully equipped with everything you need to make a gourmet meal and your favorite, fresh ingredients are available from nearby gourmet food stores and the farmer''s market (May-November) The home has a great room with a wood burning fireplace, surround sound entertainment system, dining for 10 and French doors the lead to the expansive deck & hot tub.\r\nSituated on 2 +/- beautiful acres the property also includes a large lawn area and 2 vineyards planted to Chardonnay and Primitivo grapes. The gorgeous outdoor space has stunning views of the surrounding vineyards and Geyser Peak Mountain and is ideal for barbecuing and lounging with ample room for the kids to run and play while the adults relax.\r\nThe studio suite has a separate entry and patio, sleeps 4 with a king sized bed and a very comfortable queen size sofa bed, en suite bathroom and kitchenette.\r\nOur home in wine country offers peace and an escape from everyday life, but is close enough to town to embrace the pleasures. Just moments from the Plaza, you can enjoy the many tasting rooms, spas, shops, movies, live theater and outstanding dining options that Healdsburg has to offer. Centrally located we have easy access to hundreds of wineries in the Dry Creek Valley, Alexander Valley and Russian River appellations.\r\nSummer-time brings the opportunity to raft down the Russian River with transportation and rafts provided by one of the local rafting companies.\r\nThe Pacific Ocean and San Francisco are only an hour away', 'a@b.com', 'YES', '2015-03-25 17:41:35', './uploads/d17dddaf46ee6043f99ef24f59006a5c4ba4db72.jpg', '', '', '', 3, 1),
(15, 'Darling Oceanfront Beach Cottage', '1889', '$1898.00 weekly / 3br - YOUR OWN HOME 4 SUMMER IN SANTA CRUZ\r\n\r\nWe have already started to book for Summer 2015 and have booked 100% for the last six summers, so if you want an opportunity to stay at our wonderful beach home, please secure your stay as soon as possible.\r\n\r\nWeekly Rate $1898.00\r\nDamage Deposit (refundable) $500.00\r\nCleaning Fee $175.00\r\nCity of Santa Cruz Transient Tax Fee (11%) $209.00\r\n\r\n\r\nPLEASE, see our ad in VRBO and put your request to rent on the VRBO site. It has an updated calendar...........\r\nVRBO.com ad # 182009\r\nPlease use this VRBO link for bookings and additional information re: same. http://www.vrbo.com/182009', 'a@b.com', 'YES', '2015-03-25 17:41:37', './uploads/26edf2ec19692b6d6b5673f76a93a03105133af1.jpg', '', '', '', 3, 1),
(16, 'Great Specials in MARCH & APRIL-Rent Directly from owner', '192', 'FREE BOTTLE OF WINE IN ROOM!!\r\nFREE WIFI\r\n\r\nVino Bello resort/adjacent to Meritage resort- onsite sports bar with bowling alley, wine tasting cave and more!!\r\n\r\nStudios\r\nRate starts from $ 99 (mon-wed) **weekend nights higher rates**\r\n393 sq ft\r\n\r\nOne bedroom master suite condo over 800 s.f\r\nwith large jacuzzi bath, fireplace, fully equipped kitchen, in room washer/dryer\r\nRate starts from $ 139 (mon-wed) *weekend nights higher rates****\r\n\r\nPlease contact DRBENKING@YAHOO(DOT) COM', 'a@b.com', 'YES', '2015-03-25 17:41:39', './uploads/3d13a4a9bfa8487fa1edc657fd071254faa7a5a2.jpg', '', '', '', 3, 1),
(17, 'Hairdresser Wanted', '20', 'Looking for an experienced hairdresser for a full time job. apply now!', 'a@b.com', 'YES', '2015-03-25 18:27:29', './uploads/163781a0da06956508b5c8785b9bc6b1a483b80a.jpg', '', '', '', 4, 1),
(18, 'Dog Walker Wanted', '20', 'Looking for a responsible dog walked for a full time job for the biggest dog walking company in LA', 'a@b.com', 'YES', '2015-03-25 18:30:17', './uploads/26edf2ec19692b6d6b5673f76a93a03105133af1.jpg', './uploads/a43f48b9aa0a1138ddb9192e0a3e34f983c38d7b.jpg', '', '', 4, 1),
(19, 'Accountant Position - Part Time', '18', 'Looking for an accountant for a part time job, I have a small business and I need someone for about 3-4 hours a day, 4 days a week.', 'a@b.com', 'YES', '2015-03-25 18:34:36', '', '', '', '', 5, 1),
(20, 'Cleaning', '20', 'Cleaning position now available, apply online at mycleanhouse.com', 'a@b.com', 'YES', '2015-03-25 18:54:14', './uploads/ebfa3efb31e8d4a761a08ba7f36905f57a1e68cf.jpg', '', '', '', 5, 1),
(21, 'Kitchen help', '15', 'Looking for someone who knows how to cook well and can keep up with my kitchen orders.\r\napply at John''s Cafe on Mission St', 'a@b.com', 'YES', '2015-03-25 18:55:52', './uploads/ef01b1a5d4ae52cb0e96b10e77e6c74dbadaa2c4.jpg', '', '', '', 5, 1),
(22, 'Temp Assembler - Thick Film', '16', 'Temp Assembler - Thick Film- San Jose, CA 95134\r\nPay- $14 - $16 an hour\r\nHours- 2nd Shift Monday -- Friday from 2:45pm -- 11:15pm\r\nLength of assignment- 6 months (with the possibility of it being extended)\r\n\r\nThis position is part of the Thick Film Team supporting the Hybrid printing process in production.\r\n\r\nThis job requires access to technology, materials, software or hardware that is controlled by the export laws of the United States. Candidates are required to provide proof of either US citizenship, Permanent US residency or classification as a protected individual as defined in 8 USC 1324b(a)(3).\r\n\r\nRole and Responsibilities:\r\nSilk screen manufacturing, thick film printing.\r\nInventory materials\r\nContinuity testing and open/short testing\r\nMeasure and analyze resistors. Set-up AMI printer. Calibrate furnaces and dryers monthly\r\nMeasure thickness on laser profilometer; reflow, solder, degrease\r\nTemperature Coefficient of Resistance (TCR) testing test of incoming inks\r\nMust adhere to strict specification procedures and regulations\r\nQualifications and Education Requirement:\r\nHigh school graduate\r\nMinimum of two (2) years'' experience in Thick Film manufacturing\r\nAble to work with minimum supervision and be detailed oriented\r\nMust have good manual dexterity and be able to use small tools\r\nGood communication skills\r\nComputer literate\r\nDesired Skills/Competencies:\r\nExperience in a clean room manufacturing environment\r\nPlease email your resume for immediate consideration. ', 'a@b.com', 'YES', '2015-03-25 18:58:52', './uploads/2c60c35782ed8b1a5447c0377537db33e9f9a0d0.jpg', '', '', '', 6, 1),
(23, 'Payroll Tax Analyst - Temp', '30', 'We are a leading staffing service in search of temp Payroll Tax Analyst for large international firm in SF.Duties include ensuring compliance with FLSA, federal, state and local payroll tax rules for domestic, expat and seconded employees. To qualify, candidates MUST have 6+ years payroll experience from large firm including multi-state and multi-national environment; expertise in payroll tax regulations, federal, state and global mobility policies; knowledge of tax fillings and advanced Excel skills. Job is Mon-Fri, 8am to 5pm for 2 months +. We also appreciate your referrals! ', 'a@b.com', 'YES', '2015-03-25 18:59:54', '', '', '', '', 6, 1),
(24, '**$15-$15.50/hr Retail Temp Event Specialists**', '15', 'This is for a TEMPORARY SPECIAL EVENT! \r\nSpecial Events Specialist - Temporary\r\n\r\nExperienced Security Specialists for luxury retail, providing brand-positive image for Event.\r\n\r\n \r\n\r\nGeneral Statement of Job\r\n\r\nThe purpose of this position is to patrol an assigned zone by foot, enforce client policy and regulations, and investigate all facility related indents. Ensure that the client, its associates, and facility personnel are provided with a safe and professional working environment. The Security Specialist reports to the Security Supervisor.', 'a@b.com', 'YES', '2015-03-25 19:00:58', '', '', '', '', 6, 1),
(25, '2005 Infiniti G35 Sedan (Red) - $11250', '11250', 'A very clean and well maintained sporty red car. No dents at all. You really have to see it to believe it. Always parked in garage (office and home). Always hand washed and waxed.\r\nServiced always at the dealers (Infiniti of Marin). Have all documents and receipts.\r\nâ€¢ Asking price: $11250\r\nHas more options than what Kelly Blue Book''s offers to pick and choose from.\r\n(Dealers are selling with similar set of options for ~14K)\r\n\r\nâ€¢ Make: Infiniti\r\nâ€¢ Model: G35\r\nâ€¢ Model Year: 2005\r\nâ€¢ Exterior Color: RED\r\nâ€¢ Interior Color: BLACK Leather\r\nâ€¢ Mileage: ~88K\r\nâ€¢ Vehicle Type: Sedan (Clean title / excellent condition / smog certified )\r\nâ€¢ Package: Premium package\r\n- Premium bose 6 disc CD changer\r\n- Rear spoiler\r\n- Memorized adjustment with two settings on steering wheel position with four driver''s seat positions\r\n- Reclining rear seats\r\n- Fullsize alloy rim internal spare wheel\r\n- Air conditioning with rear outlet\r\n- Garage door opener on the rear view mirror\r\nâ€¢ Transmission: Automatic (Techtronic shifting)\r\nâ€¢ Wheels: Alloy with Wheel locks\r\nâ€¢ Others:\r\n- Power mirror adjustment\r\n- power remote trunk\r\n- cargo net', 'a@b.com', 'YES', '2015-03-25 19:03:57', './uploads/839a694744298d3664775a4f7cc9312884ae3a54.jpg', '', '', '', 7, 1),
(26, '2003 BMW 325 I - $5300', '5300', 'Clean Tittle\r\n\r\nAlready Smog\r\n\r\nSports Package\r\n\r\nLeather\r\n\r\nSunroof\r\n\r\nHeated Seats\r\n\r\nAlloy Wheels\r\n\r\nRuns Great Only 133,000 Miles\r\n\r\nDont Wait Call Today (916) 872-502 fOUr ', 'a@b.com', 'YES', '2015-03-25 19:05:19', './uploads/d5b9e18e56442ec9fc7ef6c7edbe51c711985f2d.jpg', '', '', '', 7, 1),
(27, '1994 thunderbird $1300 obo - $1300', '1300', 'I''m selling a 1994 ford Thunderbird Clean on the inside and pretty good on the outside. The car run good the only then is the registration is two years back so the registration is $313 I''m selling the car for 1300 or best offer ', 'a@b.com', 'YES', '2015-03-25 19:06:38', './uploads/9e8d4e5f5e80c36b392c8a80688e32f71b9a1598.jpg', '', '', '', 7, 1),
(28, 'Window Air Conditioner', '85', 'Like New Haier Window Air Conditioner ~ barely used ~ Get it now! ...\r\nahead of the sweltering, summer ~HEAT~\r\n\r\n5200 BTU ... High/Medium/Low AC & Fan Settings\r\n\r\n18 1/2" wide x 12" high x 14 1/2" deep\r\n\r\nAsking $85\r\n', 'a@b.com', 'YES', '2015-03-25 19:12:19', './uploads/1ba849920b1dc56d276a31e0f992b992fe45e074.jpg', '', '', '', 8, 1),
(29, 'Gas Dryer ', '375', 'Whirlpool Duet Gas Dryer is in excellent working conditions, nice shape and clean.\r\n\r\nIf iterested please call me for more information at\r\n((925) 421-39-66\r\n(925) 565-93-39 ', 'a@b.com', 'YES', '2015-03-25 19:13:30', './uploads/52a2b0109ccfc866a383ec9ba553f836af3378e9.jpg', '', '', '', 8, 1),
(30, '45qt portable mini fridge/freezer for ca', '395', 'Plan ahead for your spring road trip / new business!\r\n\r\nWorking mini fridge / freezer available. Use for your own ice cream business or for auto / rv camping / office use. Pay no tax/shipping. Used for less than one year - plenty of life left!!\r\n\r\nCOST COMPARISON\r\nHome Depot: $431.10 + 38.80 tax = $469.90.\r\nCraigslist: $395. No tax, No shipping, No wait, verified very good condition. Save almost a hundred bucks and feel great!\r\n\r\nUse as fridge OR freezer. Price is firm, getting lots of calls/emails.\r\n\r\n115v AC or 12/24V DC.\r\n.75 amps or 4.5/2.5A\r\n\r\nDims: 23.4 x 16.5 x 20.7.\r\nCapacity: 1.41 cu ft\r\nWhynter model fm-45g\r\n\r\nIf you see this ad, it''s still available. It works. DC and AC power supply cables included.', 'a@b.com', 'YES', '2015-03-25 19:14:48', './uploads/8b6f83d59712e3f12c5195c75f8eb17482bf3720.jpg', '', '', '', 8, 1),
(31, 'Simplehuman Stainless Steel Garbage Can', '80', '** Price Reduced **\r\n\r\nSelling my Simplehuman Stainless Steel Garbage Can.\r\n\r\nI moved into a house with a small kitchen and don''t have the room for this can.\r\n\r\nI love this thing!! Haha...conceals your garbage, has a slow closing lid, and is big enough to where u don''t have to keep taking it out.\r\n\r\nNever smell your garbage again with this can!\r\n\r\nSuper High Quality!! Like New Condition, no dents or anything!!\r\n\r\nSimplehuman is the brand you want...trust. Not like Walmart brand ones that are similar.\r\n\r\nOriginally this cost me $145 on Amazon.com. Asking $80\r\n\r\nHere is a link to Amazon.com for comparitive pricing.\r\nhttp://www.amazon.com/simplehuman-Rectangular-Trash-Stainless-Plastic/dp/B0016L679A/ref=sr_1_7?s=home-garden&ie=UTF8&qid=1426173551&sr=1-7&keywords=simplehuman\r\n\r\nGreat Deal and will last for years!!\r\n\r\nMeasurements:\r\n25.5" by 10"', 'a@b.com', 'YES', '2015-03-25 19:16:39', './uploads/ee57b720524e4ec58609639605f714f5dd71ac13.jpg', '', '', '', 9, 1),
(32, 'Delft Lamp ', '125', 'Beautiful Delft Lamp with timeless windmill design and brass accents.\r\n29 inches high.\r\n7 inches wide at base.\r\n12 inch x 14 inch lampshade', 'a@b.com', 'YES', '2015-03-25 19:17:39', './uploads/4e335837c31d83a38091f0e92c8f98738e6da1ee.jpg', '', '', '', 9, 1),
(33, 'Mr. Coffee 2-n-1 Electric French Press', '40', 'brand new, never used, in original box.\r\nMr. Coffee BVMC-FPK33 2-n-1 Electric French Press and Hot Water Kettle.\r\n1-Liter Capacity.\r\n360-degree cordless base; Kettle can be placed on base from any angle.\r\nBoil dry protection - kettle shuts off automatically when water is boiled.\r\nOver heat protection.\r\nElectric French Press and Hot water kettle all in one. ', 'a@b.com', 'YES', '2015-03-25 19:18:54', './uploads/9fd2a26ca90c9bad6f44762963bac5fe147e9cd9.jpg', '', '', '', 9, 1),
(34, 'Selling My Car', '1000', 'Great car, very good condition.', 'a@b.com', 'YES', '2015-03-25 23:23:44', './uploads/ee57b720524e4ec58609639605f714f5dd71ac13.jpg', '', '', '', 7, 6),
(35, 'Room available', '800', 'Big room in a nice house downtown, now available.', 'a@b.com', 'YES', '2015-03-26 17:01:37', './uploads/2c60c35782ed8b1a5447c0377537db33e9f9a0d0.jpg', '', '', '', 1, 2),
(36, 'Looking for a roomie', '900', 'Looking for a roomate for our lovely house, 2 blocks from main street', 'a@b.com', 'YES', '2015-03-26 17:02:45', '', '', '', '', 1, 3),
(37, 'Roomate Wanted', '1200', 'Large room in a big house close to Market St', 'a@b.com', 'YES', '2015-03-26 17:04:35', '', '', '', '', 1, 4),
(38, 'Looking for a room?', '499', 'Cheap housing in the downtown, lots of coffee shops!', 'a@b.com', 'YES', '2015-03-26 17:09:37', '', '', '', '', 1, 5),
(39, 'Room in sunny sydney', '499', 'Great Location! Great Room! Available Now!!', 'a@b.com', 'YES', '2015-03-26 17:24:52', '', '', '', '', 1, 6),
(40, 'Cheap Housing', '300', 'Cheap place, small room, shared bathroom.', 'a@b.com', 'YES', '2015-03-26 17:25:34', '', '', '', '', 1, 7),
(41, 'Tiny Room!', '250', 'Very Very Small Room, no windows...', 'a@b.com', 'YES', '2015-03-26 17:28:09', '', '', '', '', 1, 8),
(42, 'Room in the Capital', '399', 'Great Area in the Capital of OZ Land!', 'a@b.com', 'YES', '2015-03-26 17:28:47', '', '', '', '', 1, 9),
(43, 'Sunny Side Up!', '999', 'This is a big room in the heart of tel aviv, get it now while its hot!', 'a@b.com', 'YES', '2015-03-26 17:29:34', '', '', '', '', 1, 10),
(44, 'Green Room', '800', 'Clean area, good schools, close to the center.', 'a@b.com', 'YES', '2015-03-26 17:30:15', '', '', '', '', 1, 11),
(45, 'Looking for a huge space?', '700', 'Big house in the old city, safe and gated area.', 'a@b.com', 'YES', '2015-03-26 17:30:59', '', '', '', '', 1, 12),
(46, 'Close to bars and coffee shops', '300', 'Large Quality sober living home. We offer a safe environment for individuals looking for a home to help you in your recovery. Whether you are out of a treatment center or have been sober for years and need a sober living home to help refresh your sobriety we have the home for you. Supportive group of people sharing a home together while striving for a common goal.\r\n\r\nWe offer TV, cable, internet. Free Laundry on site. All utilities included, Large kitchen to cook your own meals. Comfortable rooms with television & wifi.', 'a@b.com', 'YES', '2015-03-26 17:31:51', '', '', '', '', 1, 13),
(47, 'Great Location!', '400', 'Large Quality sober living home. We offer a safe environment for individuals looking for a home to help you in your recovery. Whether you are out of a treatment center or have been sober for years and need a sober living home to help refresh your sobriety we have the home for you. Supportive group of people sharing a home together while striving for a common goal.\r\n\r\nWe offer TV, cable, internet. Free Laundry on site. All utilities included, Large kitchen to cook your own meals. Comfortable rooms with television & wifi.', 'a@b.com', 'YES', '2015-03-26 17:32:18', '', '', '', '', 1, 14),
(48, 'Master Bedroom with Fireplace', '999', 'Large Quality sober living home. We offer a safe environment for individuals looking for a home to help you in your recovery. Whether you are out of a treatment center or have been sober for years and need a sober living home to help refresh your sobriety we have the home for you. Supportive group of people sharing a home together while striving for a common goal.\r\n\r\nWe offer TV, cable, internet. Free Laundry on site. All utilities included, Large kitchen to cook your own meals. Comfortable rooms with television & wifi.', 'a@b.com', 'YES', '2015-03-26 17:32:36', '', '', '', '', 1, 15),
(49, 'Cool Space', '545', 'Large Quality sober living home. We offer a safe environment for individuals looking for a home to help you in your recovery. Whether you are out of a treatment center or have been sober for years and need a sober living home to help refresh your sobriety we have the home for you. Supportive group of people sharing a home together while striving for a common goal.\r\n\r\nWe offer TV, cable, internet. Free Laundry on site. All utilities included, Large kitchen to cook your own meals. Comfortable rooms with television & wifi.', 'a@b.com', 'YES', '2015-03-26 17:33:03', '', '', '', '', 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `Region`
--

CREATE TABLE IF NOT EXISTS `Region` (
`region_id` int(11) NOT NULL,
  `region_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Region`
--

INSERT INTO `Region` (`region_id`, `region_name`) VALUES
(6, 'USA'),
(7, 'Australia'),
(8, 'Israel'),
(9, 'Europe');

-- --------------------------------------------------------

--
-- Table structure for table `SubCategory`
--

CREATE TABLE IF NOT EXISTS `SubCategory` (
`subcategory_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SubCategory`
--

INSERT INTO `SubCategory` (`subcategory_id`, `category_id`, `subcategory_name`) VALUES
(1, 1, 'Rooms and Shared'),
(2, 1, 'For Rent'),
(3, 1, 'Bed and Breakfast'),
(4, 2, 'Full Time'),
(5, 2, 'Part Time'),
(6, 2, 'Temp Jobs'),
(7, 3, 'Cars'),
(8, 3, 'Electronics'),
(9, 3, 'Household'),
(10, 4, 'Automobile'),
(11, 4, 'Domestic'),
(12, 4, 'Legal');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
`id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `Username`, `Password`) VALUES
(1, 'localhost@gmail.com', 'password'),
(2, 'localhost@gmail.com', 'password'),
(3, 'localhost@gmail.com', 'password'),
(4, 'localhost@gmail.com', 'password'),
(5, 'localhost@gmail.com', 'password'),
(6, 'localhost@gmail.com', 'password'),
(7, 'localhost@gmail.com', 'password'),
(8, 'localhost@gmail.com', 'password'),
(9, 'localhost@gmail.com', 'password'),
(10, 'localhost@gmail.com', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
 ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
 ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
 ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `SubCategory`
--
ALTER TABLE `SubCategory`
 ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `Region`
--
ALTER TABLE `Region`
MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `SubCategory`
--
ALTER TABLE `SubCategory`
MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
