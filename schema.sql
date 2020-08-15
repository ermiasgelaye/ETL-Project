-- Data Engineering
DROP TABLE IF EXISTS  Company CASCADE;
DROP TABLE IF EXISTS  Ranks CASCADE;
DROP TABLE IF EXISTS  Growth CASCADE;

CREATE TABLE Company (
    ID INTEGER   NOT NULL,
    Company_name VARCHAR   NOT NULL,
    Number_of_employees VARCHAR   NOT NULL,
    Industry VARCHAR   NOT NULL,
    City VARCHAR,
    State VARCHAR   NOT NULL,
    Country VARCHAR,
	founding_year INTEGER,
    CONSTRAINT pk_Company PRIMARY KEY (
        ID
     )
);

CREATE TABLE Ranks (
    ID INTEGER   NOT NULL,
    Rank INTEGER   NOT NULL,
    Rank_year INTEGER   NOT NULL
);

CREATE TABLE Growth (
    ID INTEGER   NOT NULL,
    Growth_rate VARCHAR,
    Compound_annual_growth_rate VARCHAR,
    Total_funding VARCHAR,
    Revenue_$ VARCHAR   NOT NULL
);

ALTER TABLE Ranks ADD CONSTRAINT fk_Rank_ID FOREIGN KEY(ID)
REFERENCES Company (ID);

ALTER TABLE Growth ADD CONSTRAINT fk_Growth_ID FOREIGN KEY(ID)
REFERENCES Company (ID);


-- Viewing the tables 
SELECT * FROM Company;
SELECT * FROM Ranks;	
SELECT * FROM Growth;	
