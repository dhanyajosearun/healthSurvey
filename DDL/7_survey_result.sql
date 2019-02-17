
/*
 * @author: DhanyaJ
 * @type:	TABLE	
 * @title:	survey_result
 * @order:	7
 */

CREATE TABLE health_survey.survey_result(
 survey_id serial PRIMARY KEY,
 respondent_id INTEGER REFERENCES health_survey.respondent_master(user_id),
 survey_q_id INTEGER REFERENCES health_survey.ref_survey_questions(q_id),
 survey_result_id INTEGER REFERENCES health_survey.ref_survey_result(result_id) ,
 survey_time TIMESTAMP NOT NULL
);