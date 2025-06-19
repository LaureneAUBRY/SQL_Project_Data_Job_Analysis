# Projet personnel de SQL : Etude des offres d’emplois en Data Science en France en 2023

## Introduction
En Data Science, les compétences peuvent parfois être nombreuses, même pour un unique type de métier. Il peut donc être difficile de savoir quelle compétence acquérir en priorité. C'est pourquoi nous nous intéressons dans ce rapport aux compétences clés à obtenir pour devenir Data Analyst ou Data Scientist.

L'objectif principal de ce projet est d'identifier les compétences les plus demandées et mieux rémunérées dans le domaine de la Data Science en France en 2023.

Ce projet est basé d'une vidéo sur YouTube de Luke Barousse "SQL for Data Analytics - Learn SQL in 4 Hours".

Pour mener à bien ce projet, nous nous sommes servis de :
- SQL (PostgreSQL) : requêtes et manipulation des données ;
- Python : ajout des fichiers CSV dans les tables ;
- Visual Studio Code : éditeur de code choisi pour interagir avec la base de données ;
- Git et GitHub : partage du projet.

L'ensemble des requêtes SQL ayant été utiles durant ce projet se trouvent [ici](/projet_sql/).

## Nettoyage des données
Les données ont été téléchargées sous la forme de quatre fichiers CSV sur un Google Drive
partagé par Luke Barousse via un lien dans la vidéo YouTube évoquée ci-dessus. Ces fichiers
sont :

- company_dim.csv : informations sur les entreprises ;
- job_postings_fact.csv : ensemble des informations sur les offres d’emplois ;
- skills_dim.csv : ensemble des compétences pouvant être demandées dans les offres ;
- skills_job_dim.csv : table liant les compétences et les offres.

Le modèle conceptuel associé est disponible ci-dessous.

![MCD](/images/projet_sql_mcd_grand.png)

*Modèle conceptuel de données*

Le dataset comportant 787686 offres d’emplois du monde entier, nous nous sommes concentrés sur des annonces pour des postes de Data Analyst et de Data Scientist en France.

Dans la partie suivante, nous allons nous intéresser en premier aux salaires annuels les plus élevés de la base de données, nous retirons donc les offres ne renseignant pas cette information.

Ce rapport s’adresse à des étudiants ou jeunes diplômés en Data Science à la recherche d’un premier emploi. Nous avons donc pris la décision de retirer les offres de stage et d’alternance.

Les emplois demandant plusieurs années d’expérience ont été conservé dans ce projet. En effet, ces mentions peuvent être vues comme des objectifs à atteindre pour certain.e.s. Cela peut permettre aux débutants de prendre conscience des compétences à acquérir pour obtenir plus d’expérience professionnelle.

## Analyse
### 1 - Salaires les plus élevés
Tout d'abord, nous nous intéressons aux salaires les plus élevés du marché de la Data Science. Cette recherche est essentielle pour l'objectif final de notre projet puisque nous voulons mettre en lumière les compétences à avoir en fonction du poste souhaité.

Nous récupérons uniquement le nom de l'offre, le type d'emploi (Data Analyst ou Data Scientist), et le salaire associé. Nous limitons le nombre de résultats à 10 pour rendre plus rapide l'exécution de la requête et d'avoir une idée générale des emplois les mieux rémunérés.

Les résultats obtenus par les requêtes du fichier [q1.sql](/projet_sql/q1.sql) sont retranscrits dans les tableaux ci-dessous :

| Type de poste | Nom de l'offre | Salaire moyen annuel |
|----------------|---------|---------|
| Data Analyst | Research Engineer - Physics (H/F) | 200000.0 |
| Data Analyst | Data Architect | 163782.0 |
| Data Analyst | Security Data Analyst | 111202.0 |
| Data Analyst | Data Analyst Senior F/H | 111202.0 |
| Data Analyst | Product Data Analyst (F/M/X) | 111175.0 |
| Data Analyst | Data analyst (h/f) en CDI à Paris | 111175.0 |
| Data Analyst | Data Analyst | 111175.0 |
| Data Analyst | Data Analyst (H/F) - CDI | 111175.0 |
| Data Analyst | Business/data analyst | 111175.0 |
| Data Analyst | Data Analyst | 111175.0 |

*Les 10 postes de Data Analyst présentant les meilleurs salaires en France*

| Type de poste | Nom de l'offre | Salaire moyen annuel |
|----------------|---------|---------|
| Data Scientist | Head of Data - X/F/M | 166419.5 |
| Data Scientist | Deputy Head of Data Science | 166419.5 |
| Data Scientist | Data Scientist | 164000.0 |
| Data Scientist | Data Scientist F/H | 163525.0 |
| Data Scientist | Data Scientist confirmé/sénior - H/F | 157500.0 |
| Data Scientist | Data Scientist Confirmé - Grenoble H/F | 157500.0 |
| Data Scientist | Data Scientist (H/F) | 157500.0 |
| Data Scientist | Data Scientist - Agronomie (H/F) - CDI | 157500.0 |
| Data Scientist | Generative AI Data Scientist | 157500.0 |
| Data Scientist | Data Scientist - Senior Manager (H/F) | 157500.0 |

*Les 10 postes de Data Scientist présentant les meilleurs salaires en France*

En France, les métiers dans la Data rapportant le plus au niveau du salaire annuel sont essentiellement des postes de Data Scientist. Cependant, parmi les deux tableaux, le plus élevé est, cependant, un poste de Data Analyst ayant un salaire annuel de 200000€, soit 16666€ par mois.

Nous rappelons que les salaires présentés dans les tableaux ci-dessus correspondent aux plus hauts salaires et ne représentent pas le marché global.

### 2 - Compétences des postes aux salaires les plus élevés

A présent, nous allons chercher les compétences demandées pour les postes trouvés dans la partie précédente. Effectivement, si notre but est d'obtenir l'un de ces postes, il faut vérifier si nous possédons les prérequis associés. Nous les avons regroupés dans les tableaux suivants :

| Compétences | Occurrences |
| ----------- | ----------- |
| sql         | 7           |
| python      | 6           |
| tableau     | 4           |
| azure       | 3           |
| snowflake   | 2           |
| kafka       | 2           |
| bigquery    | 2           |
| airflow     | 2           |
| excel       | 2           |
| spark       | 2           |

*Compétences les plus demandées pour les postes de Data Analyst les mieux rémunérés*

| Compétences | Occurrences |
| ----------- | ----------- |
| python      | 8           |
| sql         | 5           |
| r           | 3           |
| tableau     | 3           |
| pandas      | 3           |
| azure       | 3           |
| aws         | 3           |
| numpy       | 2           |
| git         | 2           |
| airflow     | 2           |

*Compétences les plus demandées pour les postes de Data Scientist les mieux rémunérés*

En 2023, pour devenir Data Analyst ou Data Scientist, il était nécessaire de connaître le SQL et Python. De plus, une expérience en Tableau était recherchée pour les Data Analysts. Pour les Data Scientists, la connaissance du langage R était également indispensable.

### 3 - Compétences les plus demandées

Comme expliqué dans la partie précédente, afin de devenir Data Analyst ou Data Scientist, des prérequis sont demandés. Contrairement à la partie précédente, nous nous intéressons aux compétences les plus demandées en général pour des postes de Data Analyst et de Data Scientist. Cette partie est tout aussi pertinente que la précédente ; elle nous permet d'avoir une vision d'ensemble sur ces postes et de savoir ce qu'un métier demande en général. De plus, les métiers les mieux rémunérés sont souvent, d'après les tables de la partie [salaires les plus élevés](#1---salaires-les-plus-élevés), des postes demandant plusieurs années d'expérience. De ce fait, ils nécessitent de connaître plus de logiciels et/ou d'avoir plus de qualifications que des postes pour débutants.

| Compétences | Occurrences |
| ----------- | ----------- |
| sql         | 25          |
| python      | 19          |
| tableau     | 16          |
| azure       | 9           |
| excel       | 7           |
| power bi    | 6           |
| snowflake   | 5           |
| airflow     | 5           |
| spark       | 4           |
| github      | 4           |

*Compétences les plus demandées en général pour un Data Analyst*

| Compétences  | Occurrences |
| ------------ | ----------- |
| python       | 32          |
| sql          | 22          |
| r            | 12          |
| tableau      | 12          |
| git          | 7           |
| pandas       | 6           |
| aws          | 6           |
| scikit-learn | 6           |
| java         | 6           |
| tensorflow   | 6           |

*Compétences les plus demandées en général pour un Data Scientist*

Nous remarquons tout de suite que les tableaux sont très similaires à la partie [2](#2---compétences-des-postes-aux-salaires-les-plus-élevés) ; les 4 premières lignes sont identiques en terme de compétences.

Pour les Data Analysts, le Excel est moins demandé pour les postes les mieux rémunérés.

Pour les Data Scientists, les librairies de Python (Pandas, Scikit-Learn, TensorFlow) sont plus demandées en général que pour des postes à forte rémunération.

### 4 - Compétences en fonction du salaire
Une question intéressante est d'identifier comment les compétences peuvent influencer le salaire. Pour certains, il s'agirait alors d'une manière de décider des compétences à acquérir en priorité.

| Compétences | Salaire moyen |
| ----------- | ------------- |
| c           | 200000.00     |
| gitlab      | 163782.00     |
| terraform   | 163782.00     |
| kafka       | 118602.33     |
| jenkins     | 113994.00     |
| docker      | 113994.00     |
| ssis        | 111202.00     |
| c#          | 111202.00     |
| php         | 111175.00     |
| c++         | 111175.00     |

*Compétences les plus demandées en fonction du salaire des Data Analyst*

| Compétences | Salaire moyen |
| ----------- | ------------- |
| bigquery    | 157500.00     |
| pyspark     | 157500.00     |
| rshiny      | 157500.00     |
| hadoop      | 157500.00     |
| numpy       | 150216.75     |
| kafka       | 147500.00     |
| jupyter     | 140500.00     |
| matplotlib  | 140265.00     |
| pandas      | 137377.83     |
| aws         | 136427.83     |

*Compétences les plus demandées en fonction du salaire des Data Scientist*

Les résultats obtenus pour les Data Analysts sont différents de ceux observés précédemment. Plusieurs langages de programmation sont présents comme C, C#, C++ et PHP.

Pour les Data Scientists, nous retrouvons peu de compétences déjà évoquées auparavant. Nous y trouvons des logiciels de Big Data comme BigQuery, PySpark, Hadoop, Kafka et AWS. Il y a également des librairies Python (Numpy, Matplotlib et Pandas) utiles pour manipuler et visualiser des données et R (RShiny) pour créer des applications Web.

### 5 - Compétences à acquérir
Nous pouvons arrivons à notre principal objectif étant d'identifier les compétences à acquérir en priorité. Nous affichons dans les tableaux ci-dessous les compétences les plus demandées en fonction du poste et du salaire moyen annuel. Nous avons choisi de trier les tableaux d'abord par rapport aux occurrences des compétences puis selon le salaire si deux compétences sont tout aussi demandées l'une que l'autre.

| Compétences | Demande | Salaire moyen |
| ----------- | ------- | ------------- |
| sql         | 25      | 86901.38      |
| python      | 19      | 96725.05      |
| tableau     | 16      | 75850.09      |
| azure       | 9       | 89361.22      |
| excel       | 7       | 90259.50      |
| power bi    | 6       | 84369.00      |
| snowflake   | 5       | 89062.80      |
| airflow     | 5       | 87297.00      |
| aws         | 4       | 105708.00     |
| spark       | 4       | 103326.75     |

*Les 10 compétences à acquérir pour être Data Analyst*

| Compétences  | Demande | Salaire moyen |
| ------------ | ------- | ------------- |
| python       | 32      | 108680.66     |
| sql          | 22      | 101230.93     |
| tableau      | 12      | 122047.33     |
| r            | 12      | 107836.33     |
| git          | 7       | 105928.57     |
| pandas       | 6       | 137377.83     |
| aws          | 6       | 136427.83     |
| scikit-learn | 6       | 125393.75     |
| azure        | 6       | 114716.67     |
| tensorflow   | 6       | 103748.42     |

*Les 10 compétences à acquérir pour être Data Scientist*

Comme nous avons pris en priorité les compétences les plus demandées, les tableaux ci-dessus ressemblent presque entièrement à ceux de la partie [3](#3---compétences-les-plus-demandées) sur les compétences les plus demandées, ce qui était attendu.

Nous remarquons que les 3 premières compétences à acquérir sont les mêmes pour les Data Analyst et les Data Scientist mais pas dans le même ordre. Nous pouvons cependant noter quelques différences ; une meilleure utilisation de Python (Pandas), plus précisément du Machine Learning et du Deep Learning (Scikit-Learn et TensforFlow), est attendue pour être Data Scientist. Quant aux Data Analysts, il est indispensable de s'y connaître en visualisation de données (Power BI) mais également avoir des compétences en Big Data (Azure, Snowflake, Airflow).

## Conclusion
L'étude réalisée donne une meilleure vision sur les métiers de Data Analyst et Data Scientist et en quoi ils sont différents. Les Data Analysts s'occupent de la visualisation des données et de leur interprétation tandis que les Data Scientist créent des modèles de Machine Learning et de Deep Learning.

L'application à un cas concret m'a permis de consolider mes compétences en SQL et de me servir de Git. Ce projet me motive de continuer à apprendre et de me spécialiser vers l'une de ces professions.
