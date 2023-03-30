-- Create a new table to store the dataset
CREATE TABLE StudentTestScores
(
    student_id INT,
    student_name NVARCHAR(100),
    test_date DATE,
    subject NVARCHAR(50),
    score INT,
    max_score INT
);

-- Import the dataset from the CSV file
BULK INSERT StudentTestScores
FROM 'C:\path\to\student_test_scores.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
