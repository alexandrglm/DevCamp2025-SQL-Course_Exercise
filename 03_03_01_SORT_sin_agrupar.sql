/*

03-03 SORT STUDENTS BY ENROLLED COURSES



*/

SELECT

    s.fullname AS Alumno,
    c.course_nombre AS Asignatura

FROM Grades g

JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id

ORDER BY s.fullname, c.course_nombre;
