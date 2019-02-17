
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: login_details
 * @order: 6
 */

CREATE TABLE health_survey.login_details(
 username VARCHAR (350) PRIMARY KEY,
 password VARCHAR (350) NOT NULL,
 ref_respondent_id INTEGER REFERENCES health_survey.respondent_master(user_id),
 ref_admin_id INTEGER REFERENCES health_survey.admin_master(admin_id),
 last_login TIMESTAMP NOT NULL
);