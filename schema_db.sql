create table usr (
 id bigserial not null,
 email varchar(64) not null,
 first_name varchar(64) not null,
 last_name varchar(64) not null,
 middle_name varchar(64) not null
 );
create table department (
 id integer,
 name varchar(30) not null,
 primary key (id));
 );
create table positon (
 id integer,
 name varchar(30) not null,
 primary key (id));
 );
create table groups (
 id integer,
 name varchar(30) not null,
 course INTEGER,
 primary key (id));
 );
create table group_member (
 id integer,
 university_member_id INTEGER,
 group_id INTEGER,
 group_leader char(1);
 primary key (id));
 );
create table university_member (
 id integer,
 user_id INTEGER,
 department_id INTEGER,
 position_id INTERGER, 
 primary key (id));
 );





