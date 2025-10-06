/*
03-01 AVERAGE FROM EACH PROFESSOR
    -   Adecentamos un poco con aliases
    -   Uso '' siempre, aunque sea single-world, para no omitirlos luego
*/

SELECT

    p.fullname AS Mentor,
    AVG(g.grade) AS 'Media de Notas'

FROM Grades g

JOIN Courses c ON g.course_id = c.course_id
JOIN Professors p ON c.professor_id = p.professor_id

GROUP BY p.professor_id;
