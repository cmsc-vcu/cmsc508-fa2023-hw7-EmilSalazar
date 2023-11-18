# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(4096) NOT NULL,
    tag VARCHAR(255) NOT NULL,
    url VARCHAR(255) DEFAULT NULL,
    time_commitment VARCHAR(255) DEFAULT NULL
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

-- Skill 1: Cybernetic Interface Design
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (1, 'Cybernetic Interface Design', 'Designing futuristic interfaces for cybernetic enhancements, focusing on human-machine interaction.', 'Skill 1', NULL, '1 year');

-- Skill 2: Galactic Botany
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (2, 'Galactic Botany', 'Studying and cultivating exotic plants from different planets, understanding their unique ecosystems.', 'Skill 2', NULL, '2 years');

-- Skill 3: Time Dilation Engineering
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (3, 'Time Dilation Engineering', 'Understanding and applying the principles of time dilation, a concept from the theory of relativity.', 'Skill 3', NULL, '18 months');

-- Skill 4: Quantum Culinary Arts
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (4, 'Quantum Culinary Arts', 'Blending quantum physics with culinary techniques to create dishes that defy conventional taste and texture.', 'Skill 4', NULL, '6 months');

-- Skill 5: Echo Linguistics
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (5, 'Echo Linguistics', 'A new field of study focused on understanding and translating ancient languages through echoic memory techniques.', 'Skill 5', NULL, '3 years');

-- Skill 6: Nebula Photography
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (6, 'Nebula Photography', 'Capturing breathtaking images of nebulae and other celestial phenomena using advanced astrophotography techniques.', 'Skill 6', NULL, '1 year');

-- Skill 7: Intergalactic Navigation
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (7, 'Intergalactic Navigation', 'Navigating through the cosmos using a blend of ancient star maps and modern astronomical tools.', 'Skill 7', NULL, '2 years');

-- Skill 8: Synthetic Ecosystem Management
INSERT INTO skills (id, name, description, tag, url, time_commitment) 
VALUES (8, 'Synthetic Ecosystem Management', 'Managing and sustaining synthetic ecosystems that mimic natural environments in off-world colonies.', 'Skill 8', NULL, '18 months');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id INT PRIMARY KEY,
    first_name VARCHAR(255) DEFAULT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) DEFAULT NULL,
    linkedin_url VARCHAR(255) DEFAULT NULL,
    headshot_url VARCHAR(255) DEFAULT NULL,
    discord_handle VARCHAR(255) DEFAULT NULL,
    brief_bio VARCHAR(4096) DEFAULT NULL,
    date_joined DATE NOT NULL
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

-- Person 1
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (1, 'Alex', 'Person 1', 'alex.person1@example.com', 'https://linkedin.com/in/alexperson1', 'https://example.com/headshots/alex1.jpg', 'AlexTheExplorer#1234', 'Enthusiast in AI and machine learning, loves hiking and photography.', '2021-05-10');

-- Person 2
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (2, 'Bella', 'Person 2', 'bella.person2@example.com', 'https://linkedin.com/in/bellaperson2', 'https://example.com/headshots/bella2.jpg', 'BellaCoder#2345', 'Software developer with a passion for travel and languages.', '2020-04-08');

-- Person 3
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (3, 'Charlie', 'Person 3', 'charlie.person3@example.com', 'https://linkedin.com/in/charlieperson3', 'https://example.com/headshots/charlie3.jpg', 'CharlieSpace#3456', 'Astronomy enthusiast and amateur rocket builder.', '2022-01-15');

-- Person 4
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (4, 'Danielle', 'Person 4', 'danielle.person4@example.com', 'https://linkedin.com/in/danielleperson4', 'https://example.com/headshots/danielle4.jpg', 'DaniArt#4567', 'Graphic designer and digital artist, specializing in 3D modeling.', '2019-11-22');

-- Person 5
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (5, 'Ethan', 'Person 5', 'ethan.person5@example.com', 'https://linkedin.com/in/ethanperson5', 'https://example.com/headshots/ethan5.jpg', 'EthanExplorer#5678', 'Outdoor enthusiast and environmentalist, working in sustainable energy.', '2021-07-03');

-- Person 6
INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) 
VALUES (6, 'Fiona', 'Person 6', 'fiona.person6@example.com', 'https://linkedin.com/in/fionaperson6', 'https://example.com/headshots/fiona6.jpg', 'FionaTech#6789', 'Tech entrepreneur with a focus on developing educational apps for children.', '2020-09-17');


-- insert into people (people_id,people_last_name) values (1,'Person 1');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skills_id INT NOT NULL,
    people_id INT NOT NULL,
    date_acquired DATE NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES skills(id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
-- Person 1: Skills 1, 3, 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (1, 1, '2020-01-15');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 1, '2020-06-20');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (6, 1, '2021-03-11');

-- Person 2: Skills 3, 4, 5
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 2, '2019-11-05');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (4, 2, '2020-07-22');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 2, '2021-02-18');

-- Person 3: Skills 1, 5
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (1, 3, '2021-04-30');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 3, '2021-10-13');

-- Person 5: Skills 3, 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 5, '2020-05-20');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (6, 5, '2021-01-07');

-- Person 6: Skills 2, 3, 4
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (2, 6, '2019-12-16');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 6, '2020-08-29');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (4, 6, '2021-05-04');

-- Person 7: Skills 3, 5, 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 7, '2018-09-10');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 7, '2019-03-15');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (6, 7, '2020-02-20');

-- Person 8: Skills 1, 3, 5, 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (1, 8, '2018-07-19');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (3, 8, '2019-01-22');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 8, '2019-06-30');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (6, 8, '2020-12-05');

-- Person 9: Skills 2, 5, 6
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (2, 9, '2020-04-15');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 9, '2020-09-23');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (6, 9, '2021-06-10');

-- Person 10: Skills 1, 4, 5
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (1, 10, '2019-02-28');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (4, 10, '2020-10-12');
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES (5, 10, '2021-07-21');


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    sort_priority INT NOT NULL
);

# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

-- Designer
INSERT INTO roles (id, name, sort_priority) 
VALUES (1, 'Designer', 10);

-- Developer
INSERT INTO roles (id, name, sort_priority) 
VALUES (2, 'Developer', 20);

-- Recruit
INSERT INTO roles (id, name, sort_priority) 
VALUES (3, 'Recruit', 30);

-- Team Lead
INSERT INTO roles (id, name, sort_priority) 
VALUES (4, 'Team Lead', 40);

-- Boss
INSERT INTO roles (id, name, sort_priority) 
VALUES (5, 'Boss', 50);

-- Mentor
INSERT INTO roles (id, name, sort_priority) 
VALUES (6, 'Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    people_id INT NOT NULL,
    role_id INT NOT NULL,
    date_assigned DATE NOT NULL,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

-- Person 1: Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (1, 2, '2022-01-01');

-- Person 2: Boss, Mentor
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (2, 5, '2022-01-02');
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (2, 6, '2022-01-03');

-- Person 3: Developer, Team Lead
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (3, 2, '2022-01-04');
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (3, 4, '2022-01-05');

-- Person 4: Recruit
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (4, 3, '2022-01-06');

-- Person 5: Recruit
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (5, 3, '2022-01-07');

-- Person 6: Developer, Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (6, 2, '2022-01-08');
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (6, 1, '2022-01-09');

-- Person 7: Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (7, 1, '2022-01-10');

-- Person 8: Designer, Team Lead
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (8, 1, '2022-01-11');
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (8, 4, '2022-01-12');

-- Person 9: Developer
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (9, 2, '2022-01-13');

-- Person 10: Developer, Designer
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (10, 2, '2022-01-14');
INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES (10, 1, '2022-01-15');
