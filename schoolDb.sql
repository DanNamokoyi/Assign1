-- create and select the database
DROP DATABASE IF EXISTS schoolADB;
CREATE DATABASE schoolADB;
USE schoolDB;  -- MySQL command

-- create the tables
CREATE TABLE spring (
  Subject			varchar(30) 	NOT NULL,
  CRN 				int(5)			NOT NULL,
  Section      		int(2) 			NOT NULL,
  Day				text			NOT NULL,
  Location			varchar(20) 	NOT NULL,
  Instructor		varchar(30) 	NOT NULL
  
);

CREATE TABLE fall (
  Subject			varchar(30) 	NOT NULL,
  CRN 				int(5)			NOT NULL,
  Section      		int(2) 			NOT NULL,
  Day				text			NOT NULL,
  Location			varchar(20) 	NOT NULL,
  Instructor		varchar(30) 	NOT NULL
  
);


-- insert data into the database

INSERT INTO fall (Subject, CRN, Section, Day, Location, Instructor) VALUES
('Intro to Information Tech', 80194, 1, 'T', 'CCT- Ctr for Commerc', 'Hupp, John P\r\n'),
('Computer Science I', 80380, 2, 'TR', 'CCT- Ctr for Commerc', 'Peker, Yesem K\r\n'),
('Computer Organization', 80198, 1, 'MWF', 'CCT- Ctr for Commerc', 'Lee, Suk J\r\n'),
('Internet Programming', 80700, 1, 'MWF', 'CCT- Ctr for Commerc', 'Smith, Aurelia D\r\n');


INSERT INTO spring (Subject, CRN, Section, Day, Location, Instructor) VALUES
('Intro to Information Tech', 20238, 1, 'T', 'CCT- Ctr for Commerc', 'Husainy, Marium B'),
('Intro to Information Tech', 20238, 1, 'T', 'CCT- Ctr for Commerc', 'Husainy, Marium B'),
('Computer Science II', 23416, 1, 'TR', 'CCT- Ctr for Commerc', 'STAFF, TBA '),
('Information Security', 20955, 1, 'W', 'CCT- Ctr for Commerc', 'Wang, Shuangbao ');



-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';


