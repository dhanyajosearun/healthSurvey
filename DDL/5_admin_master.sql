
/*
 * @author: DhanyaJ
 * @type:	TABLE
 * @title: admin_master
 * @order: 5
 */

CREATE TABLE health_survey.admin_master(
 admin_id serial PRIMARY KEY,
 first_name VARCHAR (100) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 email VARCHAR (350) UNIQUE NOT NULL,
 hie_level VARCHAR (10),
 CONSTRAINT hie_level_fkey FOREIGN KEY (hie_level)
      REFERENCES health_survey.ref_hie_access_level(hie_level) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);