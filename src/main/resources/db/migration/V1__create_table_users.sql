CREATE TABLE IF NOT EXISTS users (
    id bigint auto_increment,
    username varchar(255),
    email varchar(255),
    password varchar(255),
    created_at datetime,
    updated_at datetime,
    primary key (id)

);
