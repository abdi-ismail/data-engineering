DROP TABLE IF EXISTS transaction;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS loan;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS branch;


CREATE TABLE branch(
branch_id SERIAL PRIMARY KEY,
branch_name VARCHAR(50),
address VARCHAR(50),
phone_number CHAR(11),
manager_id INT
);

CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(200),
address VARCHAR(100),
DoB DATE,
phone_number CHAR(11),
email VARCHAR(50),
join_date DATE,
branch_id INT,
CONSTRAINT fk_cust_branch
	FOREIGN KEY (branch_id)
		REFERENCES branch(branch_id)
);


CREATE TABLE employee(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
position VARCHAR(100),
hire_date DATE,
salary NUMERIC(7,2),
branch_id INT,
CONSTRAINT fk_employee_branch
	FOREIGN KEY (branch_id)
		REFERENCES branch(branch_id)
);

CREATE TABLE loan(
loan_id SERIAL PRIMARY KEY,
customer_id INT,
loan_type VARCHAR(50),
amount NUMERIC(7,2),
interest_rate NUMERIC(5,4),
start_date DATE,
end_date DATE,
status BOOLEAN,
CONSTRAINT fk_loan_cust
	FOREIGN KEY (customer_id)
		REFERENCES customer(customer_id)
);


CREATE TABLE account(
account_id SERIAL PRIMARY KEY,
account_number INT,
customer_id INT,
account_type VARCHAR(50),
balance NUMERIC(7,2),
date_opened DATE,
CONSTRAINT fk_acc_cust
	FOREIGN KEY (customer_id)
		REFERENCES customer(customer_id)
);

CREATE TABLE transaction(
transaction_id SERIAL PRIMARY KEY,
account_id INT,
transaction_type VARCHAR(50),
amount NUMERIC(7,2),
transaction_date DATE,
description VARCHAR(50),
CONSTRAINT fk_trans_acc
	FOREIGN KEY (account_id)
		REFERENCES account(account_id)
);


insert into branch (branch_name, address, phone_number, manager_id) values ('Harris-Jones', '68536 Grover Street', '1845641356', 49);
insert into branch (branch_name, address, phone_number, manager_id) values ('Runolfsson, Tromp and Fisher', '2 Havey Point', '5124233245', 12);
insert into branch (branch_name, address, phone_number, manager_id) values ('Denesik, Lueilwitz and Feeney', '85673 Coleman Terrace', '5232310759', 21);
insert into branch (branch_name, address, phone_number, manager_id) values ('Wintheiser, Nolan and Durgan', '118 Division Lane', '7922494337', 4);
insert into branch (branch_name, address, phone_number, manager_id) values ('Stanton, Beahan and Schoen', '5 Corry Point', '8881776921', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Julie', 'Woehler', '00754 5th Pass', '2007/07/15', '6572090264', 'jwoehler0@goo.gl', '2023/02/27', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Bonni', 'Di Biasio', '00696 Hollow Ridge Point', '2011/07/19', '3464199247', 'bdibiasio1@smh.com.au', '2023/07/23', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Giustina', 'Fido', '19972 Spaight Hill', '1977/02/14', '6562249742', 'gfido2@cyberchimps.com', '2023/01/22', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Emmott', 'Domleo', '157 Ridgeway Way', '1992/11/22', '1856738831', 'edomleo3@bluehost.com', '2021/07/09', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Franciska', 'Guinan', '72444 Vermont Street', '2010/06/09', '7096720151', 'fguinan4@google.com', '2021/11/08', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Alix', 'Standring', '15 Corry Terrace', '1991/12/06', '3607500881', 'astandring5@netvibes.com', '2024/07/18', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Herb', 'Rattenberie', '28151 Mockingbird Terrace', '1985/12/23', '6552627706', 'hrattenberie6@webmd.com', '2023/01/07', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Chrysler', 'Gauge', '3 Mallory Road', '1983/12/25', '4731520097', 'cgauge7@google.com.au', '2020/02/25', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Janey', 'Petyt', '35221 Kim Alley', '2019/03/02', '5093535052', 'jpetyt8@xinhuanet.com', '2021/03/15', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Bridie', 'Matteuzzi', '77 3rd Alley', '1998/02/27', '1541292925', 'bmatteuzzi9@imgur.com', '2022/10/08', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Deb', 'Othen', '28 Forster Point', '1983/06/19', '9839448105', 'dothena@shareasale.com', '2021/08/17', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Alyson', 'Ibberson', '21790 Swallow Circle', '2006/07/19', '9527822484', 'aibbersonb@dyndns.org', '2024/08/12', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Nev', 'Adamek', '28 Fisk Center', '2011/12/11', '8719753205', 'nadamekc@cargocollective.com', '2020/12/16', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Roshelle', 'Teece', '7099 Manufacturers Trail', '2013/09/18', '3836300873', 'rteeced@princeton.edu', '2021/12/13', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Morgen', 'Abriani', '6 Center Pass', '1996/06/29', '7693051259', 'mabrianie@posterous.com', '2021/07/12', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tedd', 'Moughtin', '328 Blackbird Road', '2001/03/07', '6639983737', 'tmoughtinf@cpanel.net', '2022/06/21', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Celestyna', 'Akroyd', '2966 Clarendon Center', '1996/07/24', '2486027895', 'cakroydg@odnoklassniki.ru', '2020/11/10', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Rodney', 'Easun', '7 Grim Point', '2018/05/21', '9274300727', 'reasunh@cloudflare.com', '2024/01/20', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Deloris', 'Laminman', '3596 Maryland Trail', '2009/04/14', '3377284243', 'dlaminmani@dedecms.com', '2023/10/22', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Read', 'Nelhams', '39 Rockefeller Point', '1975/09/17', '8492252767', 'rnelhamsj@soundcloud.com', '2021/07/28', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Lindon', 'Smedmoor', '42993 1st Trail', '2004/10/27', '1693734591', 'lsmedmoork@imgur.com', '2022/03/11', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Cynde', 'Willbraham', '4 Stang Way', '1999/12/04', '9813226225', 'cwillbrahaml@1688.com', '2020/07/03', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Gregor', 'Whittick', '34 Onsgard Terrace', '1971/12/14', '9469388327', 'gwhittickm@sakura.ne.jp', '2023/04/01', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jaine', 'Rider', '39 Magdeline Road', '1984/05/11', '3267771640', 'jridern@nifty.com', '2021/03/29', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Leonard', 'Mathews', '26988 Badeau Avenue', '2017/04/11', '6547796245', 'lmathewso@plala.or.jp', '2022/07/11', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Darnell', 'Caddan', '72988 Forest Dale Road', '2019/09/27', '7021525449', 'dcaddanp@gizmodo.com', '2024/07/28', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tamiko', 'Alleburton', '272 Bluejay Drive', '2001/06/06', '3697722678', 'talleburtonq@redcross.org', '2023/10/19', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Olvan', 'Sarney', '87334 Caliangt Park', '1974/01/21', '8447406548', 'osarneyr@netscape.com', '2022/01/08', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Carissa', 'Voff', '1 Meadow Ridge Circle', '1971/12/09', '5549813836', 'cvoffs@wp.com', '2024/04/13', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jacquelyn', 'Alexis', '374 Independence Point', '1971/12/26', '9029951436', 'jalexist@dell.com', '2021/06/21', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Granny', 'Govett', '66399 Shasta Lane', '1972/04/14', '9715322506', 'ggovettu@ed.gov', '2024/02/01', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Alleen', 'Shermore', '59803 Cherokee Avenue', '1984/06/28', '1708440065', 'ashermorev@discovery.com', '2024/03/17', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Willa', 'Luce', '8 Goodland Drive', '2016/06/02', '6039878537', 'wlucew@comcast.net', '2024/10/02', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Victor', 'Beevis', '048 Pierstorff Drive', '1977/06/04', '3957976874', 'vbeevisx@vkontakte.ru', '2021/11/13', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Michaelina', 'Sendall', '6237 Muir Road', '1993/02/06', '2871675504', 'msendally@squidoo.com', '2020/01/06', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Bernadette', 'Blanchard', '2020 Glendale Avenue', '2001/06/30', '4036955382', 'bblanchardz@nps.gov', '2023/09/27', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Sheffie', 'Benediktovich', '3 Northwestern Hill', '1990/08/10', '2339536620', 'sbenediktovich10@geocities.com', '2023/10/14', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Essa', 'Sikorsky', '64140 Gateway Terrace', '1984/03/27', '7378956672', 'esikorsky11@tinyurl.com', '2020/10/25', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Harlin', 'Sacker', '0312 Doe Crossing Hill', '1976/09/05', '7284085863', 'hsacker12@ucla.edu', '2021/11/18', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Amata', 'Bengle', '9 Hoepker Crossing', '1986/03/06', '3693643098', 'abengle13@com.com', '2023/04/09', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jemmie', 'Gull', '45823 Hintze Parkway', '1982/02/02', '3878887488', 'jgull14@techcrunch.com', '2022/08/29', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jamesy', 'Addicote', '83 Scofield Plaza', '2017/10/15', '8473727560', 'jaddicote15@ft.com', '2021/01/15', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jeffry', 'Marrett', '206 Dennis Place', '1996/12/28', '7216534660', 'jmarrett16@networksolutions.com', '2020/05/29', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Sasha', 'Bracchi', '1033 Mariners Cove Avenue', '1983/09/24', '9689116235', 'sbracchi17@goo.ne.jp', '2020/03/06', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Lay', 'Seathwright', '6214 Morrow Plaza', '1984/12/19', '4379932013', 'lseathwright18@freewebs.com', '2022/05/07', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Lilith', 'Battson', '06 Monument Crossing', '1974/09/18', '2091832412', 'lbattson19@who.int', '2021/11/14', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Iseabal', 'Sawl', '1 Morning Way', '2015/06/28', '6271678249', 'isawl1a@trellian.com', '2023/10/08', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Zebulon', 'Lambard', '5657 Rusk Court', '1983/02/01', '8081341472', 'zlambard1b@prnewswire.com', '2020/08/10', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Susannah', 'Timewell', '50 Hoffman Place', '1994/01/29', '5839779527', 'stimewell1c@cam.ac.uk', '2023/06/15', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Sergei', 'Brunstan', '4950 Bay Hill', '1995/07/14', '1188969063', 'sbrunstan1d@cnbc.com', '2021/05/27', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Shannon', 'Tickle', '8 Gerald Plaza', '1990/08/01', '4885853140', 'stickle1e@ted.com', '2021/09/09', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Bertrand', 'Megson', '53 Lotheville Plaza', '2014/12/11', '2926528893', 'bmegson1f@nasa.gov', '2024/11/02', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jordan', 'Eskrigge', '9548 Judy Way', '1974/06/30', '6184520317', 'jeskrigge1g@goo.gl', '2021/10/19', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Justin', 'Rickersey', '9463 Granby Hill', '2007/11/24', '6627181558', 'jrickersey1h@sakura.ne.jp', '2024/09/11', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Ariadne', 'Tack', '4 Westport Terrace', '1978/12/29', '4385586322', 'atack1i@deviantart.com', '2024/03/01', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Frannie', 'MacMenemy', '3 Debra Point', '1974/02/10', '6381099125', 'fmacmenemy1j@arizona.edu', '2023/07/05', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Georgie', 'Dye', '14718 Declaration Plaza', '2003/01/08', '9162963130', 'gdye1k@tiny.cc', '2022/03/06', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Nikolos', 'Madelin', '40 Chive Plaza', '1992/05/09', '5211540955', 'nmadelin1l@mapquest.com', '2024/08/03', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tadd', 'Rachuig', '32 Oak Terrace', '2013/03/06', '9346027472', 'trachuig1m@washington.edu', '2021/08/09', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Cornelia', 'McHardy', '52674 Eliot Hill', '2018/01/28', '3704709101', 'cmchardy1n@spotify.com', '2021/12/13', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Uriah', 'Duggon', '337 Petterle Court', '1982/10/04', '2571063485', 'uduggon1o@altervista.org', '2021/05/01', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Rinaldo', 'Hardey', '196 Schurz Circle', '2010/10/28', '1657331776', 'rhardey1p@sourceforge.net', '2022/07/12', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Odilia', 'McDonand', '3 Cardinal Hill', '2012/01/03', '6082970709', 'omcdonand1q@creativecommons.org', '2023/08/26', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Rhona', 'Egginson', '03 Division Lane', '1999/03/07', '3662942695', 'regginson1r@hostgator.com', '2021/01/14', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Fleming', 'Thowless', '4 4th Place', '2011/05/30', '3467943002', 'fthowless1s@hc360.com', '2021/02/07', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Inness', 'Didball', '98 Raven Drive', '1970/10/24', '3119607280', 'ididball1t@prweb.com', '2023/12/29', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Reinald', 'Yakhin', '9028 Gerald Drive', '2004/08/22', '1317503988', 'ryakhin1u@dropbox.com', '2024/09/22', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Regan', 'Heffernon', '0 Shoshone Trail', '2016/08/06', '8133630818', 'rheffernon1v@ucla.edu', '2021/05/21', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Corinna', 'Flury', '52 Sachtjen Way', '1977/12/14', '9219656481', 'cflury1w@scientificamerican.com', '2020/09/01', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Enos', 'Betho', '81690 Weeping Birch Center', '1988/08/25', '4618093840', 'ebetho1x@hc360.com', '2023/05/14', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Rafael', 'Busch', '2097 Hintze Parkway', '2004/05/21', '2345710628', 'rbusch1y@dion.ne.jp', '2023/06/10', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Cecily', 'Doddrell', '1 Dovetail Hill', '1977/02/25', '1802559856', 'cdoddrell1z@cpanel.net', '2022/04/01', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Kial', 'Drayson', '17047 Clove Trail', '1987/03/26', '3796632209', 'kdrayson20@google.com', '2023/01/03', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Aldrich', 'Uzzell', '8438 Utah Junction', '1988/03/02', '2723234095', 'auzzell21@google.co.uk', '2020/03/28', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Jermaine', 'Emberson', '1864 Lighthouse Bay Pass', '2010/01/31', '6638743995', 'jemberson22@xinhuanet.com', '2024/01/21', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Alina', 'Kenewel', '4230 Luster Pass', '1976/11/23', '9976193369', 'akenewel23@fc2.com', '2024/09/03', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tabitha', 'Gokes', '68 Gateway Pass', '1971/12/05', '9608481505', 'tgokes24@tumblr.com', '2023/01/15', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tanya', 'Reed', '686 Ludington Hill', '2017/12/10', '2022774040', 'treed25@cdbaby.com', '2021/04/22', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Anatollo', 'Pisco', '10112 Ruskin Lane', '1999/01/21', '2762307315', 'apisco26@nifty.com', '2024/05/13', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Boyce', 'Vsanelli', '852 Oneill Hill', '2001/10/04', '6845188590', 'bvsanelli27@tamu.edu', '2021/12/05', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('William', 'Degnen', '3 Drewry Avenue', '1989/04/05', '7024770769', 'wdegnen28@rakuten.co.jp', '2023/03/12', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Herminia', 'Howroyd', '32481 Pierstorff Junction', '2018/03/20', '8322585643', 'hhowroyd29@tmall.com', '2020/09/25', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Brandyn', 'Yaknov', '26931 5th Court', '1986/02/13', '4115351204', 'byaknov2a@clickbank.net', '2024/01/16', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Fidelio', 'Menelaws', '0057 Mitchell Drive', '2003/05/26', '7196107912', 'fmenelaws2b@ed.gov', '2020/09/12', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Corette', 'Uden', '86757 Buell Court', '1980/04/27', '9542985907', 'cuden2c@nature.com', '2023/07/06', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Bret', 'Marran', '190 Division Park', '2010/04/18', '9018980089', 'bmarran2d@jigsy.com', '2022/09/30', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Nap', 'Bernardoux', '2 Morningstar Crossing', '2012/09/13', '8108842146', 'nbernardoux2e@ustream.tv', '2020/05/20', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Humfrey', 'Brimham', '68778 Lyons Avenue', '2012/04/25', '4426022297', 'hbrimham2f@sakura.ne.jp', '2023/03/31', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Idalina', 'Eringey', '08 Northfield Drive', '1984/01/20', '4121565594', 'ieringey2g@surveymonkey.com', '2020/07/17', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Odetta', 'Barkworth', '15350 Hayes Circle', '1989/11/06', '7389089149', 'obarkworth2h@furl.net', '2020/04/14', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Tamara', 'Konzelmann', '541 Wayridge Avenue', '2018/08/11', '3194456958', 'tkonzelmann2i@marketwatch.com', '2023/01/25', 3);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Sylvan', 'Carous', '1 Granby Lane', '2000/07/25', '5667361337', 'scarous2j@squidoo.com', '2021/01/08', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Ruthie', 'Cranna', '79 Saint Paul Junction', '2012/07/18', '9519542080', 'rcranna2k@sina.com.cn', '2022/10/09', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Mariana', 'Fife', '18 Schiller Park', '1975/12/23', '6248897978', 'mfife2l@topsy.com', '2024/09/09', 2);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Alessandra', 'Avramov', '45 Hansons Place', '2011/06/19', '5634323425', 'aavramov2m@bandcamp.com', '2023/05/23', 4);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Carver', 'Clacson', '067 Kings Plaza', '2012/09/19', '1161240095', 'cclacson2n@archive.org', '2020/07/05', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Dennison', 'Robb', '5937 Sunbrook Parkway', '1986/01/22', '2385117008', 'drobb2o@nydailynews.com', '2023/02/25', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Perry', 'Eland', '10710 Bultman Trail', '1976/12/24', '2748340988', 'peland2p@samsung.com', '2021/11/25', 1);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Feliza', 'Cassar', '267 Dovetail Way', '1977/12/17', '6815047223', 'fcassar2q@reverbnation.com', '2020/12/03', 5);
insert into customer (first_name, last_name, address, DoB, phone_number, email, join_date, branch_id) values ('Homer', 'Linde', '35 Warner Alley', '2014/04/29', '3721062092', 'hlinde2r@flavors.me', '2020/11/26', 5);

insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Querida', 'Holdren', 'Tax Accountant', '2024/11/03', 28224.45, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Leona', 'Dodsley', 'Assistant Media Planner', '2024/08/07', 28763.54, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Ronalda', 'Cecil', 'Physical Therapy Assistant', '2024/07/12', 34934.9, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Isacco', 'Haggett', 'Administrative Officer', '2024/11/04', 42355.36, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Pippy', 'Rushforth', 'Environmental Tech', '2024/06/18', 61529.25, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Drusy', 'Lytell', 'Account Coordinator', '2023/12/28', 28940.29, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('George', 'Hustings', 'Associate Professor', '2024/02/16', 41517.83, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Adams', 'Flaherty', 'Clinical Specialist', '2024/02/19', 37192.87, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Christoper', 'Reneke', 'Registered Nurse', '2023/12/19', 37991.75, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Myranda', 'Playfoot', 'Account Coordinator', '2024/08/30', 37176.12, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Fairleigh', 'Ravenshear', 'Design Engineer', '2024/07/26', 43207.96, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Rees', 'Scamel', 'Staff Scientist', '2024/06/08', 53798.56, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Tandy', 'McKinnon', 'Budget/Accounting Analyst III', '2024/03/04', 42170.18, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Jodi', 'Broadfoot', 'Structural Analysis Engineer', '2024/09/02', 40395.69, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Gerri', 'Bowick', 'Computer Systems Analyst II', '2024/04/08', 38231.08, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Ab', 'Croney', 'Budget/Accounting Analyst III', '2023/11/20', 55596.06, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Karisa', 'Steffan', 'Research Nurse', '2024/01/25', 69396.68, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('June', 'Grubbe', 'Civil Engineer', '2024/05/01', 27541.07, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Ranee', 'Del Checolo', 'Marketing Assistant', '2024/08/23', 70916.6, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Anita', 'Canniffe', 'Information Systems Manager', '2024/07/08', 59623.92, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Rodolfo', 'Gisbourn', 'Actuary', '2024/11/15', 33049.36, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Jacquette', 'Mattosoff', 'Graphic Designer', '2024/10/30', 47332.14, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Dyna', 'Melloi', 'Technical Writer', '2024/09/12', 54692.37, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Drusie', 'Bodicam', 'Director of Sales', '2024/05/21', 35872.39, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Sallie', 'Scowcraft', 'Internal Auditor', '2024/11/05', 53450.81, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Ogdon', 'Mercik', 'Web Designer III', '2024/02/07', 79342.15, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Siegfried', 'Bartosiak', 'Software Test Engineer II', '2024/04/06', 48892.6, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Pennie', 'Vaulkhard', 'Product Engineer', '2024/07/24', 55970.64, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Tanner', 'Frape', 'Structural Analysis Engineer', '2024/06/06', 38149.83, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Kleon', 'Matthensen', 'Assistant Media Planner', '2024/09/19', 57833.83, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Charline', 'Spilling', 'VP Accounting', '2024/04/19', 58890.77, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Monroe', 'Shackleton', 'Web Designer I', '2024/07/27', 50234.21, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Svend', 'Eye', 'Safety Technician IV', '2023/12/23', 50764.33, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Carree', 'Wigsell', 'VP Accounting', '2024/08/20', 45254.6, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Alane', 'Hosier', 'Sales Associate', '2024/06/18', 67556.34, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Flora', 'Tomas', 'Administrative Assistant I', '2024/07/16', 72027.4, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Nowell', 'Simmans', 'Geologist I', '2024/04/12', 64912.44, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Darrelle', 'Verner', 'Financial Advisor', '2024/07/29', 76829.75, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Frasco', 'Housecraft', 'Senior Developer', '2024/08/07', 37476.33, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Montgomery', 'Surby', 'Media Manager II', '2024/11/06', 39446.02, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Goddart', 'Hillett', 'Nurse', '2024/04/12', 72916.19, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Heriberto', 'Ruske', 'VP Sales', '2024/04/01', 41254.93, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Shell', 'MacIlory', 'Civil Engineer', '2024/04/14', 34743.37, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Teressa', 'Loins', 'Director of Sales', '2024/02/12', 48431.35, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Earvin', 'Grinyov', 'Computer Systems Analyst III', '2024/07/16', 74883.78, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Lanna', 'Deering', 'Statistician I', '2024/10/27', 59635.77, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Horatia', 'Syde', 'Web Developer I', '2024/01/08', 79618.18, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Kincaid', 'Larvent', 'Cost Accountant', '2024/03/11', 35567.77, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Herman', 'Abram', 'Web Designer III', '2024/08/23', 30969.76, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Marline', 'Cornwall', 'Librarian', '2024/10/29', 30745.5, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Victoir', 'Giffaut', 'Senior Editor', '2024/03/13', 25041.7, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Bryn', 'Studd', 'Software Engineer II', '2024/01/27', 61723.94, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Jackquelin', 'Wisker', 'Paralegal', '2024/09/13', 30266.57, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Hymie', 'Douty', 'Senior Quality Engineer', '2024/08/30', 43488.51, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Ynes', 'Shieber', 'Dental Hygienist', '2024/01/16', 42709.45, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Davy', 'Weben', 'Quality Control Specialist', '2024/09/29', 27415.83, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Nicolea', 'Pickersail', 'Business Systems Development Analyst', '2024/04/02', 78665.4, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Minetta', 'Kemmet', 'Automation Specialist II', '2023/12/13', 75843.22, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Conny', 'Easseby', 'Legal Assistant', '2024/04/24', 45970.24, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Brannon', 'Manuelli', 'Senior Editor', '2024/02/13', 67269.24, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Lanny', 'Beevis', 'Human Resources Manager', '2024/10/27', 62826.62, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Calvin', 'Cordier', 'Software Consultant', '2024/09/09', 74973.26, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Lurette', 'Toomer', 'Compensation Analyst', '2024/02/05', 63512.88, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Marielle', 'Spering', 'Information Systems Manager', '2024/04/16', 66159.89, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Olenka', 'Hydes', 'Product Engineer', '2024/07/09', 46282.02, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Addie', 'Joynson', 'Actuary', '2024/03/13', 43989.21, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Malina', 'Hugill', 'Editor', '2023/12/14', 54202.4, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Almire', 'Riley', 'Statistician III', '2024/06/11', 28263.78, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Rodie', 'Cleaton', 'Environmental Specialist', '2024/04/17', 41941.55, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Kennan', 'Maylam', 'Marketing Assistant', '2024/09/14', 57368.04, 1);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Jaine', 'Mintoff', 'Research Associate', '2024/03/26', 79309.36, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Alecia', 'Simoni', 'Paralegal', '2024/10/08', 36403.19, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Konstantine', 'Koppen', 'Social Worker', '2024/05/12', 75071.25, 2);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Shepperd', 'Leopard', 'Product Engineer', '2024/05/20', 25227.12, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Missie', 'Pottberry', 'Quality Control Specialist', '2024/10/12', 67973.49, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Kathlin', 'Karran', 'Programmer III', '2023/11/25', 68073.53, 5);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Minerva', 'Perrinchief', 'Software Engineer IV', '2024/03/04', 55561.12, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Jeanie', 'Inott', 'Help Desk Technician', '2024/01/14', 59553.55, 4);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Siward', 'Wike', 'Compensation Analyst', '2024/03/07', 25465.54, 3);
insert into employee (first_name, last_name, position, hire_date, salary, branch_id) values ('Nyssa', 'Itzhaiek', 'Administrative Officer', '2024/06/29', 76528.61, 3);

insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (59, 'AF', 3293, 0.342, '2022/04/22', '2024/08/20', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (21, 'SA', 89794, 0.686, '2022/09/16', '2024/09/10', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (12, 'OC', 21469, 0.827, '2022/06/21', '2024/07/31', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (7, 'NA', 76721, 0.51, '2022/07/28', '2024/10/25', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (42, 'NA', 10016, 0.862, '2022/04/05', '2024/08/13', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (48, 'NA', 7799, 0.529, '2021/12/17', '2024/02/08', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (81, 'AF', 76015, 0.235, '2021/12/19', '2023/11/23', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (64, 'EU', 57731, 0.292, '2021/11/27', '2023/12/03', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (10, 'NA', 2678, 0.125, '2022/03/15', '2024/10/13', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (93, 'NA', 13934, 0.897, '2022/02/14', '2024/05/04', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (17, 'AS', 46809, 0.392, '2022/07/13', '2024/10/26', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (17, 'NA', 64307, 0.207, '2022/05/28', '2024/02/04', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (30, 'AF', 44428, 0.745, '2022/08/11', '2024/08/18', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (93, 'NA', 99671, 0.213, '2022/02/04', '2024/07/23', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (69, 'NA', 54057, 0.775, '2022/01/22', '2024/04/04', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (99, 'NA', 92980, 0.656, '2022/02/10', '2024/11/05', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (92, 'OC', 39394, 0.551, '2022/04/18', '2023/11/21', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (40, 'EU', 32640, 0.767, '2022/08/13', '2024/02/29', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (90, 'NA', 75957, 0.404, '2022/01/03', '2024/08/19', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (28, 'AS', 87535, 0.904, '2022/01/12', '2024/06/05', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (4, 'SA', 63424, 0.935, '2022/05/04', '2024/10/15', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (2, 'AS', 34647, 0.764, '2022/09/22', '2024/07/22', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (3, 'NA', 80330, 0.482, '2022/06/01', '2024/05/17', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (20, 'NA', 14072, 0.304, '2022/11/01', '2024/04/18', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (99, 'NA', 85798, 0.2, '2022/03/17', '2024/10/01', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (34, 'OC', 69841, 0.208, '2021/12/24', '2024/03/11', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (71, 'NA', 92272, 0.128, '2022/09/12', '2023/12/14', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (27, 'AF', 86155, 0.849, '2022/02/16', '2024/01/30', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (83, 'NA', 70511, 0.681, '2022/04/16', '2024/01/17', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (89, 'NA', 82649, 0.89, '2021/12/03', '2024/06/04', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (20, 'EU', 25973, 0.517, '2022/08/15', '2024/05/25', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (22, 'OC', 53075, 0.151, '2022/05/05', '2024/10/21', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (4, 'AS', 55622, 0.022, '2022/08/05', '2024/02/21', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (63, 'AF', 72480, 0.399, '2022/05/29', '2024/09/12', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (94, 'OC', 15608, 0.342, '2022/03/31', '2024/01/07', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (68, 'OC', 35025, 0.417, '2022/09/14', '2024/04/13', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (4, 'NA', 84748, 0.377, '2022/04/10', '2024/01/25', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (36, 'AF', 23362, 0.634, '2022/08/12', '2024/08/05', true);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (85, 'NA', 78129, 0.615, '2022/05/12', '2024/09/23', false);
insert into loan (customer_id, loan_type, amount, interest_rate, start_date, end_date, status) values (29, 'OC', 30902, 0.337, '2022/10/08', '2024/10/19', false);

insert into account (account_number, customer_id, account_type, balance, date_opened) values (46, 1, 'approach', 61403.38, '2023/09/17');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (52, 2, 'empowering', 8300.07, '2024/08/18');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (35, 3, 'User-friendly', 35084.93, '2023/02/06');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (8, 4, 'parallelism', 99535.01, '2024/01/28');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (89, 5, 'solution', 60992.08, '2023/08/31');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (88, 6, 'policy', 21783.31, '2024/06/14');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (33, 7, 'human-resource', 65624.3, '2023/03/18');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (99, 8, 'demand-driven', 91738.35, '2024/11/08');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (30, 9, 'capability', 37280.37, '2023/03/09');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (46, 10, 'budgetary management', 45852.01, '2023/10/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (87, 11, 'value-added', 82882.15, '2023/12/15');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (10, 12, 'Open-architected', 70883.22, '2024/05/31');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (51, 13, 'time-frame', 32740.36, '2024/09/10');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (59, 14, 'Progressive', 14178.43, '2023/09/28');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (84, 15, 'system engine', 9185.54, '2024/04/21');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (94, 16, 'explicit', 985.74, '2022/09/24');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (8, 17, '24 hour', 8537.32, '2023/07/21');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (4, 18, 'neutral', 47317.6, '2024/08/31');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (64, 19, 'framework', 46922.34, '2024/06/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (13, 20, 'local area network', 85730.62, '2023/06/05');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (37, 21, 'human-resource', 20336.35, '2023/03/10');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (70, 22, 'Versatile', 99960.11, '2024/09/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (7, 23, 'ability', 28739.72, '2022/07/06');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (32, 24, 'coherent', 97413.0, '2024/04/15');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (50, 25, 'multi-state', 7032.7, '2022/07/21');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (25, 26, 'Down-sized', 94477.19, '2023/08/17');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (8, 27, 'bandwidth-monitored', 73550.57, '2022/06/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (83, 28, '24/7', 41182.35, '2024/02/23');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (31, 29, 'Team-oriented', 5967.75, '2024/11/06');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (93, 30, 'middleware', 34325.28, '2024/11/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (31, 31, 'secured line', 98338.17, '2022/07/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (11, 32, 'reciprocal', 14301.4, '2022/05/18');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (51, 33, 'didactic', 31915.19, '2024/10/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (91, 34, 'background', 50301.21, '2023/06/23');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (66, 35, 'Customer-focused', 74264.44, '2023/06/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (93, 36, 'content-based', 8923.52, '2022/06/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (47, 37, 'parallelism', 42445.55, '2024/05/28');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (94, 38, 'approach', 56947.69, '2023/05/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (95, 39, 'mobile', 95012.9, '2024/06/04');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (43, 40, 'leverage', 98107.91, '2023/10/13');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (65, 41, 'infrastructure', 13204.61, '2022/09/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (70, 42, 'protocol', 51773.02, '2024/04/25');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (19, 43, 'Total', 58260.54, '2022/08/03');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (46, 44, 'Grass-roots', 45487.23, '2023/12/16');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (82, 45, 'Progressive', 77516.51, '2022/05/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (38, 46, 'strategy', 23056.65, '2024/11/04');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (95, 47, 'empowering', 95738.91, '2024/02/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (65, 48, 'Team-oriented', 63045.75, '2024/08/01');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (11, 49, 'concept', 47221.68, '2023/12/31');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (27, 50, 'object-oriented', 7112.21, '2024/03/17');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (98, 51, 'Ameliorated', 47076.01, '2022/06/03');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (62, 52, 'intermediate', 1090.13, '2024/03/13');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (7, 53, 'Grass-roots', 5978.23, '2024/11/06');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (96, 54, 'Digitized', 91070.33, '2023/04/12');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (52, 55, 'Organic', 56672.14, '2023/11/06');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (59, 56, 'Object-based', 21685.61, '2024/01/08');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (40, 57, 'Intuitive', 61153.4, '2024/10/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (57, 58, 'Managed', 5953.77, '2024/06/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (3, 59, 'multimedia', 21652.47, '2024/06/22');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (73, 60, 'Face to face', 2918.92, '2023/04/20');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (71, 61, 'fault-tolerant', 35711.41, '2024/04/13');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (46, 62, 'bifurcated', 6304.91, '2024/01/24');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (58, 63, 'Virtual', 33938.44, '2024/02/05');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (37, 64, 'Networked', 44258.86, '2024/01/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (30, 65, '24 hour', 15840.63, '2024/10/29');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (81, 66, 'local area network', 95144.09, '2022/09/22');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (97, 67, 'Polarised', 15585.51, '2023/06/18');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (92, 68, 'Configurable', 65737.26, '2023/06/03');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (60, 69, 'Sharable', 27691.4, '2024/01/25');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (90, 70, 'Synchronised', 7419.65, '2022/07/26');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (21, 71, 'Polarised', 57800.86, '2022/12/05');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (71, 72, 'Automated', 16838.17, '2024/02/04');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (45, 73, 'User-friendly', 81414.63, '2022/06/23');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (60, 74, 'executive', 70736.59, '2023/04/14');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (51, 75, 'incremental', 13463.38, '2023/09/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (22, 76, 'parallelism', 28757.0, '2022/08/07');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (95, 77, 'value-added', 79808.71, '2023/07/20');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (32, 78, 'function', 6405.58, '2022/05/02');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (64, 79, 'leading edge', 90322.07, '2022/11/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (89, 80, 'responsive', 15196.64, '2023/04/09');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (38, 81, 'disintermediate', 46294.84, '2024/04/24');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (85, 82, 'Down-sized', 94453.39, '2024/07/28');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (85, 83, 'attitude', 33382.55, '2024/08/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (56, 84, 'model', 54792.8, '2023/05/18');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (84, 85, 'De-engineered', 12995.45, '2024/04/24');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (16, 86, 'concept', 66263.45, '2023/10/14');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (50, 87, 'real-time', 34785.28, '2023/07/19');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (65, 88, 'discrete', 92682.66, '2023/11/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (71, 89, 'emulation', 10786.71, '2023/07/27');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (20, 90, 'Object-based', 17014.46, '2024/08/14');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (54, 91, 'Streamlined', 19655.93, '2023/09/11');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (76, 92, 'Sharable', 30206.64, '2023/04/04');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (42, 93, 'eco-centric', 43626.91, '2024/03/03');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (12, 94, 'motivating', 2580.29, '2023/01/13');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (21, 95, 'attitude', 97640.2, '2023/04/22');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (70, 96, 'moratorium', 50691.12, '2023/12/22');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (75, 97, 'encryption', 92407.82, '2022/05/29');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (40, 98, 'local area network', 74689.8, '2023/02/25');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (85, 99, 'secondary', 74342.37, '2022/09/10');
insert into account (account_number, customer_id, account_type, balance, date_opened) values (81, 100, 'Cloned', 47295.49, '2024/05/12');

insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (88, 'asymmetric', 10598.1, '2024/04/30', 'INO');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (15, 'synergy', 52421.99, '2024/07/25', 'ALV');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (63, 'Organic', 26215.26, '2024/09/14', 'DNF');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (11, 'Multi-lateral', 9613.09, '2024/08/04', 'OMC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (74, 'impactful', 5127.96, '2024/03/16', 'NPT');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (87, 'background', 74764.07, '2024/03/11', 'CUZ');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (91, 'internet solution', 13716.29, '2024/07/08', 'ASN');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (35, 'hybrid', 30805.93, '2023/12/24', 'SHY');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (36, 'database', 57210.49, '2024/04/12', 'YBH');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (82, 'background', 3703.38, '2024/02/05', 'DBB');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (68, 'Networked', 81584.12, '2024/06/25', 'VIV');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (50, 'Open-source', 97626.29, '2024/05/10', 'VUS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (33, 'discrete', 98201.44, '2024/07/01', 'CYC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (66, 'help-desk', 15737.52, '2024/04/25', 'UKR');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (48, 'Reverse-engineered', 60136.53, '2024/02/08', 'NAK');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (39, 'capability', 96400.72, '2024/01/28', 'XKY');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (55, 'Persistent', 57560.79, '2024/07/25', 'FMG');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (31, 'moratorium', 60702.78, '2024/09/16', 'TYZ');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (34, 'User-friendly', 67846.46, '2024/03/04', 'TCE');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (37, 'Versatile', 7374.47, '2024/06/11', 'HUC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (65, 'reciprocal', 2550.6, '2024/06/29', 'HBU');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (1, 'Fully-configurable', 86211.96, '2024/06/10', 'BZH');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (23, 'standardization', 53714.82, '2024/07/28', 'LWN');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (9, 'zero administration', 85116.96, '2024/02/24', 'XYR');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (17, 'Customer-focused', 20322.73, '2024/01/02', 'WFI');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (26, 'Customer-focused', 42967.15, '2024/01/09', 'MTC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (86, 'pricing structure', 43696.95, '2024/03/30', 'DNA');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (44, 'tangible', 82081.1, '2024/04/27', 'FXE');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (15, 'local', 78244.63, '2024/09/09', 'RBD');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (2, 'actuating', 39614.29, '2024/03/13', 'AHO');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (81, '5th generation', 76386.38, '2023/12/05', 'CEB');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (44, 'extranet', 58877.41, '2024/03/15', 'LAI');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (22, 'directional', 79895.83, '2024/02/23', 'AXD');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (32, 'approach', 95478.02, '2024/02/05', 'ZKL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (70, 'intangible', 35212.67, '2024/01/15', 'VGS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (14, 'demand-driven', 44586.1, '2024/06/08', 'ASM');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (89, 'uniform', 85730.72, '2024/03/08', 'LPK');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (15, 'attitude-oriented', 19148.85, '2024/11/06', 'KBT');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (39, 'multi-tasking', 53808.89, '2024/08/26', 'MVM');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (60, 'attitude', 30733.5, '2024/01/10', 'CRO');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (40, 'Synergistic', 48776.63, '2023/12/30', 'OPA');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (62, 'framework', 11789.87, '2023/11/21', 'AAO');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (29, 'interactive', 80591.96, '2024/08/22', 'PXH');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (59, 'orchestration', 25559.37, '2024/04/07', 'ARE');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (16, 'national', 98470.1, '2024/09/01', 'TRB');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (40, 'Integrated', 32429.26, '2023/11/18', 'GAL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (44, 'grid-enabled', 71879.14, '2024/05/25', 'HMB');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (28, 'solution', 67512.01, '2023/12/09', 'TBA');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (41, 'structure', 14668.3, '2024/02/09', 'PEP');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (14, 'Synergistic', 98198.17, '2024/08/18', 'BDW');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (78, 'Compatible', 11197.29, '2024/08/23', 'SJS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (64, 'toolset', 42792.09, '2024/09/14', '0');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (95, 'implementation', 69830.27, '2024/03/29', 'VLG');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (95, 'circuit', 94342.01, '2023/12/09', 'VAN');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (75, 'Progressive', 17127.59, '2023/11/19', 'QOW');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (79, 'leading edge', 56008.41, '2024/03/19', 'DGP');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (12, 'alliance', 77776.74, '2023/12/29', 'MCK');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (46, 'Assimilated', 2774.32, '2024/06/27', 'HNL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (36, 'next generation', 71834.47, '2024/09/11', 'PPC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (75, '24 hour', 68485.44, '2024/01/04', 'PFC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (47, 'Decentralized', 23728.01, '2023/12/18', 'MIN');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (59, 'scalable', 77372.64, '2024/03/14', 'TQR');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (69, 'data-warehouse', 84681.03, '2024/04/24', 'ZMM');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (41, 'internet solution', 8369.14, '2024/11/06', 'SGA');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (83, 'matrices', 7017.62, '2024/06/25', 'ADM');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (21, 'extranet', 98642.22, '2023/12/15', 'HGL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (38, 'Synergized', 62519.05, '2024/02/18', 'WNZ');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (21, 'client-server', 22953.18, '2023/11/25', 'BZS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (2, 'project', 96035.2, '2024/09/22', 'IBL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (100, 'clear-thinking', 80771.17, '2024/09/22', 'DMD');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (91, 'stable', 94816.32, '2023/12/24', 'CMH');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (80, 'radical', 46136.1, '2023/12/22', 'ROB');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (42, 'hybrid', 54621.76, '2024/01/11', 'JAN');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (5, 'grid-enabled', 15248.25, '2024/06/20', 'SCO');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (6, 'Diverse', 73476.42, '2024/09/03', 'LIS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (49, 'composite', 40006.76, '2024/03/20', 'SDL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (29, 'leading edge', 98451.37, '2024/02/18', 'GIY');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (6, 'definition', 54411.58, '2024/06/03', 'MQU');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (49, 'even-keeled', 57977.29, '2024/08/01', 'POF');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (44, 'projection', 89294.9, '2024/03/20', 'CSE');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (90, 'Decentralized', 57695.18, '2024/09/29', 'SNS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (73, 'disintermediate', 72826.29, '2024/01/26', 'PEP');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (83, 'maximized', 16044.22, '2024/08/23', 'KVL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (29, 'implementation', 99250.13, '2023/12/04', 'ADF');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (38, 'instruction set', 91517.42, '2024/09/04', 'IRK');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (10, 'bottom-line', 73158.37, '2024/07/13', 'NLF');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (6, 'local area network', 33482.86, '2024/08/28', 'GMZ');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (56, 'foreground', 94272.56, '2024/10/09', 'LNZ');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (28, 'strategy', 48513.91, '2024/02/13', 'BAC');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (14, 'alliance', 32745.31, '2024/01/12', 'MOY');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (77, 'zero administration', 62866.7, '2024/07/31', 'IRS');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (31, 'approach', 60307.59, '2024/08/16', 'LEI');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (38, 'dedicated', 86062.77, '2024/05/28', 'RVT');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (21, 'Grass-roots', 84867.58, '2024/09/19', 'HYA');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (76, 'instruction set', 15535.84, '2024/09/28', 'SLE');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (22, 'Sharable', 83254.82, '2024/07/05', 'SBK');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (73, 'motivating', 71748.63, '2023/12/30', 'MNL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (40, 'system engine', 74560.54, '2024/04/25', 'ERU');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (13, 'composite', 35967.86, '2024/04/12', 'VRL');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (74, 'circuit', 48953.97, '2024/01/17', 'KZF');
insert into transaction (account_id, transaction_type, amount, transaction_date, description) values (50, 'model', 55001.41, '2024/11/02', 'HMJ');

-- SELECT * FROM account
-- WHERE balance < 10000

-- SELECT * FROM loan
-- JOIN customer ON loan.customer_id = customer.customer_id

-- SELECT MAX(salary) FROM employee

-- SELECT COUNT(customer_id), customer_id FROM loan
-- GROUP BY customer_id
-- order by COUNT(customer_id) DESC


SELECT COUNT(l.customer_id), l.customer_id, customer.first_name, customer.last_name FROM loan l
JOIN customer ON l.customer_id = customer.customer_id
GROUP BY l.customer_id, customer.first_name, customer.last_name
order by COUNT(l.customer_id) DESC

-- SELECT E.first_name, E.last_name, E.position, B.manager_id, B.branch_id
-- from employee E
-- JOIN branch B on b.manager_id = E.employee_id;

-- SELECT COUNT ()

-- SELECT COUNT(customer_id) FROM loan
-- WHERE customer_id = 4

-- SELECT * FROM loan
-- WHERE customer_id = 4

-- SELECT * FROM loan
-- WHERE amount BETWEEN 10000 AND 20000
-- SELECT AVG(salary)
-- FROM employee;