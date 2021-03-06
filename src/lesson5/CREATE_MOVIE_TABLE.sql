CREATE TABLE MOVIE(
ID NUMBER,
CONSTRAINT ID_PKEY PRIMARY KEY (ID),
TITLE NVARCHAR2(50) UNIQUE,
DIRECTOR NVARCHAR2(50) UNIQUE,
--YEAR NUMBER(4) CHECK (YEAR > 1899 AND YEAR < 2019),
YEAR NUMBER(4) CHECK(YEAR BETWEEN 1899 AND 2019),
--CONSTRAINT YEAR CHECK (YEAR BETWEEN 1899 AND 2019),
LENGTH_MINS NUMBER CHECK (LENGTH_MINS BETWEEN 9 AND 201)
);
