/* Create tables */



--Create BOOK table

CREATE TABLE BOOK

	(

		BookID int PRIMARY KEY,

		Title varchar(200) NOT NULL,

		PublisherName varchar(50) NOT NULL

	);



--Create BOOK_AUTHORS table

CREATE TABLE BOOK_AUTHORS

	(

		BookID int PRIMARY KEY,

		AuthorName varchar(50) NOT NULL

	);



--Create PUBLISHER table

CREATE TABLE PUBLISHER

	(

		Name varchar(50) PRIMARY KEY,

		[Address] varchar(50),

		Phone varchar(10)

	);



--Create BOOK_COPIES table

CREATE TABLE BOOK_COPIES

	(

		BookID int NOT NULL,

		BranchID int NOT NULL,

		No_Of_Copies int NOT NULL

	);



--Create BOOK_LOANS table

CREATE TABLE BOOK_LOANS

	(

		BookID int NOT NULL,

		BranchID int NOT NULL,

		CardNo int NOT NULL,

		DateOut varchar(50) NOT NULL,

		DueDate varchar(50)  NOT NULL

	);



--Create LIBRARY_BRANCH table

CREATE TABLE LIBRARY_BRANCH

	(

		BranchID int PRIMARY KEY,

		BranchName varchar(50) NOT NULL,

		[Address] varchar(50)

	);

--Create BORROWER table

CREATE TABLE BORROWER

	(

		CardNo int PRIMARY KEY,

		Name varchar(50) NOT NULL,

		[Address] varchar(80) NOT NULL,

		Phone varchar(20) NULL

	);

	SELECT * FROM BOOK_AUTHORS;

	INSERT INTO BOOK
	(BookID, Title, PublisherName)
	VALUES
	(001, 'When a Bully is President: Truth and Creativity for Oppressive Times', 'The Publishing House'),  

	(002, 'Skin Again', 'The Publishers Mansion'),

	(003, 'Sleeping Beauties', 'House of Publishing'),

	(004, 'Roadwork', 'House of Publishing'),

	(005, 'As I Lay Dying', 'Publishing Group'),

	(006, 'A Time to Kill', 'The Publishers'),

	(007, 'The Lost Tribe', 'People Publishing'),

	(008, 'The Big Book of Books', 'House of Publishing'),

	(009, 'A Farewell to Arms', 'House of Publishing'),

	(010, 'The Grapes of Wrath', 'House of Publishing'),

	(011, 'A Dog by any Other Name is Not the Same', 'House of Publishing'),

	(012, 'Black Cats get a Bad Rap', 'The Publishers Mansion'),

	(013, 'It', 'People Publishing'),

	(014, 'The Waste Land','The Publishers Mansion'),

	(015, 'Collecting Buttons for Fun and Profit!', 'The Publishers Mansion'),

	(016, '50 Shades of Grey', 'The Publishers Mansion'),

	(017, '50 Shades Darker', 'The Publishers Mansion'),

	(018, '50 Shades Free', 'The Publishers Mansion'),

	(019, 'The Sun Also Rises', 'People Publishing'),

	(020, 'Remember When', 'Baby Publishers')
	;

	INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	(001, 'Maya Gonzalez'),

	(002, 'Bell Hook'),

	(003, 'Stephan King'),

	(004, 'Stephan King'),

	(005, 'William Faulkner'),

	(006, 'John Grisham'),

	(007, 'C. Taylor-Butler'),

	(008, 'Booker Ryder'),

	(009, 'Earnest Hemingway'),

	(010, 'John Steinbeck'),

	(011, 'J.G Piper'),

	(012, 'J.G Piper'),

	(013, 'Stephen King'),

	(014, 'T.S. Elliot'),

	(015, 'Author B. Writer'),

	(016, 'E.L James'),

	(017, 'E.L James'),

	(018, 'E.L James'),

	(019, 'Earnest Hemingway'),

	(020, 'T Torrest')
	;

INSERT INTO LIBRARY_BRANCH
	
	(BranchID, BranchName, [Address])
	VALUES



	(001, 'Sharpstown', '1234 Seattle Way'),

	(002, 'Central', '5678 Denver St'),

	(003, 'Lexington Park', '9876 Baltimore St'),

	(004, 'Portland', '4321 Portland Way'),

	(005, 'West Palm Beach', '1111 Miami St')
	;	

	INSERT INTO PUBLISHER

VALUES ('The Publishing House', '1234 Some St, New York, NY', '555-123-4567'),

	('The Publishers Mansion', '5678 Another Dr, Boston, MA', '555-456-7890'),

	('House of Publishing', '9876 Canyon Dr, Los Angeles, CA', '888-123-4567'),

	('Publishing Group', '4321 More St, New York, NY', '888-456-7890'),

	('People Publishing', '1111 Nowhere Way, Omaha, NB', '123-456-7890');

	INSERT INTO BOOK_COPIES 
	(BookID, BranchID, No_Of_Copies)

	VALUES
	      (001, 001, 4),

	(001, 002, 2 ),

	(001, 003, 3 ),

	(002, 004, 4 ),

	(002, 005, 7),

	(002, 001, 8),

	(003, 003, 4),

	(003, 002, 2),

	(004, 005, 7),

	(004, 001, 2),

	(004, 002, 6),

	(005, 003, 5),

	(005, 004, 2),

	(005, 005, 3),

	(006, 001, 5),

	(006, 002, 3),

	(006, 003, 4),

	(007, 004, 3),

	(007, 005, 2),

	(007, 001, 6),

	(008, 002, 4),

	(008, 003, 3),

	(008, 004, 3),

	(009, 005, 2),

	(009, 001, 4),

	(009, 002, 3),

	(010, 003, 4),

	(010, 004, 2),

	(010, 005, 5),

	(011, 001, 3),

	(011, 002, 5),

	(012, 003, 3),

	(012, 004, 2),

	(013, 005, 2),

	(013, 001, 2),

	(014, 002, 4),

	(014, 003, 6),

	(015, 004, 3),

	(015, 005, 6),

	(016, 001, 7),

	(016, 002, 4),

	(017, 003, 3),

	(017, 002, 7),

	(018, 005, 2),

	(018, 001, 3),

	(018, 002, 2),

	(019, 003, 2),

	(019, 004, 4),

	(020, 005, 4),

	(020, 001, 3)
	;

	INSERT INTO BORROWER
	 (CardNo, Name, [Address], Phone)

	VALUES 		
		(1002001, 'Bob Betterman', '1234 Brown St.', '555-123-4567' ),

		(1002002, 'John Doe', '894445 Black Way', '555-898-1012' ),

		(1002003, 'Jane Doe', '6859 Pink Rd.', '555-298-6533' ),

		(1002004, 'Joe Smuckatelli', '1515 Red Pl.', '555-216-1576' ),

		(1002005, 'Jack Pratt', '9736 Purple Rd.', '555-563-2109' ),

		(1002006, 'Aria Otero', '88896 Green.', '555-878-5552' ),

		(1002007, 'Cameron Wallace', '6336 Yellow St.', '555-123-4555' ),

		(1002008, 'Tatyana Wallace', '2222 Orange St.', '555-780-1294' ),

		(1002009, 'Jorge Otero', '2589 Blue St.', '555-818-5309' )
		;
select * from BOOK_LOANS;
		INSERT INTO BOOK_LOANS
		(BookID, BranchID, CardNo, DateOut, DueDate)
		VALUES 
		
		(001, 001, 1002003, '1/31/2017', '1/20/2018'),

		(002, 001, 1002001, '1/06/2018', '2/27/2018'),

		(003, 004, 1002002, '1/24/2018', '2/13/2018'),

		(004, 002, 1002008, '1/31/2018', '2/20/2018'),

		(005, 002, 1002008, '2/06/2018', '2/27/2018'),

		(006, 001, 1002001, '1/31/2018', '2/200/2018'),

		(007, 003, 1002006, '1/31/2018', '2/200/2018'),

		(008, 001, 1002001, '1/24/2018', '2/13/2018'),

		(009, 002, 1002006, '1/31/2018', '2/20/2018'),

		(010, 005, 1002009, '2/06/2018', '2/27/2018'),

		(001, 004, 1002001, '2/09/2018', '2/28/2018'),

		(002, 002, 1002006, '1/24/2018', '2/13/2018'),

		(013, 001, 1002001, '2/06/2018', '2/27/2018'),

		(014, 001, 1002007, '1/31/2018', '2/20/2018'),

		(015, 004, 1002007, '2/06/2018', '2/27/2018'),

		(016, 005, 102007, '1/24/2018', '2/13/2018'),

		(017, 001, 1002007, '1/31/2018', '2/20/2018'),

		(018, 003, 1002003, '1/31/2018', '2/20/2018'),

		(019, 004, 1002004, '1/24/2018', '2/13/2018'),

		(020, 004, 1002004, '1/31/2018', '2/20/2018'),

		(001, 003, 1002003, '1/31/2018', '2/20/2018'),

		(002, 001, 1002004, '1/24/2018', '2/13/2018'),

		(003, 005, 1002004, '2/06/2018', '2/27/2018'),

		(004, 005, 102005, '1/31/2018', '2/20/2018'),

		(005, 004, 1002002, '1/24/2018', '2/13/2018'),

		(006, 003, 1002003, '2/09/2018', '2/30/2018'),

		(007, 003, 1002003, '2/09/2018', '2/28/2018'),

		(008, 001, 1002004, '1/31/2018', '2/20/2018'),

		(009, 001, 1002007, '1/31/2018', '2/200/2018'),

		(010, 002, 1002008, '1/24/2018', '2/13/2018'),

		(001, 002, 1002005, '1/31/2018', '2/20/2018'),

		(002, 005, 1002009, '2/06/2018', '2/27/2018'),

		(013, 005, 1002009, '1/31/2018', '2/20/2018'),

		(014, 002, 102002, '2/09/2018', '2/27/2018'),

		(015, 002, 1002005, '1/31/2018', '2/20/2018'),

		(016, 003, 1002003, '2/09/2018', '2/30/2018'),

		(017, 004, 1002004, '2/06/2018', '2/27/2018'),

		(018, 001, 1002006, '1/24/2018', '2/13/2018'),

		(019, 001, 1002004, '1/31/2018', '2/20/2018'),

		(020, 002, 1002004, '2/06/2018', '2/27/2018'),

		(001, 002, 1002006, '2/09/2018', '2/27/2018'),

		(002, 004, 1002004, '1/31/2018', '2/20/2018'),

		(013, 004, 1002009, '2/09/2018', '2/30/2018'),

		(014, 005, 1002003, '1/31/2018', '2/20/2018'),

		(015, 004, 1002005, '1/24/2018', '2/13/2018'),

		(016, 004, 1002002, '1/31/2018', '2/20/2018'),

		(017, 002, 1002005, '2/09/2018', '2/27/2018'),

		(018, 001, 1002005, '1/24/2018', '2/13/2018'),

		(019, 001, 1002006, '2/06/2018', '2/27/2018'),

		(020, 004, 1002009, '1/31/2018', '2/20/2018')
;