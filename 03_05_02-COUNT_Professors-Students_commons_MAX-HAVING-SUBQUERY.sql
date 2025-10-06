/*
03-05-03 STUDENT & PROFESSOR WITH MOST COURSES IN COMMON CON CRITERIO DE ORDENACION 'ALFABETICO ASCENDENTE'

   -    Usando subquery -> MAX() -> Having Count (wildcard), sin LIMIT de resultados, podemos mostrar todos los resultados que coincidan como MAX
   -   Ahora el criterio para mostrar no se basa en LIMIT 1 (si hay varias coincidencias, MySQL decice "al azar" la que mostrar)
*/

SELECT

    p.fullname AS Mentor,
    s.fullname AS Alumndo,

    COUNT(*) AS Cursos

FROM Grades g

JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
JOIN Professors p ON c.professor_id = p.professor_id


GROUP BY s.student_id, p.professor_id

HAVING COUNT(*) = (

    SELECT MAX( sub.Cursos)

    FROM (

        SELECT COUNT(*) AS Cursos
        FROM Grades g2
        JOIN Courses c2 ON g2.course_id = c2.course_id
        GROUP BY g2.student_id, c2.professor_id

    ) AS sub

)

ORDER BY p.fullname, s.fullname;
-- ORDER BY common_courses DESC, p.fullname ASC, s.fullname ASC
-- LIMIT 1;
