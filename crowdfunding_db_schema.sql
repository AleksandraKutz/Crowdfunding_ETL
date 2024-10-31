CREATE TABLE "category" (
    "category_id" VARCHAR(30)   NOT NULL PRIMARY KEY,
    "category" VARCHAR(30)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(30)   NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR(30)   NOT NULL
);


CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL PRIMARY KEY,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(150)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" TEXT   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" TEXT   NOT NULL,
    "currency" TEXT   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL PRIMARY KEY,
    "first name" TEXT   NOT NULL,
    "last name" TEXT   NOT NULL,
    "email" VARCHAR(50)   NOT NULL
);