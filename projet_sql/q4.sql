-- DATA ANALYST
SELECT
    sd.skills AS skills,
    ROUND(AVG(salary_year_avg), 2) AS salaire_moyen
FROM
    job_filtered jf
INNER JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE
    jf.job_title_short = 'Data Analyst'
GROUP BY
    skills
ORDER BY
    salaire_moyen DESC
LIMIT 10;

-- DATA SCIENTIST
SELECT
    sd.skills AS skills,
    ROUND(AVG(salary_year_avg), 2) AS salaire_moyen
FROM
    job_filtered jf
INNER JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE
    jf.job_title_short = 'Data Scientist'
GROUP BY
    skills
ORDER BY
    salaire_moyen DESC
LIMIT 10;
