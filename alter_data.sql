alter table usr add column phone varchar(20);
alter table usr add constraint email_unique unique(email);
alter table usr rename email to e_mail
alter table usr add constraint e_mail_unique unique(e_mail);
alter table usr alter e_mail set not null
alter table usr add column birth_date timestamp;