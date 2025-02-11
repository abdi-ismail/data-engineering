DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS loans;



CREATE TABLE books(
book_id SERIAL PRIMARY KEY,
book_name VARCHAR(100),
author_id VARCHAR(100),
publish_date DATE,
quantity INT
);


ALTER TABLE books
ADD isbn CHAR(13),
ADD paperback BOOLEAN,
ADD price NUMERIC(4,2);

INSERT INTO books(price)
VALUES(5.00);

ALTER TABLE books
ALTER COLUMN price TYPE NUMERIC(6, 2);

ALTER TABLE books
DROP COLUMN paperback;

SELECT * FROM books;

CREATE TABLE members(
mem_ID SERIAL PRIMARY KEY,
mem_name VARCHAR(100),
mem_DOB DATE,
mem_books BOOLEAN
);


ALTER TABLE members
DROP COLUMN mem_books,
ADD mem_postcode CHAR(6),
ADD email VARCHAR(100);
SELECT * FROM members, books;


CREATE TABLE loans(
loan_id SERIAL PRIMARY KEY,
loan_start DATE,
loan_end DATE,
overdue BOOLEAN
);

insert into loans (loan_start, loan_end, overdue) values ('2024/09/22', '2024/10/27', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/25', '2024/10/06', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/18', '2024/10/28', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/02', '2024/10/09', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/20', '2024/10/07', false);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/21', '2024/10/25', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/02', '2024/10/17', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/24', '2024/10/23', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/16', '2024/10/08', true);
insert into loans (loan_start, loan_end, overdue) values ('2024/09/28', '2024/10/22', false);

-- UPDATE loans
-- set overdue = false
-- WHERE overdue = true;

-- DELETE FROM loans
-- WHERE overdue = true;

SELECT * FROM loans
ORDER BY loan_id;