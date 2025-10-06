-- 03-02 TOP GRADE FOR EACH STUDENT


SELECT

    s.fullname AS Alumno,
    c.course_nombre AS Asignatura,
    g.grade

FROM Grades g

JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id

WHERE g.grade = (

    SELECT MAX(g2.grade)
    FROM Grades g2
    WHERE g2.student_id = g.student_id

)

ORDER BY s.fullname;
