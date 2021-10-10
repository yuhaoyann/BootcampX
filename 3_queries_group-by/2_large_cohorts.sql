SELECT cohorts.name AS cohort_name, COUNT(students.*) AS student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY COUNT(students.*) ASC;