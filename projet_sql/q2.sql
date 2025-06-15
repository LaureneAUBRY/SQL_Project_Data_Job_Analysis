-- 1ère requête : affichage des compétences demandées pour chaque offre trouvée dans la question 1
-- DATA ANALYST
WITH meilleurs_salaires AS (
    SELECT
        job_id,
        job_title_short,
        job_title,
        salary_year_avg
    FROM
        job_filtered
    WHERE
        job_title_short = 'Data Analyst'
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)
SELECT
    ms.job_title,
    ms.salary_year_avg,
    STRING_AGG(sd.skills, ', ') AS skills
FROM
    meilleurs_salaires ms
INNER JOIN skills_job_dim sjd ON ms.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
GROUP BY
    ms.job_id,
    ms.job_title,
    ms.salary_year_avg
ORDER BY
    ms.salary_year_avg DESC;

-- DATA SCIENTIST
WITH meilleurs_salaires AS (
    SELECT
        job_id,
        job_title_short,
        job_title,
        salary_year_avg
    FROM
        job_filtered
    WHERE
        job_title_short = 'Data Scientist'
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)
SELECT
    ms.job_title,
    ms.salary_year_avg,
    STRING_AGG(sd.skills, ', ') AS skills
FROM
    meilleurs_salaires ms
INNER JOIN skills_job_dim sjd ON ms.job_id = sjd.job_id
INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
GROUP BY
    ms.job_id,
    ms.job_title,
    ms.salary_year_avg
ORDER BY
    ms.salary_year_avg DESC;

-- 2ème requête : occurrences des compétences parmi les offres trouvées dans la question 1
-- DATA ANALYST
WITH meilleurs_salaires_competences AS(
    WITH meilleurs_salaires AS (
        SELECT
            job_id,
            job_title_short,
            job_title,
            salary_year_avg
        FROM
            job_filtered
        WHERE
            job_title_short = 'Data Analyst'
        ORDER BY
            salary_year_avg DESC
        LIMIT 10
    )
    SELECT
        ms.job_id,
        ms.job_title,
        ms.salary_year_avg,
        STRING_AGG(sd.skills, ', ') AS skills
    FROM
        meilleurs_salaires ms
    INNER JOIN skills_job_dim sjd ON ms.job_id = sjd.job_id
    INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    GROUP BY
        ms.job_id,
        ms.job_title,
        ms.salary_year_avg
    ORDER BY
        ms.salary_year_avg DESC
)
SELECT
    sd.skills,
    COUNT(*) AS occurences
FROM
    meilleurs_salaires_competences msc
LEFT JOIN skills_job_dim sjd ON msc.job_id = sjd.job_id
LEFT JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE
    sd.skills IS NOT NULL
GROUP BY
    sd.skills
ORDER BY
    occurences DESC
LIMIT 10;

-- DATA SCIENTIST
WITH meilleurs_salaires_competences AS(
    WITH meilleurs_salaires AS (
        SELECT
            job_id,
            job_title_short,
            job_title,
            salary_year_avg
        FROM
            job_filtered
        WHERE
            job_title_short = 'Data Scientist'
        ORDER BY
            salary_year_avg DESC
        LIMIT 10
    )
    SELECT
        ms.job_id,
        ms.job_title,
        ms.salary_year_avg,
        STRING_AGG(sd.skills, ', ') AS skills
    FROM
        meilleurs_salaires ms
    INNER JOIN skills_job_dim sjd ON ms.job_id = sjd.job_id
    INNER JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    GROUP BY
        ms.job_id,
        ms.job_title,
        ms.salary_year_avg
    ORDER BY
        ms.salary_year_avg DESC
)

SELECT
    sd.skills,
    COUNT(*) AS occurences
FROM
    meilleurs_salaires_competences msc
LEFT JOIN skills_job_dim sjd ON msc.job_id = sjd.job_id
LEFT JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
WHERE
    sd.skills IS NOT NULL
GROUP BY
    sd.skills
ORDER BY
    occurences DESC
LIMIT 10;