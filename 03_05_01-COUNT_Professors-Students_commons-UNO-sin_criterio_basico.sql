/*
03-05 STUDENT & PROFESSOR WITH MOST COURSES IN COMMON

    -   Recibimos UNA coincidencia. Pero, ¿Y si hay varias?, ¿Qué mostrará?
    -   Pues seguirá mostrando UNA, lo que le pasamos en LIMIT. Pero, ¿Y qué criterio usará?
    -   No lo tengo claro. Por los resultados vistos, creo que usa el primer valor que encuentra dado el nombre de alumndo en DESC.


*/

SELECT

    p.fullname AS professor,
    s.fullname AS student,

    COUNT(*) AS common_courses

FROM Grades g

JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
JOIN Professors p ON c.professor_id = p.professor_id


GROUP BY s.student_id, p.professor_id

ORDER BY common_courses DESC


LIMIT 1;
