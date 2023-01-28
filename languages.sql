WITH category_types AS
  (SELECT DISTINCT name, Count(name) AS occurence_value
  FROM bigquery-public-data.github_repos.languages
  GROUP BY name
  ORDER BY occurence_value DESC)

SELECT *
FROM category_types