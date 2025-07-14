

--                                                         Project Questions


-- 1.Classify each ball in the Punjab innings as either a "Boundary", "Single", "Dot Ball", or "Other" based on the runs_batter value. -- Using CASE:
select overs, runs_batter, 
case
when runs_batter = 4 or runs_batter=6 Then "Boundary"
when runs_batter = 1  Then "single"
when runs_batter = 0  Then "Dot Ball"
else  "Other"
end as "Baller information"
from punjab_innings;


-- 2.Retrieve the top 5 highest-scoring batters in the RCB innings based on total runs. -- Using ORDER BY and LIMIT:
select batter, sum(COALESCE(runs_batter, 0)) as "total runs"
from rcb_innings
group by batter
order by 2 desc limit 5;

-- 3.Rank bowlers in the Punjab innings based on the total runs they conceded, including extras. -- Using RANK() Window Function:
SELECT bowler, SUM(COALESCE(runs_batter, 0) + COALESCE(runs_extras, 0)) AS "total runs conceded",
RANK() OVER (ORDER BY SUM(COALESCE(runs_batter, 0) + COALESCE(runs_extras, 0)) DESC) AS "bowler rank"
FROM punjab_innings
GROUP BY bowler;                                   -- COALESCE() handles NULL values (treats them as 0).


-- 4. Identify the first scoring shot (non-zero runs_batter) for every batter in the RCB innings. -- Using ROW_NUMBER() Partitioned by Batter:
SELECT batter, bowler, overs, runs_batter
FROM (SELECT batter,bowler,overs,runs_batter,
ROW_NUMBER() OVER (PARTITION BY batter ) AS rn
FROM rcb_innings WHERE runs_batter > 0) AS sub
WHERE rn = 1;


-- 5.  Generate a cumulative scorecard showing the progressive total score after each ball in Punjab’s innings. -- Using SUM() OVER():
select id, overs,runs_batter,runs_extras,
SUM(COALESCE(runs_batter, 0) + COALESCE(runs_extras, 0)) over( order by id ) AS "cummulative score"
from punjab_innings;

-- 6. total runs for each player in both teams 
select r.batter, sum(r.runs_batter) from rcb_innings r group by 1;
select p.batter, sum(p.runs_batter) from punjab_innings p group by 1;

-- 7. Count how many dismissals were caught, bowled, or others in the Punjab innings using wicket and fielders. -- Using CASE inside Aggregation:
select 
case 
when fielders is not null then "caught" 
when fielders is null and bowler is not null then "bowled"
Else "others"
end as dismissal_type,
COUNT(*) AS count
FROM punjab_innings
WHERE wicket IS NOT NULL
GROUP BY dismissal_type;


-- 8. Find all bowlers who gave more than 10 runs in any over. -- Using HAVING Clause:
select bowler,SUM(COALESCE(runs_batter, 0) + COALESCE(runs_extras, 0)) as sums
from rcb_innings
group by 1
having sums > 10;

-- 9. Divide Punjab’s innings into three phases (early, middle, and death overs) and calculate the total runs scored in each phase. -- Using NTILE() and CTE:

WITH phase AS (SELECT NTILE(3) OVER (ORDER BY id) AS phase, COALESCE(runs_batter,0) + COALESCE(runs_extras,0) AS runs
FROM punjab_innings)
SELECT 
CASE phase WHEN 1 THEN 'Early' WHEN 2 THEN 'Middle' ELSE 'Death' END AS phase_name,
SUM(runs) AS total_runs
FROM phase
GROUP BY phase;

-- 10. print name of those players who played as batsman and bowler both in PBKS .
select distinct pbks.overs as "PBKS Overs",rcb.overs as "RCB Overs",pbks.batter as "PBKS BATTER",rcb.bowler AS "PBKS Bowler" 
from punjab_innings pbks 
join rcb_innings rcb on rcb.match_id=pbks.match_id 
where rcb.bowler= pbks.batter;

-- 11. print name of musheer khan with overs if he played both as a bowler and batsmen in pbks vs RCB. 
select distinct pbks.overs as "PBKS Overs",rcb.overs as "RCB Overs",pbks.batter as "PBKS BATTER",rcb.bowler AS "PBKS Bowler" 
from punjab_innings pbks 
join rcb_innings rcb on rcb.match_id=pbks.match_id 
where rcb.bowler= "Musheer khan" and pbks.batter= "musheer khan";