
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: ref_survey_result
 * @order: 4
 */

CREATE TABLE health_survey.ref_survey_result(
 result_id serial PRIMARY KEY,
 result_description VARCHAR (25) NOT NULL,
 result_score INTEGER NOT NULL DEFAULT 0
);