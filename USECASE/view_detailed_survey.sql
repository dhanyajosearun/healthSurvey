
/*
 * @author: DhanyaJ
 * @type:	VIEW	
 * @title:	view_detailed_survey
 */

CREATE VIEW health_survey.view_detailed_survey AS SELECT
 sur.respondent_id ,TRIM(CONCAT(res.first_name,' ', res.last_name)) AS Name, 
 ques.q_description, ans.result_description 
FROM
 health_survey.survey_result sur, health_survey.respondent_master res, 
 health_survey.ref_survey_questions ques, health_survey.ref_survey_result ans
WHERE
sur.respondent_id = res.user_id AND
sur.survey_q_id   = ques.q_id   AND
sur.survey_result_id  = ans.result_id;