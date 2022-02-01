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

alter table usr rename email to e_mail
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr alter e_mail set not null
alter table usr add column birth_date timestamp;
update usr set birth_date='2004-01-08 04:05:06' where id<=10;
update usr set birth_date='2008-01-08 04:05:06' where id>10;
alter table usr add constraint FK_USR_ROLE foreign key (role_name) references
role;
alter table role add constraint FK_ROLE_PERMISSION foreign key (name) references
permission;
alter table role_permission add constraint FK_ROLE_PERMISSION_PERMISSION foreign key (role_name) references
permission;
alter table group_member add constraint FK01 foreign key (university_member_id) references
university_member;
alter table group_member add constraint FK02 foreign key (group_id) references
groups;
alter table university_member add constraint FK03 foreign key (user_id) references
usr;
alter table university_member add constraint FK04 foreign key (department_id) references
department;
alter table university_member add constraint FK05 foreign key (positon_id) references
position;
update university_member set position_id=1 where id=1;
update university_member set position_id=2 where id>1;
update university_member set position_id=3 where id>19;
update group_member set group_id=1 where id>19;
update group_member set group_id=2 where id>24;
update group_member set group_id=3 where id>29;
update group_member set group_id=4 where id>34;
update group_member set group_id=5 where id>39;




