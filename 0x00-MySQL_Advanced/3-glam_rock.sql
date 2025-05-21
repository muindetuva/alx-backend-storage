-- TASK: List all bands with 'Glam rock' as their main style, ranked by their lifespan

SELECT band_name,
       IF(split IS NULL, 2022 - formed, split - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
