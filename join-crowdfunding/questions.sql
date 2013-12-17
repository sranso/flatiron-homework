-- Select the titles of all projects and their pledge amounts.
SELECT projects.title, pledges.amount FROM projects
JOIN pledges
ON projects.id = pledges.project_id;
-- Select the user name, age, and pledge amount for all pledges.
SELECT u.name, u.age, p.amount
FROM users u
JOIN pledges p
ON u.id = p.user_id;
-- Select the titles of all projects that have met their funding goal.
-- **** doesn't work
SELECT pr.title, pr.funding_goal, SUM(pl.amount) AS 'funding_to_date'
FROM projects pr
JOIN pledges pl
ON pr.id = pl.project_id && pr.funding_goal <= SUM(pl.amount)
GROUP BY pr.title
ORDER BY pr.title;
-- Select user names and amounts of all pledges. Order them by the amount.
SELECT u.name, SUM(p.amount) AS "amt-of-all-pledges"
FROM users u
JOIN pledges p
WHERE u.id = p.user_id
GROUP BY u.name
ORDER BY SUM(p.amount);
-- Select the category names, and pledge amounts of all pledges in the music category.
SELECT pr.category, pl.amount
FROM projects pr
JOIN pledges pl
ON pr.id = pl.project_id
WHERE pr.category = "music";
-- Select the category names and the **sum total** of the pledge amounts of all the pledges in the book category.
SELECT pr.category, SUM(pl.amount) AS "sum-total"
FROM projects pr
JOIN pledges pl
ON pr.id = pl.project_id
WHERE pr.category = "books";