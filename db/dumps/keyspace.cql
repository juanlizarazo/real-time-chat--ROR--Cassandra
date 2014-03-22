CREATE KEYSPACE am_chat_development
  WITH REPLICATION = { 
  	'class' : 'SimpleStrategy', 
  	'replication_factor' : 1
  };