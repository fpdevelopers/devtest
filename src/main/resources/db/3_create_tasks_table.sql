--// create_tasks_table
create table tasks (
    id serial primary key,
    description text not null,
    assigned_to bigint,
    active boolean,
    created_at timestamp default current_timestamp not null,
    foreign key (assigned_to) references assignees
);

insert into tasks (description, assigned_to, active)
values ('Implement REST service for task list.', 1, true);

insert into tasks (description, assigned_to, active)
values ('Design GUI for task list signup form.', 2, false);

insert into tasks (description, assigned_to, active)
values ('Find first customer for task list app.', 3,true);

insert into tasks (description, assigned_to, active)
values ('Fix all bugs in task list app.', 1, true);

insert into tasks (description, assigned_to, active)
values ('Add email reminds to task list app.', 1, true);

