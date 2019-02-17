
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: respondent_master
 * @order: 1
 */
CREATE TABLE health_survey.respondent_master(
 user_id serial PRIMARY KEY,
 first_name VARCHAR (100) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 gender VARCHAR (5) NOT NULL,
 postcode VARCHAR (10) NOT NULL,
 email VARCHAR (350) UNIQUE NOT NULL,
 dob DATE NOT NULL,
 hie_access INTEGER DEFAULT 0
);