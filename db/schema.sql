DROP DATABASE IF EXISTS hmwk12;
CREATE DATABASE hmwk12;
USE hmwk12;

CREATE TABLE department (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
    id INTEGER NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(30) NOT NULL,
    lastname VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
)

-- Foreign Key Initialization --

ALTER TABLE `hmwk12`.`employee` 
ADD INDEX `role_id_idx` (`role_id` ASC),
ADD INDEX `manager_id_idx` (`manager_id` ASC);
;
ALTER TABLE `hmwk12`.`employee` 
ADD CONSTRAINT `role_id`
  FOREIGN KEY (`role_id`)
  REFERENCES `hmwk12`.`role` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `manager_id`
  FOREIGN KEY (`manager_id`)
  REFERENCES `hmwk12`.`employee` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `hmwk12`.`role` 
ADD INDEX `department_id_idx` (`department_id` ASC);
;
ALTER TABLE `hmwk12`.`role` 
ADD CONSTRAINT `department_id`
  FOREIGN KEY (`department_id`)
  REFERENCES `hmwk12`.`department` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
