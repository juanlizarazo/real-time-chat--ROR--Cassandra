/* Table structure */

CREATE TABLE time_sorted_messages_by_users (
	user_id timeuuid,
	messages_created_at timestamp,
	messages_message_id timeuuid,
	PRIMARY KEY (user_id, messages_created_at)
);

/* Dumped data */

INSERT INTO time_sorted_messages_by_users 
(
	user_id, 
	messages_created_at,
	messages_message_id, 
) VALUES 
(
	69566a50-b30b-11e3-b479-e76149b7842c,
	1395641641000,
	e52729f0-b30e-11e3-b479-e76149b7842c
);

INSERT INTO time_sorted_messages_by_users 
(
	user_id, 
	messages_created_at,
	messages_message_id, 
) VALUES 
(
	69566a50-b30b-11e3-b479-e76149b7842c,
	1395645601000,
	07d0e9a0-b30f-11e3-b479-e76149b7842c
);

INSERT INTO time_sorted_messages_by_users 
(
	user_id, 
	messages_created_at,
	messages_message_id, 
) VALUES 
(
	69570690-b30b-11e3-b479-e76149b7842c,
	1395641761000,
	2ecff9b0-b30f-11e3-b479-e76149b7842c
);

INSERT INTO time_sorted_messages_by_users 
(
	user_id, 
	messages_created_at,
	messages_message_id, 
) VALUES
(
	69570690-b30b-11e3-b479-e76149b7842c,
	1395641881000,
	1e26d6b0-b30f-11e3-b479-e76149b7842c
);