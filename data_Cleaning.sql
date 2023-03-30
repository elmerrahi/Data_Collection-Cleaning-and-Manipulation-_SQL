-- Replace NULL scores with the average score for the subject
UPDATE StudentTestScores
SET score = (
    SELECT AVG(score)
    FROM StudentTestScores AS s2
    WHERE s2.subject = StudentTestScores.subject
    AND s2.score IS NOT NULL
)
WHERE score IS NULL;
