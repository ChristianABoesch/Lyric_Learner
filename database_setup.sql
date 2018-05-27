/* 
This final project helps people to memorize lyrics. 
We will be tracking lyrics for users. 
We will let users upload their own lyrics. 
We will let users save their own lyrics. 
We will save the users past results when memorizing lyrics. 

A database is needed to save a few different things. 
- users - usernames
- songs - the title and lyrics for songs. 
- results - people's past playing results (song, user, correct, incorrect)
 */

DROP TABLE users CASCADE;
DROP TABLE songs CASCADE;
DROP TABLE results;

create table users (
   id         serial primary key,
   username  varchar(20) not null
 );

create table songs (
   id   serial primary key,
   title  varchar(40) not null,
   lyrics varchar(1000) not null
 );

create table results (
   id   serial primary key,
   correct integer,
   incorrect integer,
   song_id integer not null references songs(id),
   user_id integer not null references users(id)
 );

select tablename from pg_tables where schemaname='public';

SELECT * from users;
SELECT * from songs;
SELECT * from results;
