DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS hobbies;
DROP TABLE IF EXISTS friends;





CREATE TABLE people (
name VARCHAR(100),
job VARCHAR(50),
age INT,
employed BOOLEAN
);

-- CREATE TABLE friends (
-- name VARCHAR(100),
-- age INT,
-- friendship_type VARCHAR(10),
-- phone_number CHAR(11),
-- birthday date
-- );

CREATE TABLE hobbies(
hobby_id SERIAL PRIMARY KEY,
hobby_name VARCHAR(50000),
hobby_equipment VARCHAR(1000000),
hobby_facitity VARCHAR(500000),
competitive BOOLEAN
);


CREATE TABLE authors(
author_id SERIAL PRIMARY KEY,
author_name VARCHAR(150)
);

CREATE TABLE books(
book_id SERIAL PRIMARY KEY,
isbn VARCHAR(13) UNIQUE NOT NULL,
author_id INT NOT NULL,
genre VARCHAR(100) NOT NULL,
pub_date DATE NOT NULL,
rating INT check(rating <= 5),
recommended BOOLEAN,
CONSTRAINT fk_author
	FOREIGN KEY (author_id)
		REFERENCES authors(author_id)
);

INSERT INTO people(name, job, age, employed)
VALUES('Tom', 'Senior Tutor Practitioner',25, TRUE),
('Zaid', 'Tutor Pracitioner', 28, TRUE),
('The Ploy', 'HR', 21, FALSE),
('Tina', 'Database Engineer', 21, TRUE);


INSERT INTO authors(author_name)
VALUES('J.K Rowling'),
('J. R. R. Tolkein'),
('Robert Sapolsky'),
('Stephen Hawkings'),
('Ernest Hemmingsway');
insert into hobbies (hobby_name, hobby_equipment, hobby_facitity, competitive) values ('Charlie Oscar Juliett Quebec Kilo Alfa Foxtrot Yankee Sierra Echo Zulu', 'Springbok', 'Ålesund', true);
insert into hobbies (hobby_name, hobby_equipment, hobby_facitity, competitive) values ('Uniform Tango Whiskey Quebec India Golf Mike X-ray Lima Alfa', 'Yellow-necked spurfowl', 'Karimunjawa-Karimunjawa Island', true);
insert into hobbies (hobby_name, hobby_equipment, hobby_facitity, competitive) values ('Delta Echo Romeo Victor Quebec November Zulu Golf Charlie Hotel Mike X-ray Yankee Uniform Lima Whiskey Oscar Sierra', 'Lapwing, southern', 'Rio Gallegos', true);
SELECT * FROM hobbies;
-- SELECT * FROM people;