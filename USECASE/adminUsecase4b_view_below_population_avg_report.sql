
/* @author: DhanyaJ
 * @type:	VIEW	
 * @title:	view_below_population_avg_report
 * @remarks:ADMIN USE CASE 4.b below one std deviation from popultion avg
 */



CREATE VIEW health_survey.view_below_population_avg_report AS
SELECT sur.respondent_id resid, COUNT(sur.survey_result_id) countres ,AVGQ.respvg-1 devres FROM
	(SELECT AVG(respcount) AS respvg 
	   FROM( SELECT  COUNT(*) AS respcount 
		   	 FROM  health_survey.survey_result sur
		     WHERE	sur.survey_result_id  = 1	
		     GROUP BY sur.respondent_id ) AS COUNTQ 	
	) AS AVGQ, health_survey.survey_result sur
WHERE	sur.survey_result_id  = 1
GROUP BY sur.respondent_id,AVGQ.respvg;

/*	SELECT res.* 
		FROM health_survey.view_below_population_avg_report avgpop, 
			 health_survey.respondent_master res
		WHERE res.user_id =avgpop.resid AND
			  avgpop.devres>avgpop.countres;	*/