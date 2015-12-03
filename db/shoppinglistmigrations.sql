CREATE DATABASE shoppinglist;


\c shoppinglist

CREATE TABLE items(id SERIAL PRIMARY KEY, name TEXT,  size TEXT, quantity INTEGER);
