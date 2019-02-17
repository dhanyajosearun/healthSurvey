
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: ref_hie_access_level
 * @order: 2
 */
 
 CREATE TABLE health_survey.ref_hie_access_level(
 hie_id serial PRIMARY KEY,
 hie_level VARCHAR (4) UNIQUE NOT NULL,
 hie_level_desc VARCHAR (20) UNIQUE NOT NULL,
 hie_top_access INTEGER DEFAULT 0
);