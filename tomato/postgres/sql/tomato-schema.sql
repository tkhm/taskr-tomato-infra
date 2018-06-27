CREATE TABLE users (
 id TEXT NOT NULL
);

ALTER TABLE users ADD CONSTRAINT PK_users PRIMARY KEY (id);


CREATE TABLE tasks (
 id UUID NOT NULL,
 category TEXT,
 title TEXT,
 description TEXT,
 is_finished BOOLEAN,
 created_at TIMESTAMP,
 updated_at TIMESTAMP,
 user_id TEXT
);

ALTER TABLE tasks ADD CONSTRAINT PK_tasks PRIMARY KEY (id);


CREATE TABLE tomatoes (
 id SERIAL NOT NULL,
 summary TEXT,
 finished_at TIMESTAMP,
 task_id UUID
);

ALTER TABLE tomatoes ADD CONSTRAINT PK_tomatoes PRIMARY KEY (id);


ALTER TABLE tasks ADD CONSTRAINT FK_tasks_0 FOREIGN KEY (user_id) REFERENCES users (id);


ALTER TABLE tomatoes ADD CONSTRAINT FK_tomatoes_0 FOREIGN KEY (task_id) REFERENCES tasks (id);


