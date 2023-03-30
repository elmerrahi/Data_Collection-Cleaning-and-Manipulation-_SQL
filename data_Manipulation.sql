-- Calculate the average test scores per subject
SELECT subject, AVG(score) AS average_score
FROM StudentTestScores
GROUP BY subject;

-- Calculate the average test scores per student
SELECT student_id, student_name, AVG(score) AS average_score
FROM StudentTestScores
GROUP BY student_id, student_name