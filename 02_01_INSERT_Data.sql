


-- 02-01 > Alumno - Carrera
INSERT INTO Students (fullname, carrera) VALUES

    ('Juan Lopez', 'Ingenieria de Sistemas'),
    ('Jorge Gomez', 'Ingenieria de Sistemas'),
    ('Jorge Ramirez', 'Ingenieria de Software'),
    ('Luis Torres', 'Ingenieria Informatica'),
    ('David Diaz', 'Ingenieria de Sistemas'),
    ('Hugo Astudillo', 'Ingenieria de Software'),
    ('Nacor Perez', 'Ingenieria Informatica'),
    ('Raquel Hinojal', 'Ingenieria de Sistemas'),
    ('Virginia Morales', 'Ingenieria de Software'),
    ('Desiree Mejuto', 'Ingenieria de Sistemas');

-- 02-02 Profesores - Area
INSERT INTO Professors (fullname, area) VALUES

    ('Manual Pardo', 'Programacion y Algoritmos'),
    ('Koldo Obregon', 'Bases de Datos'),
    ('Loli Monzon', 'Redes y Comunicaciones'),
    ('Carmen Orte', 'Ingenieria de Software'),

    ('Jimmy Rodriguez', 'Sistemas Operativos');


-- 02-03 Cursos - Nombre - Profesores
INSER INTO Courses (course_nombre, professor_id) VALUES
    ('Programacion I', 1),
    ('Programacion II', 1),
    ('Bases de Datos', 2),
    ('Redes de Computadoras', 3),
    ('Arquitectura de Computadoras', 5),
    ('Sistemas Operativos', 5),
    ('Ingenieria de Software I', 4),
    ('Ingenieria de Software II', 4);




/*  02-04 Notas - Tenia FK
Por alumno -> Curso que hace (no hacen todos los mismos, cada uno lo suyo) - notas */
INSERT INTO Grades (student_id, course_id, grade) VALUES

    (1, 1, 9.5),
    (1, 2, 3),
    (1, 3, 7),
    (2, 3, 7.5),
    (2, 4, 9),
    (2, 5, 4.75),
    (3, 1, 7),
    (3, 7, 8),
    (3, 8, 7.5),
    (4, 2, 2.5),
    (4, 4, 6),
    (4, 7, 7),
    (5, 1, 9),
    (5, 3, 10),
    (5, 6, 7.5),
    (6, 3, 7.5),
    (6, 7, 6),
    (6, 8, 8.5),
    (7, 4, 8.25),
    (7, 5, 8.5),
    (7, 6, 8),
    (8, 2, 10),
    (8, 5, 10),
    (8, 6, 10),
    (9, 1, 9.75),
    (9, 2, 8.5),
    (9, 7, 8.5),
    (10, 3, 7),
    (10, 5, 3),
    (10, 8, 8);







