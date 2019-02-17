
/* @author: DhanyaJ
 * @type:	VIEW	
 * @title:	view_age_range_report
 * @remarks:ADMIN USE CASE 3.b age range report
 */

CREATE VIEW health_survey.view_age_range_report AS						 
 SELECT ques.q_description,	ans.result_description,
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 0 AND 9 THEN 1 ELSE 0 END) AS "[0-9]",
        	SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 10 AND 19 THEN 1 ELSE 0 END) AS "[10-19]",
        	SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 20 AND 29 THEN 1 ELSE 0 END) AS "[20-29]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 30 AND 30 THEN 1 ELSE 0 END) AS "[30-39]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 40 AND 49 THEN 1 ELSE 0 END) AS "[40-49]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 50 AND 59 THEN 1 ELSE 0 END) AS "[50-59]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 60 AND 69 THEN 1 ELSE 0 END) AS "[60-69]",
	 	SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 60 AND 69 THEN 1 ELSE 0 END) AS "[70-79]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 60 AND 69 THEN 1 ELSE 0 END) AS "[80-89]",
		SUM(CASE WHEN EXTRACT(YEAR FROM AGE(res.dob)) BETWEEN 60 AND 69 THEN 1 ELSE 0 END) AS "[90-99]"
FROM
 	health_survey.survey_result sur, health_survey.ref_survey_result ans,
	health_survey.respondent_master res, health_survey.ref_survey_questions ques
WHERE
	sur.survey_result_id  = ans.result_id AND
	sur.respondent_id = res.user_id AND
	sur.survey_q_id = ques.q_id
GROUP BY ques.q_description, ans.result_description;