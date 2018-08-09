/* CREATE DATABASE db_library */
/*GO 
CREATE  */
USE db_library

GO

CREATE TABLE tbl_branch (
	branch_id INT PRIMARY KEY NOT NULL, 
	branch_name VARCHAR(50) NOT NULL, 
	branch_address VARCHAR(50) NOT NULL
	);

GO

INSERT INTO tbl_branch 
	(branch_id, branch_name, branch_address)
	VALUES
	(1,'Sharpstown','42 Ferel Road, Meghnville, MP 14-4240'),
	(2,'Central','817 Susan Row Suite 219, Drakeville, KS 13471'),
	(3,'Eastern','975 Jonathan Exp Apt. 752, Staciebury, FM 04986'),
	(4,'Western','1612 Hogan Village Apt. 058, Jessemouth, GA 72326'),
	(5,'Northern','USNV Aguirre, FPO AP 13303-6496'),
	(6,'Southern','120 Bailey Ways, Patterson, ME 755-3612')
	;	

GO

SELECT * FROM tbl_branch;

CREATE TABLE tbl_publisher (
	publisher_name VARCHAR(50) PRIMARY KEY NOT NULL,
	publisher_address VARCHAR (500) NOT NULL, 
	publisher_phone VARCHAR (50) NOT NULL
	);

GO

/* If table needs to be deleted */
/* DROP TABLE $tablename */

INSERT INTO tbl_publisher 
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Random House', '3965 Jessica Islands, Port Ashleyfort, AS 42388-2908','476-489-9689'),
	('Penguin', '267 Levi Mountains, Port Stephanieton, SC 78718-4464','302-859-1095'),
	('Simon and Schuster', '492 Freeman River Apt. 816, Vargashaven, ID 64004','287-305-7428'),
	('Hachette', '2874 Henry Groves, Wayneville, OR 47764-1749','192-766-3734'),
	('Macmillan', '70732 Christopher Fort, East Jacquelinebury, WA 75665','525-666-6701')
	;

GO

SELECT * FROM tbl_publisher;

GO 

CREATE TABLE tbl_books (
	book_id INT PRIMARY KEY NOT NULL,
	book_name VARCHAR (500) NOT NULL, 
	book_publisher VARCHAR (50) NOT NULL CONSTRAINT fk_book_publisher FOREIGN KEY REFERENCES tbl_publisher(publisher_name) ON UPDATE CASCADE ON DELETE CASCADE 
	);

GO

INSERT INTO tbl_books
	(book_id, book_name, book_publisher)
	VALUES
	(1,'flippant shame','Hachette'),
	(2,'trite year','Penguin'),
	(3,'pumped history','Penguin'),
	(4,'infamous cap','Penguin'),
	(5,'glamorous brake','Penguin'),
	(6,'jobless route','Macmillan'),
	(7,'finicky purpose','Simon and Schuster'),
	(8,'observant hand','Simon and Schuster'),
	(9,'good pets','Simon and Schuster'),
	(10,'funny feeling','Simon and Schuster'),
	(11,'known error','Simon and Schuster'),
	(12,'ready pollution','Hachette'),
	(13,'excited structure','Random House'),
	(14,'nebulous tub','Random House'),
	(15,'mellow minute','Hachette'),
	(16,'deep cart','Random House'),
	(17,'faithful doctor','Simon and Schuster'),
	(18,'faulty scale','Simon and Schuster'),
	(19,'omniscient branch','Hachette'),
	(20,'sophisticated queen','Simon and Schuster'),
	(21,'equal cabbage','Macmillan'),
	(22,'bad silk','Random House'),
	(23,'vacuous stick','Random House'),
	(24,'short oatmeal','Penguin'),
	(25,'sore judge','Penguin'),
	(26,'tiny building','Random House'),
	(27,'possessive sock','Hachette'),
	(28,'forgetful yak','Random House'),
	(29,'tame stamp','Hachette'),
	(30,'jealous sheet','Hachette'),
	(31,'nostalgic spy','Random House'),
	(32,'extra-small children','Simon and Schuster'),
	(33,'habitual voyage','Hachette'),
	(34,'aboard bird','Macmillan'),
	(35,'best pig','Simon and Schuster'),
	(36,'redundant fuel','Hachette'),
	(37,'eight nose','Hachette'),
	(38,'chief step','Random House'),
	(39,'descriptive hammer','Penguin'),
	(40,'dreary chickens','Hachette'),
	(41,'ten tree','Hachette'),
	(42,'outrageous cover','Macmillan'),
	(43,'breakable suggestion','Penguin'),
	(44,'direful face','Hachette'),
	(45,'busy caption','Penguin'),
	(46,'spiteful ducks','Hachette'),
	(47,'hot force','Penguin'),
	(48,'parallel wren','Simon and Schuster'),
	(49,'ablaze shake','Simon and Schuster'),
	(50,'woebegone lumber','Hachette'),
	(51,'fluffy knowledge','Penguin'),
	(52,'round creator','Macmillan'),
	(53,'defeated downtown','Hachette'),
	(54,'delirious market','Random House'),
	(55,'superficial swing','Simon and Schuster'),
	(56,'white reason','Macmillan'),
	(57,'sour note','Penguin'),
	(58,'orange plastic','Simon and Schuster'),
	(59,'inconclusive leather','Random House'),
	(60,'ordinary cows','Hachette'),
	(61,'sharp mist','Hachette'),
	(62,'industrious border','Random House'),
	(63,'cloudy direction','Random House'),
	(64,'teeny-tiny lunch','Macmillan'),
	(65,'zippy class','Macmillan'),
	(66,'dependent boat','Simon and Schuster'),
	(67,'dashing relation','Penguin'),
	(68,'pastoral tiger','Macmillan'),
	(69,'neat cow','Random House'),
	(70,'heavenly frogs','Hachette'),
	(71,'lame crib','Macmillan'),
	(72,'worthless zephyr','Random House'),
	(73,'graceful anger','Macmillan'),
	(74,'watery friend','Hachette'),
	(75,'separate selection','Macmillan'),
	(76,'tense thumb','Random House'),
	(77,'incandescent foot','Random House'),
	(78,'wasteful fish','Simon and Schuster'),
	(79,'fascinated scene','Random House'),
	(80,'unaccountable bite','Random House'),
	(81,'disgusted fairies','Hachette'),
	(82,'idiotic shade','Random House'),
	(83,'solid plough','Hachette'),
	(84,'swanky button','Penguin'),
	(85,'abrupt harmony','Random House'),
	(86,'typical teaching','Random House'),
	(87,'brief stitch','Hachette'),
	(88,'false price','Simon and Schuster'),
	(89,'exotic eyes','Hachette'),
	(90,'jittery carpenter','Penguin'),
	(91,'rainy screw','Macmillan'),
	(92,'gifted cough','Penguin'),
	(93,'gentle things','Penguin'),
	(94,'royal toothpaste','Macmillan'),
	(95,'hard cook','Simon and Schuster'),
	(96,'pricey use','Random House'),
	(97,'bright celery','Hachette'),
	(98,'jazzy clam','Random House'),
	(99,'cruel duck','Random House'),
	(100,'quick geese','Hachette'),
	(101, 'the shining', 'Hachette'),
	(102, 'pet cemetery', 'Hachette'),
	(103, 'the lost tribe', 'Penguin')
	;

GO

SELECT * FROM tbl_books;

GO 

CREATE TABLE tbl_borrowers (
	borrower_id INT PRIMARY KEY NOT NULL IDENTITY(5000,1),
	borrower_name VARCHAR (50) NOT NULL, 
	borrower_address VARCHAR (500) NOT NULL,
	borrower_phone VARCHAR(50) NOT NULL
	);

GO

INSERT INTO tbl_borrowers
	(borrower_name, borrower_address, borrower_phone)
	VALUES
	('Joshua Rivera', '247 Manning Terrace Apt. 135, Palmerton, IN 34851', '347-383-5059'),
	('Daniel Munoz', '8191 Sharp Lakes, West Ashley, TN 42617-1288', '934-659-2107'),
	('Wendy Schmidt', '71219 Vincent River Apt. 658, Lisaview, MA 11302-0793', '387-148-9558'),
	('Paul Hoffman MD', '2339 Jose Plains Suite 620, Hawkinston, IA 01075', '891-374-1063'),
	('Randy Wilson', '6447 Robert Knolls Suite 701, Camachomouth, KY 82815', '146-240-4348'),
	('Katrina Marks', '08173 Brady Row, Pollardfort, ME 19729', '579-305-5781'),
	('Daniel Jordan', '963 Barker Corner, Rogermouth, MT 18236-9868', '221-869-3761'),
	('Alice Pierce', '859 Hart Circles, Port Williammouth, NE 03549', '130-430-6809'),
	('Dominique Fields', '76937 Sims Green, Lamchester, MD 10006', '787-915-6004'),
	('Thomas Hendrix', 'Unit 4608 Box 5746, DPO AE 12461', '654-123-1732'),
	('Scott Davis', '157 Payne Mountain, Bankstown, NM 52287-6848', '854-273-1656'),
	('Dean Alexander', '89026 Omar Shore, Dawnside, NY 24478', '798-108-1281'),
	('Craig Shaw', '276 Cole Branch, Port John, KS 37104', '440-832-6249'),
	('Melanie Olson', '5045 Beth Track, Port Jeff, KS 21521', '768-629-8429'),
	('Jamie Wright', '670 Jones Rest Suite 695, North Brandonberg, FL 12221-9457', '866-542-3829'),
	('Jamie Graham', '69690 Brady Road, North Carolside, GU 44948-2987', '517-735-3748'),
	('Mr. Cameron Barrett', '916 Colleen Bypass Apt. 250, South James, WV 17811-4093', '563-752-9856'),
	('Julie Jenkins', 'Unit 9133 Box 4779, DPO AE 64494', '350-996-9739'),
	('John Long', 'USS Cohen, FPO AP 50510-0101', '299-501-1240'),
	('Brenda Larson', '414 Medina Ports, North Katrina, TX 83384-5907', '314-121-6293'),
	('Jeremy Trevino', '321 Smith Cliffs, Nicholsberg, VA 48782', '367-277-1846'),
	('Dana Davis', '86208 Kelly Light Suite 520, Port Cathy, NM 83141-5480', '995-549-4629'),
	('Jennifer Tucker', '8628 Moore Trace, North Steven, MA 28472', '459-124-5857'),
	('Shawn Miles', '613 Hannah Trail Apt. 236, Loritown, MH 87014-4939', '551-475-5959'),
	('Brandi Holmes', '29166 Jenkins Summit Apt. 954, New Tyler, OH 52286', '703-370-1334'),
	('Peter Lopez', '67950 Mccann Extension Apt. 524, Lake Julieton, OR 97721-6000', '300-509-7868'),
	('Bradley Graves', '6928 Jill Curve Apt. 171, Tuckershire, FM 90068-2097', '284-831-4369'),
	('Kelsey Obrien', '6399 Orozco Route, Andersonmouth, CO 48213-9202', '242-458-1627'),
	('Michael Murillo', 'PSC 7904, Box 0159, APO AP 24205', '650-260-8341'),
	('Justin Downs', 'PSC 5136, Box 2751, APO AP 15556-9280', '655-889-9159'),
	('Gabriela Jones', '4461 Cooper Islands, North Hannah, FM 06660', '312-657-3382'),
	('Laura Scott', '0486 Bush Spur, Port Crystalborough, MS 81498', '933-692-5072'),
	('Nicole Taylor', '721 Nicole Brooks Suite 101, Lake Anthony, PA 60402', '490-282-9816'),
	('Joseph Love', '57252 Jordan Extensions, Adamborough, MO 56739-0622', '242-318-9380'),
	('Daniel Newman', '6635 Danielle Dam, Port James, ND 40929', '866-829-8456'),
	('Michael Shaw', '5917 Hannah Brooks, Fergusonberg, SC 69726', '896-148-8392'),
	('Chase Clark', 'Unit 7859 Box 1288, DPO AE 43013', '955-776-2617'),
	('Brandon Williams', '30411 Tristan Island Apt. 920, South Nancy, MA 47964-1521', '155-275-4729'),
	('Mary Mccoy', '2239 Cross Pass, Dennishaven, MT 70521-0419', '564-489-6802'),
	('Jacob Vaughan', '526 Margaret Dale Suite 022, Ginaberg, VT 23530-2110', '334-153-6993'),
	('Judy Scott', '18938 Kayla Rest, Jasminemouth, AR 33811', '185-774-9648'),
	('Christopher Blankenship', '6747 Meghan Mews Suite 542, Adamtown, AL 17927', '176-194-8288'),
	('Charles Rivera', 'USNS Wright, FPO AP 43515-9139', '467-791-8407'),
	('Robert King', 'PSC 6603, Box 1440, APO AP 01346-6709', '266-915-9347'),
	('Amanda Vaughn', '6539 Jonathon Glens Apt. 553, Davidsonport, NE 98713', '708-133-8432'),
	('Jamie Bailey', '04050 Vang Track, Amandaside, GA 74164-6636', '128-920-6126'),
	('Kyle Roberts', '3845 Washington Underpass, East Nathan, GA 03683-6918', '325-635-8942'),
	('Eric Allen', '28836 Davis Ways Apt. 361, East Janice, OH 69173', '411-730-1450'),
	('Scott Smith', '17423 Kirk Spurs, West Feliciaville, ME 60733', '770-990-8825'),
	('Heidi Rice', '930 Karen Well Suite 078, Lake Brandonmouth, PA 09089', '231-475-9612'),
	('April Salinas', '920 Steven Orchard Apt. 989, Harperview, NE 28519', '246-798-1124'),
	('Matthew Brown', '205 Victoria Radial Apt. 092, East Kristinabury, TX 09157-4235', '287-227-5933'),
	('Jessica Wilkerson', '3498 Hoffman Road, Port Lindastad, AS 89056-5315', '573-432-7582'),
	('Gregory Carter', 'USNV Jones, FPO AP 16044-8422', '558-446-1946'),
	('Christine Bright', '0207 Heidi Extension, Port Danny, NH 58003', '866-781-5422'),
	('Wanda Stewart', '224 Soto Harbors Suite 837, Cunninghamchester, PW 87169', '383-646-3035'),
	('Kimberly Snyder', '9626 Daniel Valley Apt. 404, Coxshire, GU 38706-2147', '223-901-1137'),
	('Julia Taylor', '03790 Mitchell Avenue, Roseport, ND 69455', '740-477-1074'),
	('Charles Hayes', 'PSC 8034, Box 9247, APO AP 64741-7206', '668-197-2660'),
	('Katherine Young', '9717 April Plain Apt. 747, Ianville, CO 82240-1918', '406-339-5447'),
	('Steven Thompson', '047 Omar Courts Suite 680, Lake Jessicaland, MT 40451', '617-302-2839'),
	('Nicholas Sims', '1299 House Points, Judithburgh, WA 73269-5032', '501-992-9607'),
	('James Price', '29428 Malik Summit, Kellyport, NE 32999', '941-771-5955'),
	('Christina West', '69197 John Pass, Raymondburgh, TN 52354', '503-536-2616'),
	('Ian Burns', '125 Tara Vista Suite 682, Virginiabury, MS 76575-4122', '843-365-3249'),
	('Kevin Mullins', '292 Mays Road Apt. 403, South Joshua, TX 61139', '211-206-4640'),
	('Mitchell Martinez', 'USNS Wade, FPO AP 37445', '652-781-1648'),
	('Hunter Martinez', '291 Gonzalez Circle Apt. 876, North Annetteland, LA 41187-4164', '638-506-5976'),
	('Jose Russell', '189 Sexton Branch, Mcbridestad, WV 80523-0957', '389-330-2694'),
	('Helen Kim', '452 Catherine Union Suite 603, Dennisburgh, OK 07604', '231-896-6348'),
	('Robert Lyons', '3221 Frye Village Suite 660, North Dustintown, NJ 62838-9364', '579-846-8499'),
	('Timothy Everett', '069 Mcbride Squares Suite 697, North Jennifer, NM 67517-3076', '521-937-2954'),
	('Dale Smith', '147 Benton Manors Suite 728, Patrickfort, NV 25870', '541-135-2265'),
	('Carolyn Patton', '217 Robert Court Apt. 785, Andreamouth, AS 38201-5580', '786-147-7464'),
	('Emily Hensley', '6901 Nunez Port, Angelaland, MS 91392-8853', '725-511-5645'),
	('Zachary Park', '8146 Michelle Street, East Rachelview, MS 94446-6526', '485-498-4652'),
	('Dennis Randolph', '60296 Erin Islands, East Peter, VA 85046-3433', '876-696-3774'),
	('Nicholas Roach', '56374 Angela Light Apt. 761, New Kelly, CA 57460-2090', '543-939-4203'),
	('John Carpenter', '1205 Jennifer Points, East Joseph, CT 00182', '179-367-9687'),
	('Edwin Ballard', '69538 Carter Station Apt. 701, West Tyler, MD 55484-6292', '463-576-4942'),
	('Amanda Ford', 'PSC 5605, Box 1993, APO AP 39404-4994', '405-804-9007'),
	('Stephanie Adams', 'PSC 7477, Box 7568, APO AA 08251', '859-801-4624'),
	('Michelle Oneill', '31928 Anthony Bridge, Lake Ericaside, NC 36935', '936-176-1368'),
	('Alexander Reid', '4913 Jeffrey Lodge Apt. 072, North Kathleenberg, RI 09383', '782-434-4304'),
	('Melissa King', '23132 Santos Alley Apt. 366, Madisonburgh, MH 40492', '196-869-2854'),
	('Gilbert Espinoza', '69994 Bradley Causeway Apt. 904, Chandlerberg, SC 75612', '179-572-3070'),
	('Stephanie Hopkins', '011 Amy Route Apt. 431, Shannonside, NY 62665', '341-649-5157'),
	('Laura Rose', '45436 Ayers Ford Suite 180, Amyview, MP 34512-6771', '515-111-6831'),
	('Carmen Harris', '9256 Elizabeth Lights, Danielstad, KS 93288', '614-646-4540'),
	('Michael Taylor', '025 Webb Lake, Lake Samanthaview, MD 60139-3335', '807-133-5889'),
	('Victoria Johnson', '99959 Anne Street Suite 533, Martinshire, IN 02733', '839-329-4747'),
	('Lori Mason', '919 Rivera Extensions Suite 740, Reedtown, NJ 30722', '874-363-5048'),
	('Aaron Mccarthy', '744 Melissa Spur, North Daniel, MN 40000', '384-429-1157'),
	('Roger Martin', '059 Nunez Branch, West Kimberly, UT 46065-4752', '589-323-4501'),
	('Kelly Velazquez', 'Unit 4737 Box 3000, DPO AE 99485', '548-855-6451'),
	('Michael Knight', '6961 Cynthia River Apt. 250, Arellanoside, WA 98829-3896', '320-320-9407'),
	('Meagan Rivera', '78978 Boyd Courts Suite 702, West Ashleyfurt, KS 17843', '385-461-2246'),
	('Douglas Brown', '341 Schmidt Stravenue, Hancockmouth, GA 63908', '109-476-1266'),
	('Benjamin Gallegos', '06698 Brown Square, Rossfurt, IN 19392', '373-857-2946'),
	('Jennifer Nolan', '9565 Victoria Brook, New Jimmyfort, MO 58634-4372', '927-491-2649')
	;

CREATE TABLE tbl_copies (
	book_id INT NOT NULL CONSTRAINT fk_book_id FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE, 
	branch_id INT NOT NULL CONSTRAINT fk_branch_id FOREIGN KEY REFERENCES tbl_branch(branch_id) ON UPDATE CASCADE ON DELETE CASCADE,
	copies INT NOT NULL 
	);

INSERT INTO tbl_copies 
	(book_id, branch_id, copies)
	VALUES
	(1,4,3),
	(2,1,5),
	(3,2,2),
	(4,5,10),
	(5,6,3),
	(6,3,8),
	(7,3,7),
	(8,6,2),
	(9,3,10),
	(10,1,3),
	(11,1,8),
	(12,4,6),
	(13,1,3),
	(14,6,5),
	(15,6,7),
	(16,6,6),
	(17,1,5),
	(18,6,4),
	(19,2,6),
	(20,5,6),
	(21,1,5),
	(22,4,2),
	(23,5,5),
	(24,6,4),
	(25,1,8),
	(26,4,6),
	(27,3,4),
	(28,6,7),
	(29,4,7),
	(30,3,8),
	(31,4,4),
	(32,6,5),
	(33,5,6),
	(34,6,8),
	(35,6,3),
	(36,6,3),
	(37,4,8),
	(38,3,8),
	(39,2,3),
	(40,4,9),
	(41,5,5),
	(42,2,9),
	(43,3,2),
	(44,1,6),
	(45,5,10),
	(46,3,9),
	(47,1,10),
	(48,3,7),
	(49,3,3),
	(50,4,2),
	(51,5,3),
	(52,1,9),
	(53,3,2),
	(54,3,2),
	(55,5,9),
	(56,5,2),
	(57,2,5),
	(58,5,6),
	(59,5,4),
	(60,3,6),
	(61,2,9),
	(62,1,4),
	(63,5,7),
	(64,6,6),
	(65,6,2),
	(66,4,3),
	(67,2,8),
	(68,6,3),
	(69,2,8),
	(70,3,6),
	(71,5,2),
	(72,5,4),
	(73,6,10),
	(74,2,7),
	(75,6,10),
	(76,4,2),
	(77,4,2),
	(78,6,8),
	(79,4,6),
	(80,5,7),
	(81,3,2),
	(82,2,2),
	(83,4,9),
	(84,2,4),
	(85,1,4),
	(86,6,2),
	(87,4,9),
	(88,2,10),
	(89,1,2),
	(90,4,6),
	(91,5,5),
	(92,3,5),
	(93,3,4),
	(94,4,7),
	(95,6,5),
	(96,5,6),
	(97,6,10),
	(98,2,4),
	(99,2,10),
	(100,6,5),
	(101,2,7),
	(102,2,8),
	(103,1,5)
	;

CREATE TABLE tbl_authors (
	book_id INT NOT NULL CONSTRAINT fk_books_id FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE,
	author_name VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_authors 
	(book_id, author_name)
	VALUES
	(1,'Robin Andrews'),
	(2,'Ryan Walker'),
	(3,'Mr. Robert Murphy'),
	(4,'Veronica Campbell'),
	(5,'William Whitney'),
	(6,'Ryan Martin'),
	(7,'Matthew Allen'),
	(8,'Nicholas Tate'),
	(9,'Stephen Shaw'),
	(10,'Patrick Lawrence'),
	(11,'Christine Mccullough'),
	(12,'Donald Marshall'),
	(13,'Victoria Wright'),
	(14,'David Bradley'),
	(15,'Amber Stevens'),
	(16,'Anthony Burke'),
	(17,'Kristen Anderson'),
	(18,'Justin Barajas'),
	(19,'Karen Hopkins'),
	(20,'Linda Walters'),
	(21,'Patricia Haley'),
	(22,'Susan Washington'),
	(23,'Ryan Schmitt'),
	(24,'Joshua Rogers'),
	(25,'Deborah Wilson'),
	(26,'Kevin Harrison'),
	(27,'Eileen Richardson'),
	(28,'Rachel Tucker'),
	(29,'John Buchanan'),
	(30,'Monica Chase'),
	(31,'Jacob Cooke'),
	(32,'Richard Keller'),
	(33,'Harold Medina'),
	(34,'Brooke Potts'),
	(35,'Diane Avery'),
	(36,'Crystal Hernandez'),
	(37,'Stephen Bowen'),
	(38,'Crystal Wilson'),
	(39,'Sarah Thomas'),
	(40,'Nancy Morris'),
	(41,'Jeffrey Lee'),
	(42,'Diana Novak'),
	(43,'Jack Cole'),
	(44,'Carolyn Ruiz'),
	(45,'Kathryn Jackson'),
	(46,'James Clayton'),
	(47,'Kathy Martin'),
	(48,'Rhonda Harrison'),
	(49,'Dean Johnson'),
	(50,'Samuel Walker'),
	(51,'Christian Tanner'),
	(52,'Jennifer Martinez'),
	(53,'Charles Brown'),
	(54,'Tiffany Moses'),
	(55,'Regina Taylor'),
	(56,'Kimberly Hayes'),
	(57,'Russell Mckinney'),
	(58,'Joel Williams'),
	(59,'Anna Powell'),
	(60,'Curtis Gay'),
	(61,'Juan White'),
	(62,'April Thompson'),
	(63,'Pamela Hill'),
	(64,'Jennifer Hayes'),
	(65,'Dr. David Hill'),
	(66,'Allison Fritz'),
	(67,'Michael Reed'),
	(68,'Ricardo Baker'),
	(69,'Dale Richards'),
	(70,'Susan Green'),
	(71,'Crystal Miller'),
	(72,'Kelly Castillo'),
	(73,'Sydney Nolan'),
	(74,'Angela Woods'),
	(75,'Tasha Matthews'),
	(76,'Jessica Johnson'),
	(77,'Jackson Butler'),
	(78,'Mary Hernandez'),
	(79,'Rebecca Oconnor'),
	(80,'Carlos Johnson PhD'),
	(81,'Tina Chapman'),
	(82,'Allen House'),
	(83,'Terri Parker'),
	(84,'Mark Matthews'),
	(85,'Amy Gallagher'),
	(86,'Miranda Cannon'),
	(87,'Cindy Brown'),
	(88,'Karen Jacobson'),
	(89,'Theodore Phillips'),
	(90,'Angel Walker'),
	(91,'Elizabeth Soto'),
	(92,'Scott Flowers'),
	(93,'Paul Pennington'),
	(94,'Michael Mills'),
	(95,'Jeremy Ellis'),
	(96,'Dakota Jones'),
	(97,'Sean Walls'),
	(98,'Amy Carroll'),
	(99,'Lynn Wood'),
	(100,'Kevin Mckee'),
	(101,'Stephen King'),
	(102,'Stephen King'),
	(103,'Mike Lee')
	;

SELECT * FROM tbl_borrowers;

GO

CREATE TABLE tbl_loans (
	book_id INT NOT NULL CONSTRAINT fk_bookID FOREIGN KEY REFERENCES tbl_books(book_id) ON UPDATE CASCADE ON DELETE CASCADE,
	branch_id INT NOT NULL CONSTRAINT fk_branchID FOREIGN KEY REFERENCES tbl_branch(branch_id) ON UPDATE CASCADE ON DELETE CASCADE,
	borrower_id INT NOT NULL CONSTRAINT fk_borrowerID FOREIGN KEY REFERENCES tbl_borrowers(borrower_id) ON UPDATE CASCADE ON DELETE CASCADE,
	date_out VARCHAR(50) NOT NULL,
	date_due VARCHAR(50) NOT NULL
 	);

GO

INSERT INTO tbl_loans 
	(book_id, branch_id, borrower_id, date_out, date_due)
	VALUES
	(1,4,5003,'2018-02-16','2018-05-16'),
	(3,2,5003,'2018-03-25','2018-06-25'),
	(5,6,5003,'2018-01-28','2018-04-28'),
	(7,3,5003,'2018-01-22','2018-04-22'),
	(9,3,5003,'2018-04-05','2018-07-05'),
	(11,1,5003,'2018-02-21','2018-05-21'),
	(3,1,5020,'2018-03-11','2018-06-11'),
	(5,6,5020,'2018-04-26','2018-07-26'),
	(7,1,5020,'2018-01-26','2018-04-26'),
	(9,2,5020,'2018-01-05','2018-04-05'),
	(1,1,5020,'2018-03-17','2018-06-17'),
	(3,5,5020,'2018-04-06','2018-07-06'),
	(5,1,5020,'2018-01-14','2018-04-14'),
	(7,3,5020,'2018-03-13','2018-06-13'),
	(9,4,5020,'2018-03-07','2018-06-07'),
	(31,4,5099,'2018-02-03','2018-05-03'),
	(33,5,5074,'2018-02-19','2018-05-19'),
	(35,6,5047,'2018-01-09','2018-04-09'),
	(37,4,5099,'2018-02-19','2018-05-19'),
	(39,2,5039,'2018-01-17','2018-04-17'),
	(41,5,5061,'2018-04-08','2018-07-08'),
	(43,3,5058,'2018-03-11','2018-06-11'),
	(45,5,5053,'2018-03-05','2018-06-05'),
	(47,1,5062,'2018-04-12','2018-07-12'),
	(49,3,5004,'2018-04-19','2018-07-19'),
	(51,5,5035,'2018-04-11','2018-07-11'),
	(53,3,5057,'2018-02-19','2018-05-19'),
	(55,5,5091,'2018-04-08','2018-07-08'),
	(57,2,5055,'2018-04-15','2018-07-15'),
	(59,5,5067,'2018-02-24','2018-05-24'),
	(61,2,5051,'2018-04-01','2018-07-01'),
	(63,5,5054,'2018-01-14','2018-04-14'),
	(65,6,5013,'2018-01-16','2018-04-16'),
	(67,2,5061,'2018-01-21','2018-04-21'),
	(69,2,5013,'2018-04-07','2018-07-07'),
	(71,5,5085,'2018-04-16','2018-07-16'),
	(73,6,5013,'2018-03-02','2018-06-02'),
	(75,6,5028,'2018-04-28','2018-07-28'),
	(77,4,5000,'2018-04-17','2018-07-17'),
	(79,4,5059,'2018-01-26','2018-04-26'),
	(81,3,5046,'2018-01-24','2018-04-24'),
	(83,4,5050,'2018-01-22','2018-04-22'),
	(85,1,5062,'2018-03-28','2018-06-28'),
	(87,4,5035,'2018-03-03','2018-06-03'),
	(89,1,5085,'2018-01-05','2018-04-05'),
	(91,5,5026,'2018-04-15','2018-07-15'),
	(93,3,5001,'2018-04-03','2018-07-03'),
	(95,6,5025,'2018-04-04','2018-07-04'),
	(97,6,5025,'2018-03-03','2018-06-03'),
	(99,2,5080,'2018-02-19','2018-05-19'),
	(101,2,5098,'2018-03-02','2018-06-02'),
	(103,1,5055,'2018-04-22','2018-07-22')
	;

/* How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

CREATE PROCEDURE [dbo].[proc_bookCopyInBranch]
	
AS
BEGIN


END


/* How many copies of the book titled "The Lost Tribe" are owned by each library branch? */
CREATE PROCEDURE [dbo].[proc_lost_tribe_copies]	
AS
BEGIN
	SELECT ISNULL(tbl_copies.copies,0), tbl_branch.branch_name FROM tbl_copies
		INNER JOIN tbl_books ON tbl_copies.book_id = tbl_books.book_id AND tbl_books.book_name = 'The Lost Tribe'
		FULL OUTER JOIN tbl_branch ON tbl_copies.branch_id = tbl_branch.branch_id;
END

GO

EXEC [dbo].[proc_lost_tribe_copies];

GO

/* Retrieve the names of all borrowers who do not have any books checked out. */
CREATE PROCEDURE [dbo].[proc_borrower_no_copies]	
AS
BEGIN
	SELECT tbl_borrowers.borrower_name 
		FROM tbl_borrowers 
		LEFT OUTER JOIN tbl_loans
		ON tbl_borrowers.borrower_id = tbl_loans.borrower_id
		WHERE tbl_loans.borrower_id IS NULL;
END

GO

EXEC [dbo].[proc_borrower_no_copies];

GO

/* For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, 
retrieve the book title, 
the borrower's name, and 
the borrower's address. 
*/

--I'm assuming "today" is '2018-07-22'
CREATE PROCEDURE [dbo].[proc_stown_due]	
AS
BEGIN
	SELECT tbl_books.book_name, tbl_borrowers.borrower_name, tbl_borrowers.borrower_address
		FROM tbl_branch 
		INNER JOIN tbl_loans ON tbl_branch.branch_id = tbl_loans.branch_id AND tbl_branch.branch_name = 'Sharpstown' AND tbl_loans.date_due = '2018-07-22'
		INNER JOIN tbl_books ON tbl_books.book_id = tbl_loans.book_id
		INNER JOIN tbl_borrowers ON tbl_borrowers.borrower_id = tbl_loans.borrower_id; 
END

GO

EXEC [dbo].[proc_stown_due];

GO

/* For each library branch, retrieve the branch name and the total number of books loaned out from that branch. */
CREATE PROCEDURE [dbo].[proc_books_out]	
AS
BEGIN
	SELECT COUNT(tbl_loans.book_id) AS 'Books loaned', tbl_branch.branch_name FROM tbl_branch 
		INNER JOIN tbl_loans ON tbl_branch.branch_id = tbl_loans.branch_id 
		GROUP BY branch_name;
END

GO

EXEC [dbo].[proc_books_out];

GO

/*Retrieve the names, addresses, and the number of books checked out 
for all borrowers who have more than five books checked out.*/
CREATE PROCEDURE [dbo].[proc_borrowers_more_than_five_books]	
AS
BEGIN
	SELECT COUNT(tbl_loans.borrower_id ) '# books out', tbl_borrowers.borrower_name, tbl_borrowers.borrower_address
		FROM tbl_loans 
		INNER JOIN tbl_borrowers ON tbl_loans.borrower_id = tbl_borrowers.borrower_id
		INNER JOIN tbl_books ON tbl_loans.book_id = tbl_books.book_id
		GROUP BY tbl_loans.borrower_id, tbl_borrowers.borrower_name, tbl_borrowers.borrower_address
		HAVING COUNT(tbl_loans.borrower_id )>5;
END

GO 

EXEC [dbo].[proc_borrowers_more_than_five_books];

GO

/* For each book authored (or co-authored) by "Stephen King", 
retrieve the title and the number of copies owned by the library branch whose name is "Central". */
CREATE PROCEDURE [dbo].[proc_king_at_central]	
AS
BEGIN
	SELECT tbl_books.book_name, tbl_copies.copies, tbl_branch.branch_name FROM tbl_authors 
		INNER JOIN tbl_books ON tbl_authors.book_id = tbl_books.book_id AND tbl_authors.author_name LIKE '%Stephen King%'
		INNER JOIN tbl_copies ON tbl_copies.book_id = tbl_books.book_id
		INNER JOIN tbl_branch ON tbl_branch.branch_id = tbl_copies.branch_id WHERE tbl_branch.branch_name = 'Central';
END

GO

EXEC [dbo].[proc_king_at_central];