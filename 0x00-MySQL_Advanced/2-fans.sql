-- Column names must be: origin and nb_fans
-- Your script can ne executed on any database
SELECT origin, SUM(fans) as nb_fans from metal_bands
GROUP BY origin ORDER BY nb_fans DESC;
