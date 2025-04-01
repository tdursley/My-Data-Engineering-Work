-- -- Drop tables if they exist to avoid conflicts during creation
DROP TABLE IF EXISTS library;
DROP TABLE IF EXISTS friends;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS hobbies;
DROP TABLE IF EXISTS literature;
DROP TABLE IF EXISTS members;


-- -- Create table 'people'
-- CREATE TABLE people (
--     name VARCHAR(100),
--     job VARCHAR(150),
--     age INT,
--     employed BOOLEAN
-- );

-- -- Create table 'friends'
-- CREATE TABLE friends (
--     name VARCHAR(100),
--     relationship_type VARCHAR(150),
--     age INT,
--     date_of_birth DATE,
--     notes TEXT,
--     online_friend BOOLEAN,
--     ISBN_num CHAR(16) UNIQUE
-- );

-- -- Create table 'authors'
-- CREATE TABLE authors (
--     author_id SERIAL PRIMARY KEY,
--     author_name VARCHAR(150)
-- );

-- -- Create table 'books'
-- CREATE TABLE books (
--     book_id SERIAL PRIMARY KEY,
--     isbn_num CHAR(13) NOT NULL UNIQUE,
--     rating INT CHECK (rating <= 5),
--     num_fiction INT CHECK (num_fiction > 1),
--     author_id INT,
--     CONSTRAINT fk_author
--         FOREIGN KEY (author_id)
--         REFERENCES authors (author_id)
-- );

-- -- Create table 'library'
-- CREATE TYPE book_condition AS ENUM ('new', 'used', 'antique');  -- Define custom ENUM type for book condition

-- CREATE TABLE library (
--     book_id SERIAL PRIMARY KEY,
--     author VARCHAR(50) NOT NULL,
--     book_title VARCHAR(1000) NOT NULL,
--     book_condition book_condition NOT NULL,
--     available BOOLEAN,
--     ISBN CHAR(16),
--     FOREIGN KEY (ISBN) 
--         REFERENCES friends(ISBN_num) ON DELETE SET NULL  -- Optional: Handles what happens on friend deletion
-- );

-- -- Insert data into 'people'
-- INSERT INTO people(name, job, age, employed)
-- VALUES 
--     ('Yaroslav', 'Jedi Master', 33, TRUE),
--     ('MF DOOM', 'Rap Patriarch', 49, FALSE),
--     ('Slavoj Zizek', 'Philosopher', 75, FALSE);

-- -- Insert data into 'authors'
-- INSERT INTO authors (author_name)
-- VALUES 
--     ('Knut Hamsun'),
--     ('Ernest Hemingway'),
--     ('Umberto Eco'),
--     ('J.R.R. Tolkien'), 
--     ('Robert Sapolsky');

-- -- Create table 'hobbies'
-- CREATE TABLE hobbies (
--     hobby_name VARCHAR(200),
--     description TEXT,
--     category VARCHAR(50),
--     level VARCHAR(20),
--     duration_hours DECIMAL(4,2),
--     cost VARCHAR(200),
--     hobby_facility VARCHAR(200),
--     start_date DATE,
--     instructor_name VARCHAR(200),
--     hobby_equipment VARCHAR(200),
--     competitive BOOLEAN
-- );

-- -- Insert data into 'hobbies'
-- INSERT INTO hobbies (hobby_name, description, category, level, duration_hours, cost, hobby_facility, start_date, instructor_name, hobby_equipment, competitive) VALUES
--     ('Alfa Uniform Papa Bravo Yankee Mike Victor India Charlie Zulu Delta Oscar Hotel Juliett Quebec', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Outdoor', 'Advanced', 8.36, 'Rupiah', 'Thicket Portage', '2022-05-04', 'Rodina Ancliffe', 'Heloderma horridum', FALSE),
--     ('Foxtrot Alfa Delta Lima Charlie Tango Kilo November Victor Whiskey Zulu Papa Bravo Uniform Hotel Quebec Echo Golf', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'Sports', 'Intermediate', 16.97, 'Yuan Renminbi', 'Fort Myers', '2022-12-11', 'Osmund Gantz', 'Gymnorhina tibicen', TRUE),
--     -- Continue for other hobbies as needed
--     ('Quebec Foxtrot Juliett Zulu November Whiskey Oscar Mike Romeo Charlie', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Sports', 'Beginner', 2.49, 'Shilling', 'Memphis', '2022-02-04', 'Bartie Eveling', 'Pycnonotus barbatus', TRUE);

-- altering a table

CREATE TABLE literature(
book_id SERIAL PRIMARY KEY,
book_name VARCHAR (100),
author_ID VARCHAR (100),
publish_date DATE,
quantity INT
);

ALTER TABLE literature 
ADD isbn CHAR (13),
ADD paperback BOOLEAN,
ADD price NUMERIC (4, 2);

INSERT INTO literature (price)
VALUES (11.99);

--altering a column

ALTER TABLE literature
ALTER COLUMN price TYPE NUMERIC (6, 2);

-- dropping a column

ALTER TABLE literature
DROP COLUMN paperback;

-- renaming a column

ALTER TABLE literature
RENAME COLUMN price TO book_price;

-- SELECT * FROM literature;

CREATE TABLE members(
member_id SERIAL PRIMARY KEY,
member_name VARCHAR (100),
member_surname VARCHAR (100),
member_postcode VARCHAR (100),
registration_date DATE
);

ALTER TABLE members 
ADD borrowed_count INT,
ADD member_email VARCHAR (50),
ADD member_phone VARCHAR (20),
ADD overdue BOOLEAN,
ADD member_DoB DATE,
ADD member_notes TEXT;

INSERT INTO members (member_name, member_postcode, registration_date, borrowed_count, member_dob)
VALUES ('Bert Macklin', 'FB1 6OD', '1991-12-25', 3, '1991-08-27');

insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Aldo', 'Kingsly', '10309', '1/29/2021', 540, 'akingsly0@over-blog.com', '181-786-4816', true, '10/28/1936');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Lindsey', 'Stopher', null, '10/9/2006', 646, 'lstopher1@go.com', '395-722-0355', false, '3/22/1960');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Meryl', 'Hedingham', null, '4/3/2014', 860, 'mhedingham2@go.com', '326-354-2375', true, '11/14/1972');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Simonette', 'Dyball', '3423', '2/25/2020', 829, 'sdyball3@google.com.br', '406-776-4412', false, '7/13/1949');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Deidre', 'Eglinton', '39100-000', '9/9/2010', 106, 'deglinton4@google.it', '589-959-8665', false, '6/29/1928');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Jeremy', 'Dilger', null, '8/26/2021', 460, 'jdilger5@weibo.com', '313-148-6081', false, '7/21/1980');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Bron', 'Risbie', '1658', '9/4/2011', 733, 'brisbie6@cnet.com', '889-510-1444', false, '2/26/1904');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Chrystal', 'Eggleson', '14225', '7/31/2004', 40, 'ceggleson7@nasa.gov', '716-371-0560', true, '1/6/1900');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Quincy', 'Bourdas', null, '1/3/2016', 920, 'qbourdas8@columbia.edu', '942-289-7179', true, '11/22/1993');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Zachary', 'Clayson', null, '10/6/2022', 412, 'zclayson9@guardian.co.uk', '914-320-5481', true, '11/24/1998');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Barrie', 'Dudden', null, '4/3/2008', 623, 'bduddena@discovery.com', '751-611-0757', true, '1/20/1919');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Cassy', 'Scurrer', null, '12/22/2001', 689, 'cscurrerb@ovh.net', '182-234-8714', true, '3/18/1913');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Atlante', 'De Bruyn', null, '1/8/2008', 199, 'adebruync@digg.com', '432-837-1390', true, '2/8/1911');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Sue', 'Bowmaker', null, '9/7/2018', 999, 'sbowmakerd@huffingtonpost.com', '869-844-5348', true, '9/6/1997');
insert into members (member_name, member_surname, member_postcode, registration_date, borrowed_count, member_email, member_phone, overdue, member_DoB) values ('Lorinda', 'Jopson', '1260', '8/17/2022', 570, 'ljopsone@oracle.com', '163-319-2359', false, '7/8/1925');

-- ALTER TABLE members
-- DROP COLUMN books_borrowed;

DROP TABLE IF EXISTS loans;

CREATE TABLE loans (
loan_id SERIAL PRIMARY KEY,
loan_start DATE,
loan_end DATE,
overdue BOOLEAN
);

insert into loans (loan_start, loan_end, overdue) values ('2024-11-09', '2024-11-10', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-10-02', '2024-11-13', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-10-11', '2024-11-03', true);
insert into loans (loan_start, loan_end, overdue) values ('2024-10-26', '2024-11-10', true);
insert into loans (loan_start, loan_end, overdue) values ('2024-11-06', '2024-11-02', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-11-02', '2024-11-07', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-11-13', '2024-11-02', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-10-13', '2024-11-05', false);
insert into loans (loan_start, loan_end, overdue) values ('2024-11-01', '2024-11-03', true);
insert into loans (loan_start, loan_end, overdue) values ('2024-11-07', '2024-11-12', true);

-- DELETE FROM loans
-- WHERE overdue=false;

UPDATE loans
SET overdue = false
WHERE overdue = true;

SELECT * FROM loans;



