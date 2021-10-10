SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY COUNT(assignment_submissions.*) DESC;