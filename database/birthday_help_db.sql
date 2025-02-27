--drop table user_data
--drop table user_friends
--drop table users_gifts

create table user_data(
	id_user int constraint pk_user primary key constraint check_user_id check (id_user > 0),
	user_name text not null constraint check_lenth_user_name check (char_length(user_name) > 0),
	holiday_date date constraint check_holiday_date check (holiday_date <= CURRENT_DATE AND holiday_date >= (CURRENT_DATE - interval '100 years')),
	interval_lenth_day int constraint check_interval_lenth check (interval_lenth_day >= 0 AND interval_lenth_day <= 30)
)

create table user_friends(
	id_row uuid constraint pk_user_friends primary key constraint default_id_ro default  gen_random_uuid(),
	id_user int not null,
	friend int not null,
	constraint fk_main_user foreign key (id_user) references user_data(id_user) on delete cascade,
	constraint fk_friend_user foreign key (friend) references user_data(id_user) on delete cascade
)

create table users_gifts(
	id_row uuid constraint pk_users_gifts primary key constraint default_id_ro default  gen_random_uuid(),
	id_user int not null,
	name_gift text not null constraint check_name_gift check (char_length(name_gift) > 0),
	link_gift text,
	constraint fk_id_user foreign key (id_user) references user_data(id_user) on delete cascade
)
