
/* @author: DhanyaJ
 * @type:	VIEW	
 * @title:	view_gender_postcode_report
 * @remarks:ADMIN USE CASE 3.a postcode gender report
 */

CREATE VIEW health_survey.view_gender_postcode_report AS 
SELECT  res.postcode, res.gender, ques.q_description,
		ans.result_description, COUNT(sur.survey_result_id)
FROM
 health_survey.survey_result sur, health_survey.ref_survey_result ans,
 health_survey.respondent_master res, health_survey.ref_survey_questions ques
WHERE
	sur.survey_result_id  = ans.result_id AND
	sur.respondent_id = res.user_id AND
	sur.survey_q_id = ques.q_id
GROUP BY res.postcode, res.gender, ques.q_id, ans.result_id
ORDER BY res.postcode, res.gender, ques.q_id,ans.result_id;