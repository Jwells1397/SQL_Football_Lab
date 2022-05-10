--psql -d football -f football_queries.sql

-- 1.Find all the matches from 2017.

SELECT * FROM matches WHERE season = 2017;


--2.Find all the matches featuring Barcelona.

SELECT * FROM matches WHERE (hometeam = 'Barcelona' OR awayteam = 'Barcelona');

--3.What are the names of the Scottish divisions included?


SELECT divisions.name From divisions WHERE Country = 'Scotland';

--4. Find the division code for the Bundesliga. 
--Use that code to find out how many matches Freiburg have played 
--in the Bundesliga since the data started being collected.

SELECT * FROM matches Where division_code = 'D1' AND (hometeam = 'Freiburg'
OR awayteam = 'Freiburg');



--5.Find the unique names of the teams which include the word 
--"City" in their name (as entered in the database)

SELECT id FROM matches WHERE hometeam LIKE '%City%' OR awayteam LIKE '%City%';

--6.How many different teams 
--have played in matches recorded in a French division?
--SELECT hometeam AND awayteam FROM matches WHERE division_code = 'F1' OR division_code ='F2' GROUP BY hometeam AND awayteam;