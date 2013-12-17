CREATE TABLE projects (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal INT,
  start_date DATE,
  end_date DATE
);

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name TEXT,
  age INT
);

CREATE TABLE pledges (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  amount MONEY,
  user_id INT,
  project_id INT
);