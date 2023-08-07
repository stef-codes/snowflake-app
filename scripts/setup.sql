-- Setup script for the Hello Snowflake! application.
CREATE APPLICATION ROLE app_public; 
CREATE SCHEMA IF NOT EXISTS core; 
GRANT USAGE PN SCHEMA core TO APPLICATION ROLE app_public; 

CREATE OR REPLACE PROCEDURE CORE.HELLO()
    RETURNS STRING
    LANGUAGE SQL
    EXECUTE AS OWNER 
    AS 
    BEGIN
        RETURN 'Heyyyyyy Snowflake'; 
    END; 

GRANT USAGE ON PROCEDURE core.hello() TO APPLICATION ROLE app_public; 

