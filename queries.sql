-- Part 1: Test it with SQL
CREATE TABLE `job` (
    `id` int NOT NULL,
    `employer` varchar(255) DEFAULT NULL,
    `name` varchar(255) DEFAULT NULL,
    `skills` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Part 2: Test it with SQL
SELECT name
FROM employer
WHERE location = "St. Louis City";

-- Part 3: Test it with SQL
DROP TABLE job;

-- Part 4: Test it with SQL
SELECT *
FROM skill
         LEFT JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;
