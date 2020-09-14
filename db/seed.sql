USE hmwk12;
INSERT INTO department (name) VALUES ('Management');
INSERT INTO department (name) VALUES ('Baristas');
INSERT INTO role (title, salary, department_id) VALUES ('Floor Manager', 35000, 1);
INSERT INTO role (title, salary, department_id) VALUES ('Senior Barista', 15600, 2);
INSERT INTO employee (firstname, lastname, role_id) VALUES ('Matt', 'McIvor', 2);