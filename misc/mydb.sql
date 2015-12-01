CREATE DATABASE mydb;

CREATE TABLE department (
      id int NOT NULL AUTO_INCREMENT,
      name varchar(20) NOT NULL,
      created datetime,
      updated datetime,
      PRIMARY KEY (id),
      UNIQUE (name)
) ENGINE=InnoDB;

CREATE TABLE employee (
      id int NOT NULL AUTO_INCREMENT,
      department_id int NULL,
      name varchar(20) NOT NULL,
      email varchar(20) NOT NULL,
      created datetime,
      updated datetime,
      PRIMARY KEY (id),
      UNIQUE (email),
      FOREIGN KEY (department_id) REFERENCES department(id)
) ENGINE=InnoDB;

INSERT INTO department(name,created,updated) VALUES
('General Affairs', now(), now()),
('Human Resources', now(), now()),
('Development', now(), now());


INSERT INTO employee(name,department_id,email,created,updated) VALUES
('John', 1, 'john@hoge.com', now(), now()),
('Bob', 2, 'bob@hoge.com', now(), now()),
('Smith', 3, 'smith@hoge.com', now(), now());
