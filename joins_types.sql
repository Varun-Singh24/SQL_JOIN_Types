--  This is CROSS JOIN 
SELECT * FROM people JOIN states ;   
--  this Joins all rows from 1st table to 2nd table 

--  Inner JOIN -- IT gives the common(overlaps) rows from both tables 
SELECT * from people JOIN states 
ON people.state_code = states.state_abbrev ;

-- Left OUTER JOIN 
-- left table dominating 
--  Elements from the left table 

SELECT * from people 
LEFT JOIN states 
ON people.state_code = states.state_abbrev ;

--  RIGHT OUTER JOIN 
SELECT * from people 
Right JOIN states 
ON people.state_code = states.state_abbrev ;


-- FULL OUTER JOIN 
-- IT represents each record from both table .. Which rows dont match they are NULL 


SELECT * from people FULL OUTER JOIN states 
ON people.state_code = states.state_abbrev ; 


SELECT DISTINCT(people.state_code) ,  states.state_abbrev 
from STATES 
LEFT JOIN people ON people.state_code = states.state_abbrev 
ORDER BY people.state_code ; 
