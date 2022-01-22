
-- $ sudo -u postgres psql
-- postgres=# create database ottos;
-- postgres=# ^D
-- $ sudo -u postgres psql ottos
-- ottos=#
-- ottos=#

CREATE TABLE members (
  id           SERIAL NOT NULL PRIMARY KEY,
  fullname     varchar(255) NOT NULL,
  address      varchar(255) NOT NULL,
  email        varchar(255) NOT NULL,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
  -- picture
)

