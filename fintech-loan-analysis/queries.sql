-- Create table with distinct loan purposes
CREATE TABLE fintech.loan_purposes AS
SELECT DISTINCT application.purpose
FROM fintech.loan;

-- Query 1: Total Outstanding Loans
SELECT SUM(funded_amount) AS total_outstanding_loans
FROM fintech.loan;

-- Query 2: Count of Loans by Purpose
SELECT application.purpose, COUNT(*) AS total_loans
FROM fintech.loan
GROUP BY application.purpose
ORDER BY total_loans DESC;

-- Query 3: Average Loan by Grade
SELECT grade, ROUND(AVG(funded_amount), 2) AS avg_loan
FROM fintech.loan
GROUP BY grade;
