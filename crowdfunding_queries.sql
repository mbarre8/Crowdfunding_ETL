--Simple select statements to confirm data upload was successful
select * from subcategory;
select * from category;
select * from contacts;
select * from campaign;

--Successful campaign by amount
Select goal, pledged, outcome
from campaign
where outcome = 'successful';

--Average pledged amount
select round(AVG (pledged)) AS "Average Pledge"
FROM campaign;

--Average goal amount
select round(AVG (goal)) AS "Average goal"
FROM campaign;

--Goal/pledge ratio
select round(AVG(goal))/round(AVG(pledged)) as "Average success rate"
From campaign;

--Max and Min pledged
select Max(pledged), Min(pledged)
from campaign
group by outcome ='successful';

-- Create a view to carve out only USD campaigns
drop view if exists crowdfunding_usd;

create view crowdfunding_usd as
select cam.*, cat.category, scat.subcategory, con.first_name, con.last_name, con.email
from campaign as cam
join category as cat on cam.category_id = cat.category_id
join subcategory as scat on cam.subcategory_id = scat.subcategory_id
join contacts as con on cam.contact_id = con.contact_id
where cam.currency = 'USD';

-- Simple select to confirm view was created successfully
select * from crowdfunding_usd;

