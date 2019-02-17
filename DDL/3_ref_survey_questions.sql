
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: ref_survey_questions
 * @order: 3
 */

CREATE TABLE health_survey.ref_survey_questions(
 q_id serial PRIMARY KEY,
 q_description VARCHAR (200) NOT NULL,
 q_priority BOOLEAN NOT NULL DEFAULT false
);
