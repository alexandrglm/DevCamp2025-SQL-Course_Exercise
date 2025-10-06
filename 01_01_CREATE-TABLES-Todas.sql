/*
01-01 Crear todas las tablas requeridas:

    - 1. Alumnnos (Students)
    - 2. Mentores (Professors)
    - 3. Asignaturas (Courses)
    - 4. Calificaciones (Grades)

La tabla que contedrá distinas ForeignKeys será GRADES, usando id del alumnno, del curso y del profesor, además de incorporar cada nota.
Podríamos añadir una fecha de corrección con Date.

*/

-- 1. Students
CREATE TABLE Students (

    student_id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(150) NOT NULL,
    carrera VARCHAR(100)

);


-- 2. Professors
CREATE TABLE Professors (

    professor_id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(150) NOT NULL,
    area VARCHAR(200) NOT NULL

);


-- 3. Courses
/*
NO ajusto NOT NULL para el FK de profesor por si un profesor se borra, seguir permitiendo la ficha de Curso.
*/
CREATE TABLE Courses (

    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_nombre VARCHAR(200) NOT NULL,
    professor_id INT,

    FOREIGN KEY (professor_id)
        REFERENCES Professors(professor_id)
        ON DELETE SET NULL

);


-- 4. Notas
/*
Ajustamos:
Nota -> Decimales (9.75, 7, 6.5, etc)
ON DELETE CASCADE -> No sé si es lo mejor hacer CASCADE pero, en este caso, si borro curso, borro notas + si borro alumno, borro notas ... por diferenciar del SET NULL de otros
*/
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade DECIMAL(4, 2) CHECK (grade BETWEEN 0 AND 10),

    FOREIGN KEY (student_id)
        REFERENCES Students(student_id)
        ON DELETE CASCADE,

    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
        ON DELETE CASCADE

);
