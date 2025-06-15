-- DATA ANALYST
WITH competences_demandes AS(
    SELECT
        sd.skill_id,
        sd.skills AS skills,
        COUNT(sjd.job_id) AS demande
    FROM
        job_filtered jf
    JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
    JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    WHERE
        jf.job_title_short = 'Data Analyst'
    GROUP BY
        sd.skill_id -- on change skills en skill_id pour être sûrs de faire des bonnes requêtes
    ORDER BY
        sd.skill_id ASC
),
competences_les_mieux_payees AS(
    SELECT
        sd.skill_id,
        sd.skills AS skills,
        ROUND(AVG(salary_year_avg), 2) AS salaire_moyen
    FROM
        job_filtered jf
    JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
    JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    WHERE
        jf.job_title_short = 'Data Analyst'
    GROUP BY
        sd.skill_id
)

SELECT
    cd.skills,
    cd.demande,
    cp.salaire_moyen
FROM
    competences_demandes cd
INNER JOIN competences_les_mieux_payees cp ON cd.skill_id = cp.skill_id
ORDER BY
    cd.demande DESC,
    cp.salaire_moyen DESC
LIMIT 10;

-- DATA SCIENTIST
WITH competences_demandes AS(
    SELECT
        sd.skill_id,
        sd.skills AS skills,
        COUNT(sjd.job_id) AS demande
    FROM
        job_filtered jf
    JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
    JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    WHERE
        jf.job_title_short = 'Data Scientist'
    GROUP BY
        sd.skill_id -- on change skills en skill_id pour être sûrs de faire des bonnes requêtes
    ORDER BY
        sd.skill_id ASC
),
competences_les_mieux_payees AS(
    SELECT
        sd.skill_id,
        sd.skills AS skills,
        ROUND(AVG(salary_year_avg), 2) AS salaire_moyen
    FROM
        job_filtered jf
    JOIN skills_job_dim sjd ON jf.job_id = sjd.job_id
    JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
    WHERE
        jf.job_title_short = 'Data Scientist'
    GROUP BY
        sd.skill_id
)

SELECT
    cd.skills,
    cd.demande,
    cp.salaire_moyen
FROM
    competences_demandes cd
INNER JOIN competences_les_mieux_payees cp ON cd.skill_id = cp.skill_id
ORDER BY
    cd.demande DESC,
    cp.salaire_moyen DESC
LIMIT 10;