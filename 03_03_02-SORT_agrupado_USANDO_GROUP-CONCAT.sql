/*

03-03 SORT STUDENTS BY ENROLLED COURSES

Usamos GROUP CONCAT, un método que encadena items similares; nos va a mostrar un reporte más limpio


*/


SELECT

    s.fullname AS Alumno,
    GROUP_CONCAT(c.course_nombre ORDER BY c.course_nombre SEPARATOR ', ') AS Asignatura

FROM Grades g

JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id

GROUP BY s.student_id

ORDER BY s.fullname;
