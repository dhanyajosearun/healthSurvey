
/*
 * @author: DhanyaJ
 * @type:	FUNCTION
 * @purpose: To get next question id based on priority and lease answered
 * @arguments:integer
 * @return: integer
 * statement in plpgsql.
 */
CREATE OR REPLACE FUNCTION health_survey.get_next_question(resp_id integer)
RETURNS integer AS $BODY$
declare
        strquery text;
        days integer;
		daysquery text;
		subquery text;
		prioquery text;
		nonprioquery text;
		qidLstquery text;
		nextqidQuery text;
		mainquery text;
		next_q_id integer;
		integer_var integer;

BEGIN
   strquery 	:= '';
   next_q_id 	:= 0 ;
   qidLstquery  := FORMAT('SELECT DISTINCT(sur.survey_q_id)  FROM health_survey.survey_result sur,health_survey.ref_survey_questions ques '
	 	    		||' WHERE sur.survey_q_id = ques.q_id AND sur.respondent_id = %s ', resp_id);
   prioquery 	:= ' AND ques.q_priority = true ';
   nonprioquery := ' AND ques.q_priority = false ';
   daysquery 	:= 'select EXTRACT(DOW from NOW())::INTEGER';
   
   EXECUTE daysquery INTO days;

     IF days = 0 THEN
        	subquery := ' AND sur.survey_time::DATE <= NOW()::DATE AND sur.survey_time::DATE >= (now() - ''7 days''::interval)::DATE ';
     ELSIF days = 1 THEN
		subquery := ' AND sur.survey_time::DATE = NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER+1 ';
     ELSE
		subquery := ' AND sur.survey_time::DATE <= NOW()::DATE AND sur.survey_time::DATE >= NOW()::DATE-EXTRACT(DOW from NOW())::INTEGER+1 ';
     END IF;
	 
	 --code for next unanswered priority question for the week #use_case 2.a

    strquery := qidLstquery|| prioquery || subquery;
	nextqidQuery := 'SELECT ques.q_id  FROM health_survey.ref_survey_questions ques '
					||' WHERE ques.q_id NOT IN ('||strquery||') ';
		
	mainquery := nextqidQuery||prioquery||' LIMIT 1';

	raise notice 'mainquery : %', mainquery;
	EXECUTE mainquery INTO next_q_id;
	GET DIAGNOSTICS integer_var = ROW_COUNT;
	
	--code for next unanswered non priority question for the week #use_case 2.b

	IF integer_var = 0 THEN	
		nextqidQuery :='';
		mainquery := '';
		strquery := qidLstquery|| nonprioquery || subquery;
		nextqidQuery := 'SELECT ques.q_id  FROM health_survey.ref_survey_questions ques '
						||' WHERE ques.q_id NOT IN ('||strquery||') ';

	    	mainquery := nextqidQuery|| nonprioquery ||' LIMIT 1';

		raise notice 'mainquery : %', mainquery;
		
		EXECUTE mainquery INTO next_q_id;
		GET DIAGNOSTICS integer_var = ROW_COUNT;
	END IF;
	
	--code for least answered question of the week #use_case 2.c
	
	IF integer_var = 0 THEN
		qidLstquery :='';
		mainquery := '';
		qidLstquery  := FORMAT('SELECT sur.survey_q_id  FROM health_survey.survey_result sur,health_survey.ref_survey_questions ques '
	 	    		||' WHERE sur.survey_q_id = ques.q_id AND sur.respondent_id = %s ', resp_id);
		strquery := qidLstquery|| subquery;
		mainquery := strquery ||' GROUP BY sur.survey_q_id  ORDER BY COUNT(sur.survey_q_id) ASC LIMIT 1';

		raise notice 'mainquery : %', mainquery;
		EXECUTE mainquery INTO next_q_id;
		
	END IF;
	
    RETURN next_q_id;
END;
$BODY$ LANGUAGE plpgsql;