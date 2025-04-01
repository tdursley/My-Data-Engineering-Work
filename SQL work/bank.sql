DROP TABLE IF EXISTS transation;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS loan;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS branch;

CREATE TABLE branch (
branch_ID SERIAL PRIMARY KEY,
branch_name VARCHAR(100),
address VARCHAR(200),
phone_number VARCHAR(13),
manager_ID INT
);

CREATE TABLE customer (
cust_ID SERIAL PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(50),
address VARCHAR(200),
DoB DATE,
cust_phone VARCHAR (13),
email VARCHAR (38),
join_date DATE,
branch_ID INT REFERENCES branch (branch_ID)
);

CREATE TABLE employee (
emp_ID SERIAL PRIMARY KEY,
first_name VARCHAR(70),
last_name VARCHAR(50),
title VARCHAR(100),
hire_date DATE,
salary NUMERIC (8, 2),
branch_ID INT REFERENCES branch (branch_ID)
);

CREATE TABLE loan (
loan_ID SERIAL PRIMARY KEY,
cust_ID INT REFERENCES customer (cust_ID),
loan_type VARCHAR(70),
amount NUMERIC,
interest_rate NUMERIC (4, 2),
start_date DATE,
end_date DATE,
status VARCHAR (16)
);

CREATE TABLE account (
account_ID SERIAL PRIMARY KEY,
cust_ID INT REFERENCES customer (cust_ID),
account_no INT,
account_type VARCHAR(30),
balance NUMERIC (8, 2),
date_opened DATE
);

CREATE TABLE transation (
trans_ID SERIAL PRIMARY KEY,
account_ID INT REFERENCES account (account_ID),
trans_type VARCHAR (30),
amount NUMERIC (8, 2),
trans_date DATE,
description VARCHAR(260)
);

-- populating branches table with records
insert into branch (branch_name, address, phone_number, manager_ID) values ('Igarka Airport', '0247 Tony Hill', '405-307-7054', 1564175857);
insert into branch (branch_name, address, phone_number, manager_ID) values ('Pedernales Airport', '43294 Roxbury Parkway', '154-431-1935', 924636541);
insert into branch (branch_name, address, phone_number, manager_ID) values ('Sierra Maestra Airport', '625 Fuller Terrace', '733-400-0850', 856515654);
insert into branch (branch_name, address, phone_number, manager_ID) values ('Robert Gray  Army Air Field Airport', '9 Briar Crest Crossing', '429-655-9595', 708230555);
insert into branch (branch_name, address, phone_number, manager_ID) values ('Vandenberg Air Force Base', '331 Westend Avenue', '865-513-5042', 1240609963);


-- populating employees table with records
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Harrietta', 'Van der Velde', 'Paralegal', '2016-07-15', 59629.03, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Karleen', 'Secombe', 'Design Engineer', '2014-08-17', 82502.47, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Victoir', 'Dracey', 'Developer III', '2020-11-17', 33680.51, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Coriss', 'Jacquemy', 'Software Test Engineer III', '2008-03-30', 49644.32, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Darcee', 'Gate', 'Product Engineer', '2016-02-19', 86906.02, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Clarita', 'Gypson', 'Financial Analyst', '2010-06-18', 25188.2, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Marylin', 'Cosley', 'Geologist III', '2020-10-18', 65320.37, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Myranda', 'Ennor', 'Paralegal', '2019-07-13', 50794.23, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Chad', 'Oakenfield', 'Engineer I', '2019-05-19', 114143.34, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Wash', 'Blampey', 'Web Developer III', '2018-09-16', 65480.95, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Myrta', 'Basezzi', 'Structural Analysis Engineer', '2016-09-05', 103104.44, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Field', 'Gawler', 'Developer I', '2011-10-06', 33268.23, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Russell', 'Welland', 'Nuclear Power Engineer', '2020-09-21', 122758.66, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Dyan', 'Kenninghan', 'Environmental Tech', '2019-09-20', 122124.8, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Sheffield', 'Ondra', 'Sales Associate', '2022-08-24', 66740.18, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Laurena', 'Healey', 'Geologist II', '2011-06-01', 63886.41, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Robena', 'McCarver', 'Account Executive', '2009-01-12', 41060.87, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Trenna', 'McGuirk', 'Marketing Manager', '2017-01-25', 55179.27, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Bryce', 'Lively', 'Civil Engineer', '2015-10-01', 63272.29, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Kay', 'Lideard', 'Accounting Assistant I', '2008-11-20', 111995.05, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Lamont', 'Cowtherd', 'General Manager', '2009-06-17', 67814.4, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Bianka', 'Eplate', 'Legal Assistant', '2014-05-08', 92724.32, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Skye', 'Kempe', 'VP Marketing', '2023-07-05', 86932.61, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Lucho', 'Feasey', 'Programmer III', '2022-05-10', 41626.26, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Micheal', 'Slegg', 'Electrical Engineer', '2019-12-26', 65694.86, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Pancho', 'Santello', 'Senior Cost Accountant', '2015-12-20', 44932.04, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Samaria', 'Mackinder', 'Developer III', '2020-02-27', 77499.7, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Goraud', 'Ruppert', 'Software Test Engineer I', '2009-05-08', 78592.45, 4);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Arluene', 'Bowich', 'Web Designer III', '2010-04-12', 115725.57, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Kore', 'Stuchberry', 'Analog Circuit Design manager', '2011-11-06', 53081.74, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Beau', 'Flood', 'Executive Secretary', '2017-01-27', 109793.86, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Odey', 'Trewett', 'Social Worker', '2021-07-21', 26019.42, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Deedee', 'Burndred', 'Marketing Assistant', '2013-04-02', 88956.6, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Urbano', 'Platts', 'Systems Administrator II', '2012-01-12', 78000.67, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Lara', 'Woolard', 'Computer Systems Analyst III', '2018-06-11', 71403.55, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Randy', 'Emanueli', 'Human Resources Assistant III', '2017-12-08', 88346.03, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Cookie', 'Cansdale', 'Web Developer III', '2009-08-07', 36711.31, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Nick', 'Szymanowski', 'Office Assistant II', '2014-04-28', 87431.36, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Christoforo', 'Blunsom', 'Senior Quality Engineer', '2022-12-28', 126131.29, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Benny', 'Antony', 'Graphic Designer', '2012-12-16', 89508.05, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Brandon', 'Alfuso', 'Research Assistant IV', '2012-07-20', 60282.0, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Israel', 'McSharry', 'Cost Accountant', '2021-07-09', 24649.81, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Marcela', 'Behan', 'Web Designer IV', '2023-12-08', 85238.72, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Duke', 'Overington', 'Physical Therapy Assistant', '2009-05-16', 121024.81, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Catina', 'Hassall', 'Environmental Tech', '2019-06-07', 86360.54, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Hailee', 'O'' Mulderrig', 'Project Manager', '2013-07-19', 54429.29, 2);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Leisha', 'McNerlin', 'Junior Executive', '2015-01-02', 108518.93, 3);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Malina', 'Stodd', 'Accountant I', '2020-03-23', 110427.81, 5);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Maryrose', 'Pasticznyk', 'Health Coach I', '2014-03-20', 77949.53, 1);
insert into employee (first_name, last_name, title, hire_date, salary, branch_ID) values ('Dion', 'Painter', 'Registered Nurse', '2010-03-21', 67321.12, 5);


-- populating customer table with records
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Bérengère', 'Grzegorczyk', '0 Brentwood Road', '2003-08-18', '983-362-8945', 'cgrzegorczyk0@naver.com', '2021-12-27', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Béatrice', 'Childerhouse', '047 Ryan Junction', '1964-01-10', '443-751-8659', 'achilderhouse1@mozilla.org', '2018-09-30', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Méline', 'Tubridy', '49811 Starling Center', '1951-08-22', '765-684-4726', 'gtubridy2@sohu.com', '2022-06-16', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mylène', 'Josilevich', '37 Anhalt Street', '1957-05-05', '843-364-8065', 'cjosilevich3@nifty.com', '2020-08-31', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Inès', 'Aburrow', '6 Mallard Lane', '1929-07-05', '392-750-3904', 'caburrow4@sogou.com', '2023-09-10', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Gisèle', 'Lomasney', '7838 Stephen Crossing', '1940-03-11', '815-468-4217', 'llomasney5@blinklist.com', '2024-01-27', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Cécile', 'Twelftree', '76344 Kim Place', '1951-06-23', '731-173-9003', 'mtwelftree6@craigslist.org', '2021-11-24', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Rébecca', 'Salthouse', '7 North Alley', '1988-12-15', '721-204-7678', 'msalthouse7@disqus.com', '2018-11-18', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Dafnée', 'Blabey', '60681 Elmside Avenue', '1948-09-25', '429-550-3437', 'mblabey8@wunderground.com', '2024-02-02', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Lén', 'Fannon', '512 Saint Paul Park', '2004-08-31', '817-110-2901', 'sfannon9@uiuc.edu', '2022-07-27', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Bérénice', 'Whybray', '71083 Montana Crossing', '1964-04-11', '747-850-8769', 'ewhybraya@blogs.com', '2022-10-27', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Björn', 'Duddell', '977 Delaware Pass', '1978-03-23', '150-915-0316', 'jduddellb@studiopress.com', '2022-07-21', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Eléa', 'Trimbey', '0575 Luster Street', '1947-02-20', '651-359-8417', 'mtrimbeyc@webeden.co.uk', '2020-07-12', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Björn', 'Ronan', '19 Thierer Plaza', '1969-05-21', '817-256-6509', 'sronand@symantec.com', '2019-12-21', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Michèle', 'Mokes', '13481 Carioca Court', '1968-04-08', '212-308-4088', 'kmokese@cmu.edu', '2016-06-03', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Örjan', 'Holmyard', '169 Mandrake Point', '1938-03-25', '453-259-9090', 'gholmyardf@creativecommons.org', '2022-10-12', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Åke', 'Pelman', '06054 Bartelt Way', '1964-08-05', '842-319-4515', 'mpelmang@techcrunch.com', '2020-06-10', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Dorothée', 'Durham', '49 Waxwing Road', '1923-12-23', '558-220-0478', 'sdurhamh@wufoo.com', '2023-12-20', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Vérane', 'Brasted', '53 Lillian Trail', '1970-05-10', '832-814-6732', 'cbrastedi@gmpg.org', '2018-12-20', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Sòng', 'Gapper', '2624 Tennessee Trail', '1966-05-09', '522-263-3366', 'cgapperj@loc.gov', '2019-09-19', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Marie-hélène', 'Dmitrichenko', '54433 Dovetail Way', '1965-05-25', '864-827-1080', 'fdmitrichenkok@fastcompany.com', '2024-10-26', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Lorène', 'Moyser', '54 Dixon Avenue', '2005-09-21', '472-881-1794', 'smoyserl@disqus.com', '2024-09-21', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Simplifiés', 'd''Escoffier', '45626 Fairview Lane', '1954-03-16', '346-355-0827', 'cdescoffierm@blogtalkradio.com', '2022-09-23', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Märta', 'Burehill', '71 Susan Junction', '1987-12-06', '648-190-0490', 'sburehilln@virginia.edu', '2022-06-04', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Marlène', 'Boote', '08 Fair Oaks Way', '1980-03-22', '511-579-6934', 'hbooteo@census.gov', '2016-09-17', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Styrbjörn', 'Kennford', '95 Warbler Court', '1949-04-15', '166-446-2088', 'bkennfordp@japanpost.jp', '2018-04-18', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Marie-josée', 'Gullifant', '63307 Transport Alley', '1939-03-24', '533-780-4380', 'ogullifantq@chron.com', '2021-11-24', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Andréanne', 'Greenleaf', '653 Clemons Lane', '1983-09-10', '607-624-7088', 'tgreenleafr@lulu.com', '2021-09-30', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Lauréna', 'Jerrams', '5637 Golden Leaf Plaza', '1987-12-15', '660-324-9839', 'kjerramss@desdev.cn', '2016-09-26', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Yénora', 'MacGillicuddy', '958 Bultman Trail', '1974-01-29', '971-485-5439', 'mmacgillicuddyt@howstuffworks.com', '2024-07-02', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mélinda', 'Stollwerck', '72 Sunfield Center', '2003-11-03', '686-919-6593', 'mstollwercku@wikipedia.org', '2018-01-18', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Clémentine', 'Andreaccio', '1249 Merchant Avenue', '1979-02-23', '666-584-5986', 'wandreacciov@bloomberg.com', '2017-08-07', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Séréna', 'Bayman', '215 Reinke Street', '1952-11-13', '233-774-0422', 'tbaymanw@mit.edu', '2016-12-13', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Simplifiés', 'Dorkins', '66 Birchwood Parkway', '1951-08-11', '395-377-5565', 'ndorkinsx@linkedin.com', '2023-03-09', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Miléna', 'Milbank', '05 Dakota Lane', '1963-03-09', '293-355-9465', 'dmilbanky@mail.ru', '2023-05-15', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Styrbjörn', 'Dann', '4149 Judy Center', '1993-12-17', '576-146-6608', 'sdannz@istockphoto.com', '2016-10-16', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mégane', 'Malicki', '6 Corben Alley', '1999-12-04', '548-823-3398', 'mmalicki10@wikimedia.org', '2018-10-07', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Göran', 'Snoxell', '0664 Transport Point', '1999-12-15', '769-513-9351', 'ksnoxell11@paypal.com', '2023-06-09', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Gaïa', 'Megany', '47 Anhalt Parkway', '1958-04-02', '398-164-3747', 'hmegany12@home.pl', '2016-12-24', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mylène', 'Dumbelton', '1500 Hanson Drive', '1948-04-29', '205-910-9071', 'pdumbelton13@dion.ne.jp', '2018-12-30', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Yè', 'Behne', '21 Butterfield Crossing', '1963-06-03', '371-353-4655', 'rbehne14@goodreads.com', '2022-08-19', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maëlys', 'Paydon', '3 Almo Avenue', '1994-04-13', '440-364-5345', 'spaydon15@diigo.com', '2021-01-05', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Noémie', 'Cluett', '4 Amoth Trail', '1928-06-03', '287-460-9070', 'acluett16@etsy.com', '2019-11-10', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Renée', 'Gowans', '1 Dwight Road', '1992-01-29', '401-757-1855', 'rgowans17@prweb.com', '2021-07-14', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Cécile', 'Mablestone', '996 Annamark Crossing', '1966-07-15', '280-535-4377', 'dmablestone18@loc.gov', '2023-07-16', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Néhémie', 'Clowsley', '615 Hansons Way', '1958-11-05', '869-781-4624', 'nclowsley19@51.la', '2017-10-14', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Océane', 'Filipowicz', '8866 Dapin Park', '1941-07-02', '968-893-6565', 'efilipowicz1a@sciencedirect.com', '2022-09-10', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Athéna', 'Neillans', '031 Brickson Park Hill', '1972-02-06', '714-758-9800', 'fneillans1b@google.co.jp', '2018-05-30', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mà', 'Claussen', '73 Tony Court', '1970-04-04', '992-374-6449', 'pclaussen1c@linkedin.com', '2017-10-01', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Görel', 'Cadd', '93128 Twin Pines Parkway', '1997-01-24', '864-718-8511', 'ccadd1d@dailymail.co.uk', '2022-12-30', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Gérald', 'Prew', '557 Kedzie Plaza', '1940-11-03', '352-863-1356', 'jprew1e@intel.com', '2018-03-31', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Yénora', 'Dauby', '28871 Myrtle Pass', '1925-10-29', '673-696-7052', 'adauby1f@un.org', '2023-02-22', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maëlann', 'Ambrogiotti', '3 Dryden Parkway', '1934-03-16', '814-615-6416', 'iambrogiotti1g@a8.net', '2022-09-22', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Kù', 'Sallan', '103 Gale Crossing', '1923-02-08', '448-895-2233', 'csallan1h@pinterest.com', '2022-06-26', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Nuó', 'Brealey', '6425 Stang Way', '2002-08-28', '790-292-5241', 'mbrealey1i@marriott.com', '2023-12-04', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mélys', 'Haldenby', '07037 Birchwood Drive', '1949-12-25', '140-811-8449', 'rhaldenby1j@posterous.com', '2022-09-05', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Publicité', 'Petticrew', '82156 Brown Park', '2004-07-26', '604-978-4800', 'mpetticrew1k@chronoengine.com', '2017-08-30', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Alizée', 'Oldall', '51 Green Ridge Place', '1950-09-04', '976-443-4573', 'joldall1l@huffingtonpost.com', '2018-03-29', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Noëlla', 'Pally', '41 Banding Center', '1997-03-14', '964-945-1303', 'cpally1m@macromedia.com', '2017-07-07', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Loïca', 'Brass', '8026 Debra Way', '1934-08-27', '810-813-3794', 'tbrass1n@engadget.com', '2016-03-15', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Stéphanie', 'Crunden', '879 Bellgrove Lane', '1972-05-12', '471-415-8356', 'gcrunden1o@delicious.com', '2018-01-29', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maïly', 'Tonnesen', '14314 Sundown Pass', '1924-01-02', '626-444-6732', 'atonnesen1p@theguardian.com', '2023-01-10', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Loïc', 'Vallentin', '9521 Valley Edge Lane', '2000-02-03', '923-739-8397', 'avallentin1q@icq.com', '2023-06-03', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Andréa', 'Beckhurst', '6 Waxwing Circle', '1945-02-24', '612-955-5120', 'ebeckhurst1r@example.com', '2019-01-25', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Léonore', 'Hastwall', '239 Quincy Plaza', '1944-09-29', '252-418-0958', 'rhastwall1s@zdnet.com', '2017-08-07', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Alizée', 'Sherwen', '57 Becker Trail', '1952-10-22', '545-949-5951', 'csherwen1t@163.com', '2023-10-23', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Daphnée', 'Mucklestone', '653 Sullivan Court', '1976-06-07', '547-756-9262', 'bmucklestone1u@ftc.gov', '2016-07-27', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Anaël', 'Erwin', '848 Onsgard Hill', '1992-09-01', '895-909-0937', 'lerwin1v@sogou.com', '2022-04-08', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Océane', 'Dybell', '24 Russell Lane', '1954-07-11', '527-521-7449', 'kdybell1w@pcworld.com', '2017-10-16', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Rébecca', 'Seres', '915 Blackbird Street', '1922-03-30', '107-671-7656', 'rseres1x@howstuffworks.com', '2020-08-06', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Clémentine', 'Loughlin', '40356 Kropf Circle', '1944-07-25', '279-628-5598', 'iloughlin1y@ow.ly', '2017-08-14', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Loïs', 'Schroeder', '4356 Packers Alley', '1999-02-14', '441-142-3080', 'fschroeder1z@furl.net', '2023-08-18', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Estève', 'Vanacci', '66820 Mallard Court', '1943-10-20', '781-587-4447', 'rvanacci20@npr.org', '2019-05-20', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Alizée', 'Wort', '90702 Oakridge Junction', '1955-12-13', '207-601-9236', 'lwort21@auda.org.au', '2016-12-23', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maïlys', 'Ince', '703 Maywood Hill', '1929-12-19', '782-538-4757', 'since22@xrea.com', '2019-12-06', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Kallisté', 'O''Dyvoy', '80 Cambridge Street', '1996-02-14', '223-918-9185', 'dodyvoy23@addtoany.com', '2020-06-04', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Lyséa', 'Whitchurch', '56906 Atwood Plaza', '1979-04-29', '318-727-2575', 'cwhitchurch24@nyu.edu', '2024-04-02', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Tú', 'McCullen', '065 Memorial Parkway', '1961-04-21', '628-278-1991', 'gmccullen25@springer.com', '2019-02-02', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Léone', 'Klasing', '156 Meadow Ridge Court', '1986-10-17', '845-569-9810', 'mklasing26@businessweek.com', '2016-09-24', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mårten', 'Hirsch', '21671 Lindbergh Lane', '1919-06-20', '223-263-1819', 'ahirsch27@t.co', '2020-06-26', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mégane', 'Wastie', '97959 Parkside Street', '1988-08-30', '413-373-8767', 'lwastie28@bravesites.com', '2023-06-04', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Réservés', 'Kopfen', '643 Heffernan Park', '1928-07-24', '811-988-4448', 'akopfen29@rakuten.co.jp', '2019-07-31', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Kallisté', 'Bethell', '28 Corry Circle', '1928-05-10', '416-641-5874', 'bbethell2a@howstuffworks.com', '2023-08-30', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Clélia', 'Barrow', '0 Sundown Court', '1980-02-10', '653-762-5328', 'wbarrow2b@bing.com', '2021-03-07', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Dù', 'Feathersby', '118 Judy Road', '1962-11-09', '536-952-2940', 'wfeathersby2c@blogtalkradio.com', '2019-06-11', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maïlys', 'Lermit', '15 Northfield Way', '1924-05-24', '446-335-2091', 'llermit2d@jigsy.com', '2023-02-25', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Françoise', 'Labbati', '3710 Parkside Court', '1927-04-24', '902-130-3067', 'klabbati2e@4shared.com', '2024-05-22', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Eléa', 'Malatalant', '143 Nelson Avenue', '1995-02-03', '958-988-3213', 'bmalatalant2f@addthis.com', '2024-04-23', 1);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mårten', 'Hamman', '4312 Armistice Hill', '1947-05-12', '395-451-0407', 'lhamman2g@netvibes.com', '2024-07-14', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maëlle', 'Leijs', '04523 Bultman Parkway', '1924-03-22', '884-158-3878', 'cleijs2h@vkontakte.ru', '2020-05-26', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Ophélie', 'Costellow', '564 Pond Road', '1947-10-04', '165-543-2577', 'bcostellow2i@wsj.com', '2017-09-23', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Anaëlle', 'Arman', '9749 Calypso Crossing', '1923-01-19', '152-605-1371', 'farman2j@army.mil', '2023-04-13', 2);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Séverine', 'Manueau', '8086 Buena Vista Place', '1926-01-26', '432-629-5961', 'jmanueau2k@howstuffworks.com', '2022-04-22', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Håkan', 'Reoch', '1 Lawn Drive', '1928-06-01', '243-971-7808', 'greoch2l@nps.gov', '2020-07-15', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Laurélie', 'Matis', '474 Stuart Circle', '1925-04-21', '343-180-0879', 'amatis2m@pinterest.com', '2022-02-10', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Lài', 'McIndoe', '4676 Beilfuss Place', '1992-10-20', '854-473-0837', 'fmcindoe2n@time.com', '2019-09-04', 3);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Almérinda', 'Joder', '06208 Graedel Plaza', '1954-08-05', '366-717-6588', 'bjoder2o@soup.io', '2020-12-28', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Märta', 'Rolse', '034 Eagle Crest Road', '1989-11-04', '372-621-1448', 'orolse2p@github.io', '2023-02-03', 4);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Mylène', 'Bousquet', '46370 Homewood Alley', '1940-11-21', '662-342-8563', 'tbousquet2q@smugmug.com', '2023-11-25', 5);
insert into customer (first_name, last_name, address, DoB, cust_phone, email, join_date, branch_ID) values ('Maëlann', 'Coburn', '376 Arrowood Drive', '1959-08-30', '493-703-0034', 'tcoburn2r@seattletimes.com', '2017-01-07', 1);


-- populating loan table with records

insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (78, 'CA-NU', 49002.51, 98.11, '2009-07-04', '2036-02-29', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (4, 'CU-11', 1811742.83, 13.82, '2000-02-11', '2013-02-21', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (72, 'AU-NT', 3299578.95, 92.56, '2005-12-13', '2013-11-09', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (88, 'CN-65', 3830897.56, 76.88, '2002-05-11', '2030-02-27', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (76, 'US-NY', 2710049.49, 73.8, '2003-01-10', '2013-01-30', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (80, 'CN-15', 2060096.66, 90.79, '2004-11-24', '2017-12-22', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (43, 'TN-61', 1079336.18, 52.72, '2000-09-10', '2028-10-25', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (3, 'BR-SP', 2426120.89, 10.31, '2006-10-18', '2000-11-12', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (96, 'US-MI', 2722176.37, 68.11, '2008-12-29', '2005-04-04', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (57, 'NZ-AUK', 289839.87, 3.53, '2017-01-30', '2039-11-19', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (55, 'AR-U', 1575287.69, 86.3, '2004-09-20', '2013-10-29', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (29, 'US-ND', 2945032.93, 72.44, '2010-01-23', '2021-01-29', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (43, 'US-AK', 1294764.17, 21.41, '2007-06-09', '2007-10-13', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (27, 'MR-09', 3866853.85, 41.49, '2011-10-03', '2009-06-16', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (38, 'US-NM', 2810185.61, 61.14, '2017-11-26', '2031-09-29', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (88, 'IN-MM', 2057022.91, 80.78, '2001-06-30', '2013-07-30', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (71, 'MV-05', 1186156.72, 81.87, '2008-01-03', '2026-12-24', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (25, 'SD-05', 1482537.63, 6.28, '2022-09-21', '2028-12-28', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (14, 'US-CA', 2036779.55, 99.37, '2020-08-20', '2022-07-18', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (45, 'CO-AMA', 2589416.23, 87.76, '2010-09-11', '2020-01-26', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (16, 'CN-32', 3627959.11, 74.17, '2014-09-01', '2022-12-26', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (45, 'JP-01', 81541.24, 87.9, '2018-01-10', '2000-05-10', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (3, 'CN-43', 2091768.12, 19.77, '2022-10-01', '2002-02-24', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (72, 'PK-PB', 3812401.53, 21.17, '2004-06-14', '2037-10-06', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (64, 'US-OR', 693613.11, 25.68, '2000-02-28', '2011-08-17', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (33, 'KZ-PAV', 2837476.33, 43.56, '2004-01-06', '2002-06-11', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (47, 'PG-EPW', 1346193.03, 58.23, '2013-02-16', '2026-04-17', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (29, 'GB-ENG', 2749122.41, 98.6, '2020-08-06', '2035-04-07', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (4, 'MY-06', 3300739.38, 9.03, '2006-11-03', '2005-03-11', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (76, 'US-AK', 1140408.44, 68.01, '2009-12-05', '2037-04-25', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (11, 'US-OH', 3807935.35, 80.92, '2015-03-05', '2022-07-14', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (21, 'IN-TG', 1299835.14, 58.63, '2021-09-07', '2036-06-21', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (66, 'YE-MA', 958287.94, 5.1, '2002-03-11', '2015-11-05', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (2, 'CG-11', 3566142.93, 48.9, '2014-04-22', '2029-02-17', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (13, 'CA-YT', 122640.55, 87.32, '2010-09-28', '2025-12-14', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (3, 'CA-PE', 2626471.77, 43.38, '2008-06-14', '2024-05-13', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (17, 'US-WI', 3957753.7, 37.36, '2021-05-01', '2002-07-26', 'Active');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (61, 'KE-700', 3315974.8, 31.2, '2017-07-10', '2004-03-06', 'Completed');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (97, 'GY-UT', 3345893.09, 30.96, '2017-05-08', '2028-08-13', 'Inactive');
insert into loan (cust_ID, loan_type, amount, interest_rate, start_date, end_date, status) values (92, 'DE-BY', 2355762.3, 35.32, '2019-05-04', '2025-12-19', 'Active');

--populating accounts table with records

insert into account (cust_ID, account_no, account_type, balance, date_opened) values (20, 28984756, 'Europe/Athens', 934170.46, '2021-04-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (52, 79598525, 'Asia/Jakarta', 595487.44, '2018-08-24');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (28, 15922499, 'America/Argentina/Salta', 535055.85, '2022-04-06');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (11, 11977472, 'Asia/Chongqing', 516294.89, '2008-12-26');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (36, 70134744, 'Europe/Amsterdam', 231976.71, '2015-03-15');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (49, 47194189, 'Asia/Manila', 740931.36, '2014-01-20');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (84, 81773874, 'Asia/Manila', 224346.03, '2014-12-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (89, 68774899, 'America/Toronto', 586303.67, '2022-05-14');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (43, 32414074, 'Asia/Shanghai', 647341.42, '2019-11-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (27, 17905530, 'Asia/Novosibirsk', 79367.02, '2022-03-22');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (18, 48699894, 'America/Managua', 218527.48, '2020-07-03');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (7, 66532430, 'Asia/Shanghai', 824331.12, '2018-03-19');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (66, 63255218, 'Asia/Bangkok', 837328.65, '2015-10-06');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 22543463, 'Indian/Mauritius', 18970.9, '2013-05-12');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (39, 99655001, 'Europe/Uzhgorod', 463064.24, '2015-10-31');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (60, 16002206, 'Asia/Chongqing', 10903.02, '2013-11-14');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (75, 95195084, 'Asia/Bangkok', 354480.71, '2021-09-03');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (18, 75707177, 'Asia/Makassar', 434487.1, '2011-06-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (50, 88345765, 'Europe/Zaporozhye', 114177.96, '2016-09-07');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (87, 23458074, 'Africa/Casablanca', 218747.09, '2023-02-15');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (1, 50474770, 'Europe/Moscow', 728461.09, '2014-06-19');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (98, 8253593, 'Asia/Makassar', 375967.42, '2011-06-23');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (46, 89195357, 'America/Mexico_City', 192471.36, '2022-12-01');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (67, 30344306, 'Europe/Lisbon', 71969.67, '2018-01-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (42, 4583634, 'Asia/Manila', 450167.48, '2009-08-30');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (6, 21361659, 'Europe/Athens', 939858.92, '2022-08-29');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (26, 25743861, 'Europe/Warsaw', 323418.47, '2010-02-26');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (8, 77984025, 'Asia/Chongqing', 166359.94, '2017-10-11');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (93, 52408250, 'Asia/Jakarta', 149697.8, '2024-02-06');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (66, 70793586, 'Europe/Athens', 734579.29, '2017-01-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (61, 8801485, 'Europe/Warsaw', 64754.76, '2009-10-17');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (19, 15680090, 'Asia/Chongqing', 434474.14, '2023-02-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (87, 58888487, 'Asia/Shanghai', 291314.17, '2012-07-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (35, 78640052, 'Asia/Chongqing', 230745.58, '2021-10-12');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (82, 19419850, 'Europe/Stockholm', 111854.61, '2017-04-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (29, 80949635, 'Europe/Lisbon', 536082.29, '2014-06-27');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (3, 79111416, 'America/Argentina/Cordoba', 253285.9, '2013-08-18');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (96, 1273629, 'Asia/Chongqing', 600090.5, '2015-06-17');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (4, 9533650, 'Europe/Stockholm', 881985.99, '2019-08-21');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (90, 66156636, 'Europe/Prague', 998463.94, '2024-04-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (11, 45483075, 'Asia/Chongqing', 517770.8, '2014-11-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (43, 46131288, 'America/New_York', 817281.17, '2016-06-26');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (23, 40535443, 'Asia/Qyzylorda', 769334.84, '2018-10-06');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (11, 19506724, 'Europe/Prague', 200585.13, '2011-11-30');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (90, 54817823, 'Asia/Harbin', 86245.92, '2024-02-17');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (57, 55494544, 'Europe/Prague', 167205.45, '2011-04-02');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (34, 66602181, 'America/New_York', 293858.36, '2010-08-15');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (100, 24397758, 'Asia/Irkutsk', 407482.69, '2021-09-21');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (26, 70073459, 'America/Sao_Paulo', 945590.51, '2019-06-25');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (13, 31167185, 'Europe/Moscow', 704323.98, '2022-07-03');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (32, 42895041, 'Asia/Chongqing', 391472.84, '2011-12-27');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (70, 92924826, 'Africa/Lubumbashi', 501234.53, '2011-12-07');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 89430753, 'America/Sao_Paulo', 783437.69, '2014-12-25');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (99, 25658006, 'Asia/Kuching', 919128.38, '2020-06-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (11, 35765805, 'Africa/Freetown', 378484.22, '2010-06-18');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (84, 70569746, 'Europe/Paris', 275763.53, '2021-04-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (45, 4490576, 'Europe/Uzhgorod', 134960.89, '2022-12-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 88137213, 'Asia/Manila', 472699.77, '2017-02-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (69, 35029195, 'Asia/Shanghai', 835391.69, '2008-02-12');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (87, 63142764, 'Asia/Ho_Chi_Minh', 56633.85, '2022-02-26');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (5, 62658524, 'America/Bogota', 706701.68, '2013-09-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 15317871, 'Africa/Tunis', 763398.15, '2017-12-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (49, 13645502, 'America/Sao_Paulo', 199515.95, '2019-08-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (100, 21255079, 'Asia/Makassar', 208701.25, '2008-03-19');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (16, 40382118, 'America/Sao_Paulo', 201150.09, '2016-12-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (83, 86220862, 'Asia/Shanghai', 972791.23, '2021-10-31');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (62, 93009440, 'Europe/Paris', 983379.93, '2015-10-28');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (99, 97091737, 'Asia/Chongqing', 872453.98, '2018-11-04');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (81, 50475714, 'Europe/Madrid', 853907.82, '2012-03-10');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 21050401, 'America/Tegucigalpa', 292327.74, '2012-03-10');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (14, 85731148, 'America/Edmonton', 133880.22, '2021-09-10');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (19, 48482447, 'Asia/Seoul', 576038.66, '2020-11-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (65, 40281213, 'Europe/Athens', 793847.03, '2013-03-30');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (81, 17853869, 'Africa/Lagos', 103159.83, '2016-02-11');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (43, 52926211, 'Asia/Chongqing', 246616.22, '2014-06-20');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (2, 79461591, 'Europe/Moscow', 135663.94, '2008-08-10');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (58, 4867426, 'America/Lima', 249859.2, '2017-12-17');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (28, 95533304, 'Asia/Chongqing', 426678.87, '2021-06-15');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (61, 74043165, 'Asia/Tehran', 129011.56, '2008-01-17');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (20, 97721729, 'Asia/Chongqing', 446400.17, '2014-12-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (20, 87727293, 'Asia/Shanghai', 953769.94, '2008-03-15');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (80, 47323301, 'Asia/Shanghai', 264167.24, '2016-12-10');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (69, 32348637, 'America/Barbados', 530413.19, '2019-08-08');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (67, 91739722, 'America/Santiago', 937561.62, '2013-12-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (1, 25990733, 'America/Havana', 582011.21, '2014-01-05');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (38, 73891811, 'Europe/Budapest', 961276.65, '2016-08-30');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (17, 73211503, 'America/Mexico_City', 347227.28, '2021-07-31');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (27, 54196855, 'Africa/Lagos', 404524.14, '2017-10-03');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (88, 9889582, 'Asia/Shanghai', 629051.82, '2013-11-16');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (57, 11443016, 'America/New_York', 415072.7, '2014-09-08');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (89, 86579091, 'Europe/Moscow', 311382.69, '2017-06-14');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (39, 42580812, 'America/Los_Angeles', 130641.13, '2008-09-03');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (9, 23905933, 'Asia/Harbin', 148922.59, '2014-04-20');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (21, 16570281, 'Asia/Tokyo', 63798.37, '2009-10-16');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (79, 85033785, 'Asia/Manila', 986682.35, '2011-09-13');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (59, 94085797, 'Europe/Zagreb', 829892.3, '2008-07-16');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (99, 98157928, 'America/Bogota', 913040.17, '2022-07-09');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (52, 64785160, 'Asia/Shanghai', 943266.62, '2020-08-27');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (71, 39627061, 'Asia/Amman', 460234.79, '2013-07-12');
insert into account (cust_ID, account_no, account_type, balance, date_opened) values (98, 67246515, 'Europe/Stockholm', 908936.2, '2014-09-30');

--populating transactions table

insert into transation (account_ID, trans_type, amount, trans_date, description) values (61, 'Payment', 530430.85, '2015-10-09', 'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (12, 'Payment', 892275.76, '2011-06-25', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (32, 'Interest', 292876.96, '2008-11-04', 'lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (67, 'Deposit', 137934.73, '2011-05-16', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (37, 'Payment', 729867.36, '2010-06-25', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (52, 'Payment', 783105.0, '2010-11-17', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (55, 'Withdrawal', 609807.36, '2013-07-31', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (65, 'Withdrawal', 671874.85, '2020-01-19', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (75, 'Withdrawal', 745855.46, '2009-03-12', 'bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (13, 'Deposit', 577944.18, '2019-05-10', 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (92, 'Deposit', 998844.34, '2009-04-13', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (6, 'Payment', 262616.31, '2023-08-26', 'nam dui proin leo odio porttitor id consequat in consequat ut nulla');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (79, 'Withdrawal', 715661.71, '2022-12-26', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (35, 'Payment', 359343.67, '2017-11-03', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (71, 'Payment', 894630.78, '2019-11-21', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (57, 'Withdrawal', 773149.5, '2008-06-28', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (32, 'Interest', 621532.89, '2014-06-05', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (53, 'Deposit', 894405.56, '2013-10-08', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (31, 'Withdrawal', 745859.9, '2019-05-02', 'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (55, 'Payment', 477546.37, '2014-11-04', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (36, 'Interest', 659578.74, '2020-03-04', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (58, 'Interest', 183005.4, '2016-06-08', 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (16, 'Deposit', 546293.26, '2016-06-21', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (57, 'Withdrawal', 213855.62, '2014-05-27', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (4, 'Interest', 503634.9, '2018-10-18', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (24, 'Deposit', 129177.16, '2020-06-19', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (56, 'Payment', 687409.26, '2012-06-17', 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (8, 'Payment', 930084.29, '2009-04-13', 'convallis nunc proin at turpis a pede posuere nonummy integer non');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (90, 'Interest', 28283.66, '2019-02-23', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (18, 'Withdrawal', 314071.72, '2015-02-24', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (54, 'Transfer', 898506.71, '2014-05-19', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (1, 'Transfer', 368931.44, '2012-08-04', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (56, 'Interest', 865057.92, '2013-07-15', 'aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (66, 'Withdrawal', 820945.93, '2022-04-10', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (30, 'Transfer', 21622.61, '2024-10-26', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (25, 'Interest', 841115.74, '2011-01-12', 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (53, 'Withdrawal', 871530.12, '2010-10-08', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (18, 'Deposit', 771730.45, '2019-07-18', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (73, 'Interest', 164728.72, '2011-12-24', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (31, 'Deposit', 992455.92, '2023-02-01', 'tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (69, 'Deposit', 317309.48, '2015-12-31', 'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (64, 'Payment', 327761.86, '2010-09-17', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (66, 'Transfer', 692617.07, '2013-09-14', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (89, 'Deposit', 203684.84, '2022-12-08', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (14, 'Deposit', 655487.81, '2016-11-17', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (86, 'Transfer', 792125.36, '2010-09-01', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (76, 'Transfer', 864512.37, '2023-12-22', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (16, 'Deposit', 166003.04, '2014-12-02', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (36, 'Payment', 721272.67, '2019-08-01', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (14, 'Transfer', 429578.86, '2017-03-19', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (41, 'Transfer', 338380.73, '2020-03-30', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (69, 'Payment', 143486.08, '2019-11-03', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (22, 'Payment', 859694.37, '2012-09-23', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (12, 'Payment', 198918.91, '2023-09-21', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (96, 'Transfer', 384366.03, '2023-05-06', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (38, 'Deposit', 286482.66, '2017-08-02', 'ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (2, 'Transfer', 634723.61, '2017-07-02', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (62, 'Interest', 294656.16, '2017-09-01', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (16, 'Transfer', 543858.88, '2011-01-23', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (26, 'Withdrawal', 302639.34, '2020-12-15', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (48, 'Deposit', 470282.21, '2013-09-27', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (70, 'Deposit', 74851.7, '2016-05-06', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (85, 'Payment', 882808.65, '2012-10-22', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (9, 'Transfer', 564522.33, '2008-02-23', 'donec odio justo sollicitudin ut suscipit a feugiat et eros');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (6, 'Payment', 149317.16, '2017-02-08', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (1, 'Withdrawal', 332778.51, '2021-02-28', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (54, 'Withdrawal', 511723.92, '2013-05-02', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (93, 'Interest', 864718.43, '2013-08-13', 'scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (44, 'Payment', 372251.62, '2016-08-24', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (60, 'Withdrawal', 961049.67, '2013-06-16', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (27, 'Deposit', 701905.23, '2016-12-21', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (75, 'Interest', 580684.97, '2009-02-18', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (19, 'Withdrawal', 456736.46, '2012-06-30', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (69, 'Deposit', 471255.52, '2010-12-03', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (56, 'Transfer', 148830.41, '2018-03-02', 'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (70, 'Withdrawal', 939198.97, '2013-01-14', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (30, 'Withdrawal', 386749.46, '2011-06-24', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (7, 'Transfer', 785314.37, '2013-09-14', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (69, 'Withdrawal', 67400.21, '2011-10-02', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (11, 'Payment', 286887.82, '2016-04-17', 'accumsan felis ut at dolor quis odio consequat varius integer');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (41, 'Transfer', 351163.14, '2012-07-24', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (67, 'Payment', 974080.71, '2011-05-02', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (76, 'Transfer', 258956.81, '2016-04-15', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (83, 'Interest', 8982.91, '2010-07-04', 'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (97, 'Interest', 68335.2, '2012-06-20', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (23, 'Transfer', 598137.93, '2011-01-29', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (13, 'Payment', 287411.55, '2013-05-31', 'tempus semper est quam pharetra magna ac consequat metus sapien');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (13, 'Withdrawal', 121850.64, '2016-12-28', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (31, 'Transfer', 683904.8, '2011-08-25', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (51, 'Transfer', 718944.8, '2008-02-28', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (75, 'Deposit', 223982.79, '2012-08-05', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (58, 'Payment', 710844.87, '2022-02-15', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (72, 'Interest', 521369.14, '2018-12-29', 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (87, 'Deposit', 109936.12, '2020-10-01', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (59, 'Interest', 175079.2, '2013-03-28', 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (86, 'Withdrawal', 35796.34, '2015-07-17', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (69, 'Payment', 254271.64, '2011-06-20', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (18, 'Interest', 867336.6, '2014-07-26', 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (56, 'Withdrawal', 105495.99, '2023-08-07', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (38, 'Payment', 986422.21, '2022-05-25', 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque');
insert into transation (account_ID, trans_type, amount, trans_date, description) values (24, 'Withdrawal', 35485.67, '2018-07-08', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea');

-- select title, hire_date, salary from employee

-- SELECT * FROM customer
-- WHERE cust_phone LIKE '%33%'

-- SELECT COUNT (emp_ID) FROM employee
-- where branch_id = 5

-- aggregate function

-- SELECT AVG(salary) AS avg_salary
-- FROM employee;

-- SELECT MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary, AVG(salary) AS avg_salary
-- FROM employee;

-- SELECT * FROM employee
-- WHERE salary < 40000;

-- SELECT SUM (salary) FROM employee;

-- SELECT salary, first_name, last_name, title, emp_ID
-- FROM employee
-- ORDER by salary desc;

SELECT COUNT (emp_ID), branch_ID FROM employee
GROUP BY branch_ID
ORDER BY COUNT (emp_ID) DESC;
