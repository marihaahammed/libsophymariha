
--Structure for the tables in the database--


CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    ISBN VARCHAR(13),
    Genre VARCHAR(50),
    PublicationYear INT,
    Publisher VARCHAR(100),
    NumPages INT,
    AvailabilityStatus VARCHAR(20)
);


CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Address VARCHAR(255),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    FineID INT,
    FOREIGN KEY (FineID) REFERENCES Fines(FineID)
);


CREATE TABLE Checkouts (
    CheckoutID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    CheckoutDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    ReservationDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);


CREATE TABLE Fines (
    FineID INT PRIMARY KEY,
    CheckoutID INT,
    FineAmount DECIMAL(10, 2),
    FineDate DATE,
    FOREIGN KEY (CheckoutID) REFERENCES Checkouts(CheckoutID)
);


--Values for each table in the database--



INSERT INTO Books (BookID, Title, Author, ISBN, Genre, PublicationYear, Publisher, NumPages, AvailabilityStatus)
VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Fiction', 1960, 'J.B. Lippincott & Co.', 336, 'Available'),
(2, '1984', 'George Orwell', '9780451524935', 'Dystopian', 1949, 'Secker & Warburg', 328, 'Available'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Classic', 1925, 'Scribner', 180, 'Available'),
(4, 'The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 1937, 'Allen & Unwin', 310, 'Available'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', '9780241950432', 'Coming-of-age', 1951, 'Little, Brown and Company', 224, 'Available'),
(6, 'Pride and Prejudice', 'Jane Austen', '9780141439518', 'Romance', 1813, 'Thomas Egerton', 432, 'Available'),
(7, 'The Lord of the Rings', 'J.R.R. Tolkien', '9780544003415', 'Fantasy', 1954, 'Allen & Unwin', 1178, 'Available'),
(8, 'Brave New World', 'Aldous Huxley', '9780060850524', 'Dystopian', 1932, 'Chatto & Windus', 311, 'Available'),
(9, 'The Chronicles of Narnia', 'C.S. Lewis', '9780066238500', 'Fantasy', 1950, 'Geoffrey Bles', 767, 'Available'),
(10, 'The Road', 'Cormac McCarthy', '9780307387899', 'Post-apocalyptic', 2006, 'Alfred A. Knopf', 241, 'Available'),
(11, 'The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', '9780345391803', 'Science Fiction', 1979, 'Pan Books', 193, 'Available'),
(12, 'Frankenstein', 'Mary Shelley', '9780486282114', 'Gothic Horror', 1818, 'Lackington, Hughes, Harding, Mavor, & Jones', 280, 'Available'),
(13, 'The Shining', 'Stephen King', '9780307743657', 'Horror', 1977, 'Doubleday', 447, 'Available'),
(14, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', 'Mystery', 2005, 'Norstedts Förlag', 590, 'Available'),
(15, 'One Hundred Years of Solitude', 'Gabriel García Márquez', '9780061120091', 'Magical Realism', 1967, 'Harper & Row', 417, 'Available'),
(16, 'The Hunger Games', 'Suzanne Collins', '9780439023481', 'Dystopian', 2008, 'Scholastic Corporation', 374, 'Available'),
(17, 'Moby-Dick', 'Herman Melville', '9780142437247', 'Adventure', 1851, 'Richard Bentley', 720, 'Available'),
(18, 'The Road Not Taken and Other Poems', 'Robert Frost', '9780486275505', 'Poetry', 1916, 'Henry Holt and Company', 77, 'Available'),
(19, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', 'Non-fiction', 2011, 'Harper', 443, 'Available'),
(20, 'The Alchemist', 'Paulo Coelho', '9780061122415', 'Philosophical Fiction', 1988, 'HarperCollins', 197, 'Available'),
(21, 'The Picture of Dorian Gray', 'Oscar Wilde', '9780141439570', 'Gothic Horror', 1890, 'Ward, Lock, and Company', 254, 'Available'),
(22, 'The Odyssey', 'Homer', '9780143039952', 'Epic Poetry', 800, 'Penguin Classics', 416, 'Available'),
(23, 'A Tale of Two Cities', 'Charles Dickens', '9780141439600', 'Historical Fiction', 1859, 'Chapman & Hall', 448, 'Available'),
(24, 'The Stand', 'Stephen King', '9780307743688', 'Post-apocalyptic', 1978, 'Doubleday', 1153, 'Available'),
(25, 'The Color Purple', 'Alice Walker', '9780151191543', 'Drama', 1982, 'Harcourt Brace Jovanovich', 295, 'Available'),
(26, 'The Grapes of Wrath', 'John Steinbeck', '9780143039433', 'Social Realism', 1939, 'The Viking Press', 464, 'Available'),
(27, 'Wuthering Heights', 'Emily Brontë', '9780141439556', 'Gothic Fiction', 1847, 'Thomas Cautley Newby', 342, 'Available'),
(28, 'The Martian', 'Andy Weir', '9780553418026', 'Science Fiction', 2011, 'Crown Publishing Group', 369, 'Available'),
(29, 'The Catch-22', 'Joseph Heller', '9780684833392', 'Satire', 1961, 'Simon & Schuster', 453, 'Available'),
(30, 'The Handmaid''s Tale', 'Margaret Atwood', '9780385490818', 'Dystopian', 1985, 'McClelland & Stewart', 311, 'Available'),
(31, 'The Silmarillion', 'J.R.R. Tolkien', '9780261102736', 'Mythopoeia', 1977, 'George Allen & Unwin', 365, 'Available'),
(32, 'Crime and Punishment', 'Fyodor Dostoevsky', '9780143107637', 'Psychological Fiction', 1866, 'The Russian Messenger', 671, 'Available'),
(33, 'The Brothers Karamazov', 'Fyodor Dostoevsky', '9780140449242', 'Philosophical Novel', 1880, 'The Russian Messenger', 824, 'Available'),
(34, 'The Old Man and the Sea', 'Ernest Hemingway', '9780684801223', 'Novella', 1952, 'Charles Scribner''s Sons', 127, 'Available'),
(35, 'The Princess Bride', 'William Goldman', '9780345348036', 'Fantasy', 1973, 'Harcourt Brace Jovanovich', 398, 'Available'),
(36, 'Slaughterhouse-Five', 'Kurt Vonnegut', '9780385333849', 'Satire', 1969, 'Delacorte Press', 186, 'Available'),
(37, 'The Wind-Up Bird Chronicle', 'Haruki Murakami', '9780679775430', 'Magic Realism', 1994, 'Shinchosha', 607, 'Available'),
(38, 'The Kite Runner', 'Khaled Hosseini', '9781573222457', 'Historical Fiction', 2003, 'Riverhead Books', 371, 'Available'),
(39, 'The Hound of the Baskervilles', 'Arthur Conan Doyle', '9780140437867', 'Mystery', 1902, 'George Newnes', 256, 'Available'),
(40, 'The Secret Garden', 'Frances Hodgson Burnett', '9780141331768', 'Children''s Literature', 1911, 'Frederick Warne & Co.', 331, 'Available'),
(41, 'The Count of Monte Cristo', 'Alexandre Dumas', '9780140449266', 'Adventure', 1844, 'Penguin Classics', 1276, 'Available'),
(42, 'The Road to Wigan Pier', 'George Orwell', '9780141185293', 'Political Non-fiction', 1937, 'Victor Gollancz Ltd', 264, 'Available'),
(43, 'The Time Machine', 'H.G. Wells', '9780141439976', 'Science Fiction', 1895, 'William Heinemann', 118, 'Available'),
(44, 'The Joy Luck Club', 'Amy Tan', '9780143038092', 'Contemporary Fiction', 1989, 'G.P. Putnam''s Sons', 288, 'Available'),
(45, 'The Iliad', 'Homer', '9780140445923', 'Epic Poetry', 800, 'Penguin Classics', 683, 'Available'),
(46, 'The Inferno', 'Dante Alighieri', '9780142437223', 'Epic Poetry', 1315, 'Penguin Classics', 479, 'Available'),
(47, 'Les Misérables', 'Victor Hugo', '9780140444308', 'Historical Fiction', 1862, 'Penguin Classics', 1463, 'Available'),
(48, 'The Outsiders', 'S.E. Hinton', '9780140385724', 'Coming-of-age', 1967, 'Viking Press', 192, 'Available'),
(49, 'The Odyssey', 'Homer', '9780140449112', 'Epic Poetry', 800, 'Penguin Classics', 541, 'Available'),
(50, 'Red, White & Royal Blue', 'Casey McQuiston', '9781250316776', 'Romantic Comedy', 2019, 'St. Martin''s Griffin', 421, 'Available'),
(51, 'The Jungle', 'Upton Sinclair', '9780142437339', 'Political Fiction', 1906, 'Doubleday, Page & Company', 413, 'Available'),
(52, 'The Scarlet Letter', 'Nathaniel Hawthorne', '9780142437261', 'Historical Fiction', 1850, 'Ticknor, Reed & Fields', 238, 'Available'),
(53, 'The Art of War', 'Sun Tzu', '9781590302255', 'Military Strategy', 500, 'Shambhala Publications', 273, 'Available'),
(54, 'The Glass Castle', 'Jeannette Walls', '9780743247542', 'Memoir', 2005, 'Scribner', 288, 'Available'),
(55, 'The Da Vinci Code', 'Dan Brown', '9780307474278', 'Mystery', 2003, 'Doubleday', 454, 'Available'),
(56, 'The Road to Serfdom', 'Friedrich Hayek', '9780226320557', 'Political Philosophy', 1944, 'University of Chicago Press', 288, 'Available'),
(57, 'The Fountainhead', 'Ayn Rand', '9780451191151', 'Philosophical Fiction', 1943, 'Bobbs-Merrill Company', 704, 'Available'),
(58, 'The Giver', 'Lois Lowry', '9780544336254', 'Dystopian', 1993, 'Houghton Mifflin', 225, 'Available'),
(59, 'The Bell Jar', 'Sylvia Plath', '9780061148514', 'Autobiographical Fiction', 1963, 'Heinemann', 244, 'Available'),
(60, 'The Stand', 'Stephen King', '9780307743688', 'Post-apocalyptic', 1978, 'Doubleday', 1153, 'Available'),
(61, 'The Power of One', 'Bryce Courtenay', '9780345410054', 'Historical Fiction', 1989, 'William Heinemann', 544, 'Available'),
(62, 'The Martian Chronicles', 'Ray Bradbury', '9781451678192', 'Science Fiction', 1950, 'Doubleday', 222, 'Available'),
(63, 'The Stranger', 'Albert Camus', '9780679720201', 'Philosophical Novel', 1942, 'Gallimard', 123, 'Available'),
(64, 'The Maze Runner', 'James Dashner', '9780385737951', 'Dystopian', 2009, 'Delacorte Press', 375, 'Available'),
(65, 'The Book Thief', 'Markus Zusak', '9780375842207', 'Historical Fiction', 2005, 'Knopf', 552, 'Available'),
(66, 'The Silmarillion', 'J.R.R. Tolkien', '9780261102736', 'Mythopoeia', 1977, 'George Allen & Unwin', 365, 'Available'),
(67, 'The Canterbury Tales', 'Geoffrey Chaucer', '9780140422344', 'Middle English Poetry', 1400, 'Penguin Classics', 504, 'Available'),
(68, 'The Divine Comedy', 'Dante Alighieri', '9780142437223', 'Epic Poetry', 1315, 'Penguin Classics', 928, 'Available'),
(69, 'The Brothers Grimm Fairy Tales', 'Brothers Grimm', '9780141331201', 'Fairy Tales', 1812, 'Penguin Classics', 800, 'Available'),
(70, 'The Hunchback of Notre-Dame', 'Victor Hugo', '9780140443530', 'Gothic Fiction', 1831, 'Penguin Classics', 940, 'Available'),
(72, 'The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', '9780345391803', 'Science Fiction', 1979, 'Pan Books', 193, 'Available'),
(73, 'The Joy of Cooking', 'Irma S. Rombauer', '9781501173131', 'Cookbook', 1931, 'Scribner', 1200, 'Available'),
(74, 'The Elements of Style', 'William Strunk Jr. and E.B. White', '9780205309023', 'Style Guide', 1918, 'Longman', 105, 'Available'),
(75, 'The Metamorphosis', 'Franz Kafka', '9780141187990', 'Absurdist Fiction', 1915, 'Kurt Wolff', 55, 'Available'),
(76, 'The Three Musketeers', 'Alexandre Dumas', '9780140437645', 'Adventure', 1844, 'Penguin Classics', 704, 'Available'),
(77, 'The Handmaid''s Tale', 'Margaret Atwood', '9780385490818', 'Dystopian', 1985, 'McClelland & Stewart', 311, 'Available'),
(78, 'The Hound of the Baskervilles', 'Arthur Conan Doyle', '9780140437867', 'Mystery', 1902, 'George Newnes', 256, 'Available'),
(79, 'The Picture of Dorian Gray', 'Oscar Wilde', '9780141439570', 'Gothic Horror', 1890, 'Ward, Lock, and Company', 254, 'Available'),
(80, 'The Prince', 'Niccolò Machiavelli', '9780140449150', 'Political Philosophy', 1532, 'Penguin Classics', 140, 'Available'),
(82, 'The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 1937, 'Allen & Unwin', 310, 'Available'),
(83, 'The Jungle Book', 'Rudyard Kipling', '9781503283560', 'Children''s Literature', 1894, 'Macmillan Publishers', 205, 'Available'),
(84, 'The War of the Worlds', 'H.G. Wells', '9780141439976', 'Science Fiction', 1898, 'William Heinemann', 192, 'Available'),
(85, 'The Wonderful Wizard of Oz', 'L. Frank Baum', '9780140621679', 'Children''s Literature', 1900, 'George M. Hill Company', 259, 'Available'),
(86, 'The Color Purple', 'Alice Walker', '9780151191543', 'Drama', 1982, 'Harcourt Brace Jovanovich', 295, 'Available'),
(87, 'The Cask of Amontillado', 'Edgar Allan Poe', '9780486280301', 'Gothic Horror', 1846, 'Godey''s Lady''s Book', 20, 'Available'),
(88, 'The Old Man and the Sea', 'Ernest Hemingway', '9780684801223', 'Novella', 1952, 'Charles Scribner''s Sons', 127, 'Available'),
(89, 'The Glass Menagerie', 'Tennessee Williams', '9780811214049', 'Drama', 1944, 'New Directions Publishing', 147, 'Available'),
(90, 'The Girl on the Train', 'Paula Hawkins', '9781594634024', 'Psychological Thriller', 2015, 'Riverhead Books', 336, 'Available'),
(91, 'The Road Not Taken and Other Poems', 'Robert Frost', '9780486275505', 'Poetry', 1916, 'Henry Holt and Company', 77, 'Available'),
(92, 'The Alchemist', 'Paulo Coelho', '9780061122415', 'Philosophical Fiction', 1988, 'HarperCollins', 197, 'Available'),
(93, 'The Sun Also Rises', 'Ernest Hemingway', '9780743297332', 'Modernist Novel', 1926, 'Scribner', 251, 'Available'),
(94, 'The Big Sleep', 'Raymond Chandler', '9780394758282', 'Hardboiled Detective Fiction', 1939, 'Alfred A. Knopf', 231, 'Available'),
(95, 'The Fifth Season', 'N.K. Jemisin', '9780316229296', 'Fantasy', 2015, 'Orbit Books', 468, 'Available'),
(96, 'The Night Circus', 'Erin Morgenstern', '9780307744432', 'Fantasy', 2011, 'Doubleday', 512, 'Available'),
(97, 'The Road Less Traveled', 'M. Scott Peck', '9780684847245', 'Psychology', 1978, 'Simon & Schuster', 316, 'Available'),
(98, 'The 7 Habits of Highly Effective People', 'Stephen R. Covey', '9781982137274', 'Self-help', 1989, 'Free Press', 381, 'Available'),
(99, 'The Gruffalo', 'Julia Donaldson', '9780142403877', 'Children''s Literature', 1999, 'Puffin Books', 32, 'Available'),
(100, 'The Road to Character', 'David Brooks', '9780812983220', 'Philosophy', 2015, 'Random House', 320, 'Available');



INSERT INTO Authors (AuthorID, AuthorName)
VALUES
    (1, 'Harper Lee'),
    (2, 'George Orwell'),
    (3, 'F. Scott Fitzgerald'),
    (4, 'J.R.R. Tolkien'),
    (5, 'J.D. Salinger'),
    (6, 'Jane Austen'),
    (7, 'Aldous Huxley'),
    (8, 'C.S. Lewis'),
    (9, 'Cormac McCarthy'),
    (10, 'Douglas Adams'),
    (11, 'Mary Shelley'),
    (12, 'Stephen King'),
    (13, 'Stieg Larsson'),
    (14, 'Gabriel García Márquez'),
    (15, 'Suzanne Collins'),
    (16, 'Herman Melville'),
    (17, 'Robert Frost'),
    (18, 'Yuval Noah Harari'),
    (19, 'Paulo Coelho'),
    (20, 'Oscar Wilde'),
    (21, 'Homer'),
    (22, 'Charles Dickens'),
    (23, 'Alice Walker'),
    (24, 'John Steinbeck'),
    (25, 'Emily Brontë'),
    (26, 'Andy Weir'),
    (27, 'Joseph Heller'),
    (28, 'Margaret Atwood'),
    (29, 'Fyodor Dostoevsky'),
    (30, 'Ernest Hemingway'),
    (31, 'William Goldman'),
    (32, 'Kurt Vonnegut'),
    (33, 'Haruki Murakami'),
    (34, 'M. Scott Peck'),
    (35, 'Khaled Hosseini'),
    (36, 'Arthur Conan Doyle'),
    (37, 'Frances Hodgson Burnett'),
    (38, 'Alexandre Dumas'),
    (39, 'George Orwell'),
    (40, 'H.G. Wells'),
    (41, 'Amy Tan'),
    (42, 'Homer'),
    (43, 'Dante Alighieri'),
    (44, 'Victor Hugo'),
    (45, 'S.E. Hinton'),
    (46, 'Homer'),
    (47, 'Upton Sinclair'),
    (48, 'Nathaniel Hawthorne'),
    (49, 'Sun Tzu'),
    (50, 'Jeannette Walls'),
    (51, 'Edgar Allan Poe'),
    (52, 'Ernest Hemingway'),
    (53, 'Tennessee Williams'),
    (54, 'Paula Hawkins'),
    (55, 'Robert Frost'),
    (56, 'Paulo Coelho'),
    (57, 'Ernest Hemingway'),
    (58, 'Raymond Chandler'),
    (59, 'N.K. Jemisin'),
    (60, 'Erin Morgenstern'),
    (61, 'M. Scott Peck'),
    (62, 'Stephen R. Covey'),
    (63, 'Julia Donaldson'),
    (64, 'David Brooks'),
    (65, 'Casey McQuiston');



INSERT INTO Members (MemberID, FirstName, LastName, Age, Address, Email, Phone)
VALUES
    (1, 'John', 'Doe', 30, '123 Main St, Cityville', 'john.doe@example.com', '555-1234'),
    (2, 'Jane', 'Smith', 25, '456 Oak St, Townsville', 'jane.smith@example.com', '555-5678'),
    (3, 'Robert', 'Johnson', 40, '789 Maple St, Villagetown', 'robert.johnson@example.com', '555-9012'),
    (4, 'Emily', 'Jones', 22, '101 Pine St, Hamletville', 'emily.jones@example.com', '555-3456'),
    (5, 'Michael', 'Williams', 35, '202 Birch St, Riverside', 'michael.williams@example.com', '555-7890'),
    (6, 'Sophia', 'Brown', 28, '303 Cedar St, Mountainview', 'sophia.brown@example.com', '555-1234'),
    (7, 'William', 'Taylor', 45, '404 Elm St, Lakeside', 'william.taylor@example.com', '555-5678'),
    (8, 'Olivia', 'Miller', 29, '505 Walnut St, Seaside', 'olivia.miller@example.com', '555-9012'),
    (9, 'James', 'Davis', 32, '606 Spruce St, Hilltop', 'james.davis@example.com', '555-3456'),
    (10, 'Emma', 'Moore', 27, '707 Fir St, Valleyville', 'emma.moore@example.com', '555-7890'),
    (11, 'Benjamin', 'Anderson', 38, '808 Pine St, Cliffside', 'benjamin.anderson@example.com', '555-1234'),
    (12, 'Ava', 'White', 24, '909 Oak St, Lakeshore', 'ava.white@example.com', '555-5678'),
    (13, 'Christopher', 'Hall', 33, '101 Maple St, Mountainside', 'christopher.hall@example.com', '555-9012'),
    (14, 'Mia', 'Baker', 26, '202 Birch St, Riverside', 'mia.baker@example.com', '555-3456'),
    (15, 'Ethan', 'Green', 41, '303 Cedar St, Mountainview', 'ethan.green@example.com', '555-7890'),
    (16, 'Amelia', 'Adams', 23, '404 Elm St, Lakeside', 'amelia.adams@example.com', '555-1234'),
    (17, 'Daniel', 'Scott', 31, '505 Walnut St, Seaside', 'daniel.scott@example.com', '555-5678'),
    (18, 'Grace', 'Evans', 36, '606 Spruce St, Hilltop', 'grace.evans@example.com', '555-9012'),
    (19, 'Liam', 'Ward', 28, '707 Fir St, Valleyville', 'liam.ward@example.com', '555-3456'),
    (20, 'Chloe', 'Cooper', 30, '808 Pine St, Cliffside', 'chloe.cooper@example.com', '555-7890'),
    (21, 'Noah', 'Hill', 18, '909 Oak St, Lakeshore', 'noah.hill@example.com', '555-1234'),
    (22, 'Sophie', 'Barnes', 19, '101 Maple St, Mountainside', 'sophie.barnes@example.com', '555-5678'),
    (23, 'Logan', 'Cole', 20, '202 Birch St, Riverside', 'logan.cole@example.com', '555-9012'),
    (24, 'Ava', 'Rogers', 18, '303 Cedar St, Mountainview', 'ava.rogers@example.com', '555-3456'),
    (25, 'Elijah', 'Stewart', 19, '404 Elm St, Lakeside', 'elijah.stewart@example.com', '555-7890'),
    (26, 'Zoe', 'Perry', 20, '505 Walnut St, Seaside', 'zoe.perry@example.com', '555-1234'),
    (27, 'Caleb', 'Wood', 18, '606 Spruce St, Hilltop', 'caleb.wood@example.com', '555-5678'),
    (28, 'Mila', 'Watson', 19, '707 Fir St, Valleyville', 'mila.watson@example.com', '555-9012'),
    (29, 'Jackson', 'Sanders', 20, '808 Pine St, Cliffside', 'jackson.sanders@example.com', '555-3456'),
    (30, 'Lily', 'Harrison', 18, '909 Oak St, Lakeshore', 'lily.harrison@example.com', '555-7890');



INSERT INTO Checkouts (CheckoutID, BookID, MemberID, CheckoutDate, DueDate, ReturnDate)
VALUES
    (1, 3, 4, '2023-01-15', '2023-02-15', NULL),
    (2, 5, 9, '2023-01-20', '2023-02-20', '2023-02-18'),
    (3, 8, 14, '2023-02-10', '2023-03-10', NULL),
    (4, 12, 8, '2023-02-15', '2023-03-15', '2023-03-12'),
    (5, 10, 6, '2023-02-20', '2023-03-20', NULL),
    (6, 15, 19, '2023-03-01', '2023-04-01', NULL),
    (7, 2, 11, '2023-03-05', '2023-04-05', NULL),
    (8, 7, 3, '2023-03-10', '2023-04-10', '2023-04-08'),
    (9, 9, 17, '2023-03-15', '2023-04-15', NULL),
    (10, 1, 21, '2023-03-20', '2023-04-20', NULL),
    (11, 6, 13, '2023-04-01', '2023-05-01', NULL),
    (12, 11, 23, '2023-04-05', '2023-05-05', '2023-05-02'),
    (13, 13, 5, '2023-04-10', '2023-05-10', NULL),
    (14, 4, 15, '2023-04-15', '2023-05-15', NULL),
    (15, 14, 27, '2023-04-20', '2023-05-20', '2023-05-18'),
    (16, 8, 31, '2023-05-01', '2023-06-01', NULL),
    (17, 14, 37, '2023-05-05', '2023-06-05', '2023-06-02'),
    (18, 7, 29, '2023-05-10', '2023-06-10', NULL),
    (19, 11, 33, '2023-05-15', '2023-06-15', NULL),
    (20, 2, 45, '2023-05-20', '2023-06-20', NULL),
    (21, 5, 57, '2023-06-01', '2023-07-01', NULL),
    (22, 12, 68, '2023-06-05', '2023-07-05', '2023-07-02'),
    (23, 1, 73, '2023-06-10', '2023-07-10', NULL),
    (24, 9, 88, '2023-06-15', '2023-07-15', NULL),
    (25, 6, 94, '2023-06-20', '2023-07-20', NULL);




INSERT INTO Genres (GenreID, GenreName)
VALUES
    (1, 'Fiction'),
    (2, 'Non-Fiction'),
    (3, 'Mystery'),
    (4, 'Science Fiction'),
    (5, 'Dystopian'),
    (6, 'Classic'),
    (7, 'Fantasy'),
    (8, 'Coming-of-age'),
    (9, 'Gothic Horror'),
    (10, 'Horror'),
    (11, 'Magical Realism'),
    (12, 'Adventure'),
    (13, 'Poetry'),
    (14, 'Philosophical Fiction'),
    (15, 'Epic Poetry'),
    (16, 'Historical Fiction'),
    (17, 'Social Realism'),
    (18, 'Satire'),
    (19, 'Mythopoeia'),
    (20, 'Psychological Fiction'),
    (21, 'Novella'),
    (22, 'Magic Realism'),
    (23, 'Psychology'),
    (24, 'Children''s Literature'),
    (25, 'Political Non-fiction'),
    (26, 'Contemporary Fiction'),
    (27, 'Political Fiction'),
    (28, 'Memoir'),
    (29, 'Cookbook'),
    (30, 'Style Guide'),
    (31, 'Absurdist Fiction'),
    (32, 'Military Strategy'),
    (33, 'Self-help'),
    (34, 'Hardboiled Detective Fiction'),
    (35, 'Modernist Novel'),
    (36, 'Philosophy'),
    (37, 'Psychological Thriller'),
    (38, 'Historical Fantasy'),
    (39, 'Epic Fantasy'),
    (40, 'Biography');



INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
VALUES
    (1, 'Sarah', 'Johnson', 'Librarian', 50000.00),
    (2, 'Michael', 'Smith', 'Clerk', 35000.00),
    (3, 'Emily', 'Davis', 'Assistant Librarian', 42000.00),
    (4, 'James', 'Brown', 'Cataloguer', 38000.00),
    (5, 'Jennifer', 'Anderson', 'Archivist', 48000.00),
    (6, 'Daniel', 'Taylor', 'Library Assistant', 32000.00),
    (7, 'Jessica', 'Miller', 'Acquisitions Specialist', 45000.00),
    (8, 'Ryan', 'Wilson', 'Reference Librarian', 52000.00),
    (9, 'Amanda', 'Martinez', 'Systems Librarian', 55000.00),
    (10, 'Kevin', 'Moore', 'Technical Services Librarian', 49000.00);



INSERT INTO Reservations (ReservationID, BookID, MemberID, ReservationDate)
VALUES
    (17, 16, 2, '2023-02-05'),
    (18, 22, 4, '2023-02-10'),
    (19, 19, 7, '2023-02-15'),
    (20, 27, 10, '2023-02-20'),
    (21, 21, 13, '2023-03-01'),
    (22, 30, 16, '2023-03-05'),
    (23, 18, 19, '2023-03-10'),
    (24, 25, 22, '2023-03-15'),
    (25, 28, 25, '2023-03-20'),
    (26, 29, 28, '2023-04-01'),
    (27, 23, 31, '2023-04-05'),
    (28, 20, 34, '2023-04-10'),
    (29, 24, 37, '2023-04-15'),
    (30, 26, 40, '2023-04-20'),
    (31, 17, 43, '2023-05-01');



INSERT INTO Fines (FineID, CheckoutID, FineAmount, FineDate)
VALUES
    (1, 2, 5.00, '2023-02-25'),
    (2, 5, 8.50, '2023-03-15'),
    (3, 8, 12.75, '2023-04-02'),
    (4, 12, 6.20, '2023-05-10')
    (5, 15, 9.20, '2023-06-20'),
    (6, 20, 15.00, '2023-07-05'),
    (7, 25, 7.80, '2023-08-12'),
    (8, 30, 11.50, '2023-09-03'),
    (9, 35, 6.75, '2023-10-18'),
    (10, 40, 8.90, '2023-11-30');
