/* Table structure */

CREATE TABLE messages (
	message_id timeuuid,
	created_at timestamp,
	deleted int,
	message text,
	sent_by_user_id timeuuid,
	sent_to_user_id timeuuid,
	PRIMARY KEY (message_id)
);

/* Data dump */

INSERT INTO messages 
(
	message_id, 
	created_at,
	deleted, 
	message,
	sent_by_user_id,
	sent_by_user_id	
	
) VALUES 
(
	e52729f0-b30e-11e3-b479-e76149b7842c,
	1395886100000,
	0,
	'Hello!',
	69566a50-b30b-11e3-b479-e76149b7842c,
	69570690-b30b-11e3-b479-e76149b7842c
);

INSERT INTO messages 
(
	message_id, 
	created_at,
	deleted, 
	message,
	sent_by_user_id,
	sent_by_user_id	
	
) VALUES 
(
	2ecff9b0-b30f-11e3-b479-e76149b7842c,
	1395886100000,
	0,
	'what up!',
	69570690-b30b-11e3-b479-e76149b7842c,
	69566a50-b30b-11e3-b479-e76149b7842c
);

INSERT INTO messages
(
	message_id, 
	created_at,
	deleted, 
	message,
	sent_by_user_id,
	sent_by_user_id	
	
) VALUES 
(
	1e26d6b0-b30f-11e3-b479-e76149b7842c,
	1395886100000,
	0,
	'how are ya?!',
	69570690-b30b-11e3-b479-e76149b7842c,
	69566a50-b30b-11e3-b479-e76149b7842c
);

INSERT INTO messages
(
	message_id, 
	created_at,
	deleted, 
	message,
	sent_by_user_id,
	sent_by_user_id	
	
) VALUES 
(
	07d0e9a0-b30f-11e3-b479-e76149b7842c,
	1395886100000,
	0,
	'good',
	69566a50-b30b-11e3-b479-e76149b7842c,
	69570690-b30b-11e3-b479-e76149b7842c
);


