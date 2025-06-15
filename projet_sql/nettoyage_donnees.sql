-- Nettoyage de données
CREATE TABLE job_filtered AS
SELECT
    *
FROM
    job_postings_fact
WHERE
    salary_year_avg IS NOT NULL AND
    job_country = 'France' AND
    job_title_short IN ('Data Analyst', 'Data Scientist') AND
    job_title !~* 'stag|apprenti|alternan';
