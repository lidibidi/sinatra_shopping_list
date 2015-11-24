CREATE DATABASE shoppinglist;


\c shoppinglist

CREATE TABLE users(id SERIAL PRIMARY KEY, user_name varchar(255), password_hash varchar(255), id INTEGER);

CREATE TABLE items(id SERIAL PRIMARY KEY, id INTEGER, item_name TEXT, is_purchased BOOLEAN);
