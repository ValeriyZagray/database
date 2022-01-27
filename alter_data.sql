alter table usr add column phone varchar(20);
alter table usr add constraint email_unique unique(email);
alter table usr rename email to e_mail
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr alter e_mail set not null
alter table usr add column birth_date timestamp; 
alter table usr add column birth_date timestamp; 
alter table usr add column birth_date timestamp;

insert into role (name) values
('administrator'),
('editor'),
('user');

create table role_permission(
role_name varchar(20),
permission_id SMALLSERIAL);

alter table usr add column role_name varchar(20);
update usr set role_name='administrator' where id=1;
update usr set role_name='administrator' where id=2;
update usr set role_name='editor' where id=3;
update usr set role_name='editor' where id=4;
update usr set role_name='editor' where id=5;
update usr set role_name='editor' where id=6;
update usr set role_name='editor' where id=7;
update usr set role_name='editor' where id=8;
update usr set role_name='editor' where id=9;
update usr set role_name='user' where id=10;
update usr set role_name='user' where id=11;
update usr set role_name='user' where id=12;

alter table usr add column login varchar(64);
alter table usr add column password varchar(64);

create table permission(
id SMALLSERIAL not null, 
primary key (id),
name VARCHAR(30) not null);

insert into permission (name) values
('create'),
('edit'),
('view'),
('delete');

insert into role_permission (role_name, permission_id) values
('administrator', '1'),
('administrator', '2'),
('administrator', '3'),
('administrator', '4'),
('editor', '2'),
('editor', '3'),
('user', '3');

alter table role_permission add constraint FK_USR_ROLE foreign key (permission_id) references permission;
alter table role_permission add constraint FK_USR_ROLE2 foreign key (role_name) references role;

alter table usr
add constraint key
primary key(id);