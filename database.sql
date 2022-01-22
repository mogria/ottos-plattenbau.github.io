
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
  scm_username varchar(255) NOT NULL,
  homepage     text,
  public_key   text,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
  -- picture
);

CREATE TABLE IF NOT EXISTS roles (
  id           SERIAL NOT NULL PRIMARY KEY,
  rolename     varchar(255) NOT NULL,
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
);


CREATE TABLE IF NOT EXISTS member_roles (
  member_id    SERIAL NOT NULL PRIMARY KEY,
  role_id      SERIAL NOT NULL PRIMARY KEY,
  -- TODO: UNIQUE-KEY, cascading...?
);

CREATE TABLE IF NOT EXISTS projects (
  id           SERIAL NOT NULL PRIMARY KEY,
  projectname  varchar(255) NOT NULL,
  homepage     text, -- URL to page explaining project
  scm          text, -- URL To source code management page
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS project_members (
  project_id   SERIAL NOT NULL,
  member_id    SERIAL NOT NULL,
  role_id      SERIAL DEFAULT NULL, -- role in project
  created_at   timestamp DEFAULT NOW(),
  updated_at   timestamp DEFAULT current_timestamp,
  deleted_at   timestamp DEFAULT NULL
);
-- TODO: add unique key
-- TODO: Deletion/Relationships?
