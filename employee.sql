create table if not exists Department(
	id serial primary key,
	name varchar(50) not null
);

create table if not exists Employee(
	id serial primary key,
	name varchar(50) not null,
	department_id integer not null references Department(id),
	boss_id integer not null references Employee(id)
)