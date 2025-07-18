create database IPL_2025;
use IPL_2025;
-- Reference Key Note: Since both tables are about different innings of the same match, we'll use a common match ID (match_id) to link them.

CREATE TABLE punjab_innings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    match_id INT,
    overs VARCHAR(10),
    batter VARCHAR(50),
    bowler VARCHAR(50),
    runs_batter INT,
    runs_extras INT,
    extras_type VARCHAR(20),
    wicket VARCHAR(30),
    player_out VARCHAR(50),
    fielders VARCHAR(50),
    INDEX (match_id) -- ✅ Add index for foreign key reference
);
CREATE TABLE rcb_innings (
    ball_id INT PRIMARY KEY AUTO_INCREMENT,
    match_id INT,
    overs VARCHAR(10),
    batter VARCHAR(50),
    bowler VARCHAR(50),
    runs_batter INT,
    runs_extras INT,
    extras_type VARCHAR(20),
    wicket VARCHAR(30),
    player_out VARCHAR(50),
    fielders VARCHAR(50),
    FOREIGN KEY (match_id) REFERENCES punjab_innings(match_id)
);

INSERT INTO punjab_innings 
(match_id, overs, batter, bowler, runs_batter, runs_extras, extras_type, wicket, player_out, fielders)
VALUES 
(1, '1', 'Priyansh Arya', 'Bhuvneshwar Kumar', 2, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Priyansh Arya', 'Bhuvneshwar Kumar', 0, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Priyansh Arya', 'Bhuvneshwar Kumar', 4, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Priyansh Arya', 'Bhuvneshwar Kumar', 1, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 0, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 1, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Prabhsimran Singh', 'Yash Dayal' , 1, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Priyansh Arya', 'Yash Dayal', 0, 0, NULL, "Wicket",'Priyansh Arya' ,"Krunal Pandya"),
(1, '2', 'Josh Inglis', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Prabhsimran Singh', 'Yash Dayal' , 2, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Prabhsimran Singh', 'Yash Dayal' , 0, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Prabhsimran Singh', 'Yash Dayal', 6, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Josh Inglis', 'Bhuvneshwar Kumar', 0, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Josh Inglis', 'Bhuvneshwar Kumar', 1, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 4, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 4, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 0, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Prabhsimran Singh', 'Bhuvneshwar Kumar', 0, 0, NULL, "Wicket",'Prabhsimran Singh', 'Jitesh Sharma'),
(1, '4', 'Josh Inglis', 'Josh Hazlewood', 1, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Shreyas Iyer', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', "Shreyas Iyer", 'Josh Hazlewood', 2, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Shreyas Iyer', 'Josh Hazlewood', 0, 0, NULL, "Wicket", "Shreyas Iyer", 'Jitesh Sharma'),
(1, '4', 'Nehal Wadhera', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Nehal Wadhera', 'Josh Hazlewood', 1, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Nehal Wadhera', 'Yash Dayal', 0, 1, "NB", NULL, NULL, NULL),
(1, '5', 'Nehal Wadhera', 'Yash Dayal', 4, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Nehal Wadhera', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Nehal Wadhera', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Nehal Wadhera', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Josh Inglis', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Josh Inglis', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Josh Inglis', 'Josh Hazlewood', 0, 0, NULL, "Wicket", 'Josh Inglis', "Bhuvneshwar Kumar"),
(1, '6', 'Marcus Stoinis', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Marcus Stoinis', 'Josh Hazlewood', 4, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Marcus Stoinis', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Marcus Stoinis', 'Josh Hazlewood', 6, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Marcus Stoinis', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Nehal Wadhera', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Nehal Wadhera', 'Yash Dayal', 2, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Nehal Wadhera', 'Yash Dayal', 0, 0, NULL,"Wicket" ,"Nehal Wadhera", NULL),
(1, '7', 'Shashank Singh', 'Yash Dayal', 2, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Shashank Singh', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Shashank Singh', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Marcus Stoinis', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Marcus Stoinis', 'Josh Hazlewood', 4, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Marcus Stoinis', 'Josh Hazlewood', 1, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Shashank Singh', 'Josh Hazlewood', 1, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Marcus Stoinis', 'Josh Hazlewood', 0, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Marcus Stoinis', 'Josh Hazlewood', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Marcus Stoinis', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Shashank Singh', 'Suyash Sharma', 0, 0, NULL, "Wicket",'Shashank Singh' , NULL),
(1, '9', 'Musheer Khan', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Musheer Khan', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Musheer Khan', 'Suyash Sharma', 0, 0, NULL, "Wicket", 'Musheer Khan', NULL),
(1, '9', 'Azmatullah Omarzai', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Azmatullah Omarzai', 'Krunal Pandya', 0, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Azmatullah Omarzai', 'Krunal Pandya', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Marcus Stoinis', 'Krunal Pandya', 6, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Marcus Stoinis', 'Krunal Pandya', 0, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Marcus Stoinis', 'Krunal Pandya', 2, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Marcus Stoinis', 'Krunal Pandya', 1, 0, NULL, NULL, NULL, NULL),
(1, '11', 'Marcus Stoinis', 'Suyash Sharma', 0, 5, "Wide", NULL, NULL, NULL),
(1, '11', 'Marcus Stoinis', 'Suyash Sharma', 0, 1, "LB", NULL, NULL, NULL),
(1, '11', 'Azmatullah Omarzai', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '11', 'Marcus Stoinis', 'Suyash Sharma', 0, 0, NULL, "Wicket", 'Marcus Stoinis', NULL),
(1, '11', 'Harpreet Brar', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '11', 'Harpreet Brar', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '11', 'Harpreet Brar', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Azmatullah Omarzai', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Harpreet Brar', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Harpreet Brar', 'Yash Dayal', 2, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Harpreet Brar', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Azmatullah Omarzai', 'Yash Dayal', 1, 0, NULL, NULL, NULL, NULL),
(1, '12', 'Harpreet Brar', 'Yash Dayal', 0, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Azmatullah Omarzai', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Harpreet Brar', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Azmatullah Omarzai', 'Suyash Sharma', 6, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Azmatullah Omarzai', 'Suyash Sharma', 1, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Harpreet Brar', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '13', 'Harpreet Brar', 'Suyash Sharma', 0, 0, NULL, NULL, NULL, NULL),
(1, '14', 'Azmatullah Omarzai', 'Romario Shepherd', 4, 0, NULL, NULL, NULL, NULL),
(1, '14', 'Azmatullah Omarzai', 'Romario Shepherd', 1, 0, NULL, NULL, NULL, NULL),
(1, '14', 'Harpreet Brar', 'Romario Shepherd', 0, 0, NULL, "Wicket",'Harpreet Brar', NULL),
(1, '14', 'Kyle Jamieson', 'Romario Shepherd', 0, 0, NULL, NULL, NULL, NULL),
(1, '14', 'Kyle Jamieson', 'Romario Shepherd', 0, 4, "LB", NULL, NULL, NULL),
(1, '14', 'Kyle Jamieson', 'Romario Shepherd', 0, 0, NULL, NULL, NULL, NULL),
(1, '15', 'Azmatullah Omarzai', 'Josh Hazlewood', 0, 0, NULL,"Wicket" ,'Azmatullah Omarzai' , "jitesh sharma");


INSERT INTO rcb_innings 
(match_id, overs, batter, bowler, runs_batter, runs_extras, extras_type, wicket, player_out, fielders)
VALUES 
(1, '1', 'Phil Salt', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Virat Kohli', 'Arshdeep Singh', 4, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Virat Kohli', 'Arshdeep Singh', 0, 4, "LB", NULL, NULL, NULL),
(1, '1', 'Virat Kohli', 'Arshdeep Singh', 0, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Virat Kohli', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '1', 'Phil Salt', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Phil Salt', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Phil Salt', 'Kyle Jamieson', 1, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Virat Kohli', 'Kyle Jamieson', 4, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Virat Kohli', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Virat Kohli', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '2', 'Virat Kohli', 'Kyle Jamieson', 1, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Virat Kohli', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Phil Salt', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Virat Kohli', 'Arshdeep Singh', 1, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Phil Salt', 'Arshdeep Singh', 4, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Phil Salt', 'Arshdeep Singh', 0, 0, NULL, NULL, NULL, NULL),
(1, '3', 'Phil Salt', 'Arshdeep Singh', 6, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Virat Kohli', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Virat Kohli', 'Kyle Jamieson', 0, 0, NULL, "Wicket",'Virat Kohli' , "Josh Inglis"),
(1, '4', 'Mayank Agarwal', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Mayank Agarwal', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Mayank Agarwal', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '4', 'Mayank Agarwal', 'Kyle Jamieson', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 4, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 0, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 2, 0, NULL, NULL, NULL, NULL),
(1, '5', 'Phil Salt', 'Azmatullah Omarzai', 4, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Mayank Agarwal', 'Kyle Jamieson', 4, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Mayank Agarwal', 'Kyle Jamieson', 1, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Phil Salt', 'Kyle Jamieson', 2, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Phil Salt', 'Kyle Jamieson', 4, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Phil Salt', 'Kyle Jamieson', 4, 0, NULL, NULL, NULL, NULL),
(1, '6', 'Phil Salt', 'Kyle Jamieson', 6, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Mayank Agarwal', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Phil Salt', 'Harpreet Brar', 6, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Phil Salt', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Mayank Agarwal', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Phil Salt', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '7', 'Mayank Agarwal', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Mayank Agarwal', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Phil Salt', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Mayank Agarwal', 'Musheer Khan', 6, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Mayank Agarwal', 'Musheer Khan', 4, 0, NULL, NULL, NULL, NULL),
(1, '8', 'Mayank Agarwal', 'Musheer Khan', 0, 0, NULL, "Wicket", 'Mayank Agarwal', NULL),
(1, '8', 'Rajat Patidar', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Rajat Patidar', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Phil Salt', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Rajat Patidar', 'Harpreet Brar', 0, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Rajat Patidar', 'Harpreet Brar', 1, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Phil Salt', 'Harpreet Brar', 4, 0, NULL, NULL, NULL, NULL),
(1, '9', 'Phil Salt', 'Harpreet Brar', 0, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Rajat Patidar', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Phil Salt', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Rajat Patidar', 'Musheer Khan', 4, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Rajat Patidar', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Phil Salt', 'Musheer Khan', 1, 0, NULL, NULL, NULL, NULL),
(1, '10', 'Rajat Patidar', 'Musheer Khan', 6, 0, NULL, NULL, NULL, NULL);

select * from punjab_innings;
select * from rcb_innings;




-- Replace "wicket" with a valid integer, or NULL
SET SQL_SAFE_UPDATES = 0;

UPDATE punjab_innings
SET runs_batter = NULL
WHERE wicket = 'Wicket';

UPDATE rcb_innings
SET runs_batter = NULL
WHERE wicket = 'Wicket';
SET SQL_SAFE_UPDATES = 1;