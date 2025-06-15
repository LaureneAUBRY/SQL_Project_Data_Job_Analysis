-- DATA ANALYST
SELECT
    job_title_short,
    job_title,
    salary_year_avg
FROM
    job_filtered
WHERE
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC
LIMIT 10;

-- DATA SCIENTIST
SELECT
    job_title_short,
    job_title,
    salary_year_avg
FROM
    job_filtered
WHERE
    job_title_short = 'Data Scientist'
ORDER BY
    salary_year_avg DESC
LIMIT 10;