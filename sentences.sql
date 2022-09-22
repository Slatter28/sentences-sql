CREATE TABLE "tasks" (
  "id" uuid PRIMARY KEY,
  "name_task" varchar NOT NULL,
  "description" varchar NOT NULL,
  "state" varchar NOT NULL,
  "start_date" date NOT NULL
);



INSERT INTO tasks
(id, name_task, description, state, start_date)
VALUES('6b984a8c-8dc7-42fa-933d-53442d75312c', 'Hacer deberes', 'Hacer todas los deberes de academlo', 'iniciar', '2022/10/21'),
('afea1d03-b4a4-4ee4-a31e-398eb66daa19', 'Limpiar la casa', 'Barrer la casa y limpiar los baños', 'iniciar', '2022/10/20'),
('0b2acb7c-0ac0-4bc3-9647-3b5a4f4ee284', 'Pasear mis mascotas', 'Sacar a pasear mi mascota al parque', 'completa', '2022/10/19')
;


select * from tasks;

select * from tasks where state = 'completa';

