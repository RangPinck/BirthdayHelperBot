-- данные пользователя, псевдоним, дата через которую напомнить (id), дни рождения (которые введены или будут введены - задать вопрос)
-- список подарков - пользователь (id), ссылка на подарок (придумать парсер-api для вб и озон, цена (попробовать сделать автоподстановку)), цена, приоритет
-- приоритет (приоритет, id)
-- дата через которую напомнить (дата, id)
-- список пользователей - друзей

--drop table user_data

create table user_data(
	id_user int constraint pk_user primary key constraint check_user_id check (id_user > 0),
	user_name text not null constraint check_lenth_user_name check (char_length(user_name) > 0),
	holiday_date date constraint check_holiday_date check (holiday_date <= CURRENT_DATE AND holiday_date >= (CURRENT_DATE - interval '100 years')),
	interval_lenth_day int constraint check_interval_lenth check (interval_lenth_day >= 0 AND interval_lenth_day <= 30)
)


