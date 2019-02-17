
/* @author: DhanyaJ
 * @type:	VIEW	
 * @title:	view_weekly_avg_result
 * @remarks:ADMIN USE CASE 4.a WEEKLY AVERAGE RESPONDENT ANSWERED RESULT_TYPE 
 *			ASSUMING TEST TAKEN 5 DAYS A WEEK (MON TO FRI)
 */


CREATE MATERIALIZED VIEW health_survey.view_weekly_avg_result
AS
	SELECT  ans.result_description, CAST(COUNT(DISTINCT(sur.respondent_id)) AS DECIMAL)/5 Avergae,
		NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER fromDate,	NOW()::DATE toDate
	FROM
 		health_survey.survey_result sur, health_survey.ref_survey_result ans
	WHERE
		sur.survey_result_id  = ans.result_id
		AND sur.survey_time::DATE BETWEEN  NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER AND NOW()::DATE 
	GROUP BY 
		sur.survey_result_id,ans.result_description
WITH NO DATA;

/*
REFRESH MATERIALIZED VIEW health_survey.view_weekly_avg_result;

SELECT * FROM health_survey.view_weekly_avg_result;

*/