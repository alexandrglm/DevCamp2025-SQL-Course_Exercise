-- 03-04  SUMMARY REPORT - COURSES BY DIFFICULTY

SELECT

    c.course_nombre AS 'Asignatura',
    AVG(g.grade) AS 'Nota Promedio'

FROM Grades g

JOIN Courses c ON g.course_id = c.course_id


GROUP BY c.course_id

ORDER BY 'Nota Promedio' ASC;
