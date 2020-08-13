-- Data Engineering
DROP TABLE IF EXISTS "Company" CASCADE;
DROP TABLE IF EXISTS "Rank" CASCADE;
DROP TABLE IF EXISTS "Growth" CASCADE;
DROP TABLE IF EXISTS "Years" CASCADE;

CREATE TABLE "Company" (
    "ID" INTEGER   NOT NULL,
    "Company_name" VARCHAR   NOT NULL,
    "Number_of_employees" VARCHAR   NOT NULL,
    "Industry" VARCHAR   NOT NULL,
    "City" VARCHAR   NOT NULL,
    "State" VARCHAR   NOT NULL,
    "Country" VARCHAR   NOT NULL,
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
    "Growth_rate_%" VARCHAR   NOT NULL,
    "Compound_annual_growth_rate_%" VARCHAR   NOT NULL,
    "Total_funding" VARCHAR   NOT NULL,
    "Revenue_$" VARCHAR   NOT NULL
);

CREATE TABLE "Years" (
    "ID" INTEGER   NOT NULL,
    "Rank_year" INTEGER   NOT NULL,
    "Founding_year" INTEGER   NOT NULL
);

ALTER TABLE "Rank" ADD CONSTRAINT "fk_Rank_ID" FOREIGN KEY("ID")
REFERENCES "Company" ("ID");

ALTER TABLE "Growth" ADD CONSTRAINT "fk_Growth_ID" FOREIGN KEY("ID")
REFERENCES "Company" ("ID");

ALTER TABLE "Years" ADD CONSTRAINT "fk_Years_ID" FOREIGN KEY("ID")
REFERENCES "Company" ("ID");