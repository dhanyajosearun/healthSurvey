
--health_survey.ref_hie_access_level

INSERT INTO health_survey.ref_hie_access_level(
	 hie_level, hie_level_desc, hie_top_access)
	VALUES ('S', 'Super Admin', 1000);

INSERT INTO health_survey.ref_hie_access_level(
	 hie_level, hie_level_desc, hie_top_access)
	VALUES ('M', 'Branch Admin', 500);

INSERT INTO health_survey.ref_hie_access_level(
	 hie_level, hie_level_desc, hie_top_access)
	VALUES ('B', 'Base Admin', 100); 


--health_survey.admin_master

INSERT INTO health_survey.admin_master(
	first_name, last_name, email, hie_level)
	VALUES ('Dhanya', 'Jose' ,'dhanyajose@gmail.com', 'S');

INSERT INTO health_survey.admin_master(
	first_name, last_name, email, hie_level)
	VALUES ('Joseph', 'Jose' ,'josephjose@gmail.com', 'M');

INSERT INTO health_survey.admin_master(
	first_name, last_name, email, hie_level)
	VALUES ('Anne', 'Jose' ,'annejose@gmail.com', 'B');

INSERT INTO health_survey.admin_master(
	first_name, last_name, email, hie_level)
	VALUES ('David', 'Jose' ,'davidjose@gmail.com', 'S');

INSERT INTO health_survey.admin_master(
	first_name, last_name, email, hie_level)
	VALUES ('Alex', 'Jose' ,'alexjose@gmail.com', 'B');

--health_survey.ref_survey_result

INSERT INTO health_survey.ref_survey_result(
	result_description, result_score)
	VALUES ( 'Not at all', 0);

INSERT INTO health_survey.ref_survey_result(
	result_description, result_score)
	VALUES ( 'Several Days', 1);

INSERT INTO health_survey.ref_survey_result(
	result_description, result_score)
	VALUES ( 'More than Half the days', 2);

INSERT INTO health_survey.ref_survey_result(
	result_description, result_score)
	VALUES ( 'Nearly every day', 3);

--health_survey.ref_survey_questions

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Feeling nervous, anxious or on edge', true);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Not being able to stop or control worrying', false);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Worrying too much about different things', true);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Trouble relaxing', true);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Being so restless that it is hard to sit still', true);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Becoming easily annoyed or irritable', false);

INSERT INTO health_survey.ref_survey_questions(
	q_description, q_priority)
	VALUES ('Feeling afraid as if something awful might happen', true);

--health_survey.respondent_master

INSERT INTO health_survey.respondent_master(
	first_name, last_name, gender, postcode, email, dob)
	VALUES ( 'Rebecca', 'wright', 'F', 'HX13DU', 'rebecca@gmail.com', '1990-01-01');

INSERT INTO health_survey.respondent_master(
	first_name, last_name, gender, postcode, email, dob)
	VALUES ( 'Alex', 'Matthew', 'M', 'HX13DU', 'alex@gmail.com', '1995-02-17');

INSERT INTO health_survey.respondent_master(
	first_name, last_name, gender, postcode, email, dob)
	VALUES ( 'Sam', 'Evans', 'M', 'HX13DU', 'sam@gmail.com', '1988-11-11');

INSERT INTO health_survey.respondent_master(
	first_name, last_name, gender, postcode, email, dob)
	VALUES ( 'Lucy', 'Summers', 'F', 'HX13DU', 'lucy@gmail.com', '1968-08-21');

--health_survey.login_details

INSERT INTO health_survey.login_details(
	username, password, ref_respondent_id, ref_admin_id, last_login)
	VALUES ('dhanya', 'dhanya',null ,2 , '2019-02-17 19:10:25-07');

INSERT INTO health_survey.login_details(
	username, password, ref_respondent_id, ref_admin_id, last_login)
	VALUES ('rebecca', 'rebecca',1,null, '2019-02-17 19:10:25-07');

INSERT INTO health_survey.login_details(
	username, password, ref_respondent_id, ref_admin_id, last_login)
	VALUES ('alex123', 'alex123',2,null, '2019-02-17 12:10:25-07');

INSERT INTO health_survey.login_details(
	username, password, ref_respondent_id, ref_admin_id, last_login)
	VALUES ('david', 'david', null, 5, '2019-02-17 16:10:25-07');

--health_survey.survey_result

INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 2, 2, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 1, 3, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 3, 2, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 4, 2, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 5, 2, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 6, 2, '2019-02-17 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (2, 7, 2, '2019-02-17 19:10:25-07');


INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 2, 1, '2019-02-11 11:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 1, 3, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 3, 2, '2019-02-11 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 4, 4, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 5, 2, '2019-02-11 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 6, 1, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (3, 7, 2, '2019-02-11 19:10:25-07');

INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 2, 1, '2019-02-11 11:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 2, 3, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 2, 2, '2019-02-11 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 3, 4, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 3, 2, '2019-02-11 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 6, 1, '2019-02-08 19:10:25-07');
INSERT INTO health_survey.survey_result(
	respondent_id, survey_q_id, survey_result_id, survey_time)
	VALUES (4, 7, 2, '2019-02-11 19:10:25-07');