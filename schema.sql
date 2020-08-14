-- Data Engineering
DROP TABLE IF EXISTS "Company" CASCADE;
DROP TABLE IF EXISTS "Rank" CASCADE;
DROP TABLE IF EXISTS "Growth" CASCADE;

CREATE TABLE "Company" (
    "ID" INTEGER   NOT NULL,
    "Company_name" VARCHAR   NOT NULL,
    "Number_of_employees" VARCHAR   NOT NULL,
    "Industry" VARCHAR   NOT NULL,
    "City" VARCHAR,
    "State" VARCHAR   NOT NULL,
    "Country" VARCHAR,
    CONSTRAINT "pk_Company" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Rank" (
    "ID" INTEGER   NOT NULL,
    "Rank" INTEGER   NOT NULL,
    "Rank_year" INTEGER   NOT NULL
);

CREATE TABLE "Growth" (
    "ID" INTEGER   NOT NULL,
    "Growth_rate_%" VARCHAR,
    "Compound_annual_growth_rate_%" VARCHAR,
    "Total_funding" VARCHAR,
    "Revenue_$" VARCHAR   NOT NULL
);

ALTER TABLE "Rank" ADD CONSTRAINT "fk_Rank_ID" FOREIGN KEY("ID")
REFERENCES "Company" ("ID");

ALTER TABLE "Growth" ADD CONSTRAINT "fk_Growth_ID" FOREIGN KEY("ID")
REFERENCES "Company" ("ID");