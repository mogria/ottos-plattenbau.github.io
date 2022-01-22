
-- $ sudo -u postgres psql
-- postgres=# create database ottos;
-- postgres=# ^D
-- $ sudo -u postgres psql ottos
-- ottos=#
-- ottos=#

CREATE TABLE IF NOT EXISTS members (
  id           SERIAL NOT NULL PRIMARY KEY,
  fullname     varchar(255) NOT NULL,
  address      varchar(255) NOT NULL,
  email        varchar(255) NOT NULL,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
  -- picture
);

CREATE TABLE IF NOT EXISTS projects (
  id           SERIAL NOT NULL PRIMARY KEY,
  projectname  varchar(255) NOT NULL,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS project_team (
  member_id    SERIAL NOT NULL,
  project_id   SERIAL NOT NULL,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
);
-- TODO: add unique key
-- TODO: Deletion/Relationships?
