SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM students
JOIN assignment_submissions on assignment_submissions.student_id = students.id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions DESC;