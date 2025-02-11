DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS professors;
DROP TABLE IF EXISTS courses;



CREATE TABLE courses(
course_id SERIAL PRIMARY KEY,
professor_id VARCHAR(13) UNIQUE NOT NULL
-- CONSTRAINT fk_author
-- 	FOREIGN KEY (author_id)
-- 		REFERENCES authors(author_id)
);

CREATE TABLE professors(
professor_id SERIAL PRIMARY KEY,
professor_name VARCHAR(13) UNIQUE NOT NULL,
professor_email VARCHAR(50) NOT NULL,
course_id INT NOT NULL,
CONSTRAINT fk_course
	FOREIGN KEY (course_id)
		REFERENCES courses(course_id)
);

CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
student_name VARCHAR(13) UNIQUE NOT NULL,
professor_email VARCHAR(50) NOT NULL,
course_id INT NOT NULL,
CONSTRAINT fk_course
	FOREIGN KEY (course_id)
		REFERENCES courses(course_id)
);

CREATE TABLE assignments(
assignment_id SERIAL PRIMARY KEY,
assignment_name VARCHAR(13) UNIQUE NOT NULL,
course_id INT NOT NULL,
CONSTRAINT fk_course
	FOREIGN KEY (course_id)
		REFERENCES courses(course_id)
);

CREATE TABLE grades(
grade_id SERIAL PRIMARY KEY,
assignment_id INT NOT NULL,
professor_email VARCHAR(50) NOT NULL,
CONSTRAINT fk_assignment
	FOREIGN KEY (assignment_id)
		REFERENCES assignments(assignment_id)
);


