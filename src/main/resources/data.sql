create table roles (id bigint not null, description varchar(255), role_name enum ('USER','ADMIN'), primary key (id)) engine=InnoDB;
create table roles_seq (next_val bigint) engine=InnoDB;
insert into roles_seq values ( 1 );
create table user_role (user_id bigint not null, role_id bigint not null, primary key (user_id, role_id)) engine=InnoDB;
create table users (id bigint not null, email varchar(255), name varchar(255), password varchar(255), username varchar(255),
primary key (id)) engine=InnoDB;
create table users_seq (next_val bigint) engine=InnoDB;
insert into users_seq values ( 1 );
alter table roles drop index UK_716hgxp60ym1lifrdgp67xt5k;
alter table roles add constraint UK_716hgxp60ym1lifrdgp67xt5k unique (role_name);
alter table user_role add constraint FKt7e7djp752sqn6w22i6ocqy6q foreign key (role_id) references roles (id);
//123456
INSERT INTO users (id, email, name, password, username) values (1,'john@devglan.com', 'John Doe', '$2a$12$Ro2fUZMlItSSn0YFI2d6fujc3HbFYp2adNc47ZlQKOM7os1rTozJW', 'johndoe123');
INSERT INTO roles(id, description, role_name) values(1, 'User role', 'USER');
INSERT INTO user_role (user_id, role_id) values (1, 1);