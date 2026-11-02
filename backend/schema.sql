CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);
CREATE TABLE users(
id SERIAL PRIMARY KEY,
name TEXT NOT NULL ,
email TEXT NOT NULL UNIQUE,
role TEXT NOT NULL CHECK(role IN ('admin', 'dean','researcher','officer')),
department_id INTEGER NOT NULL REFERENCES departments(id)
);
