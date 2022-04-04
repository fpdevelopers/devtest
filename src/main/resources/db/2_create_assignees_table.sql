--// create_assignees_table
create table assignees (
    id serial primary key,
    name text not null,
    email text not null,
    created_at timestamp default current_timestamp not null
);

insert into assignees (name, email) values ('John Smith', 'jsmith@gmail.com');
insert into assignees (name, email) values ('Jane Doe', 'jdoe@gmail.com');
insert into assignees (name, email) values ('Steve Jones', 'sjones@gmail.com');

