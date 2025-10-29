-- Mencari tahun rilis > 2000
SELECT year from movies WHERE year > 2000; 

-- Mencari nama akhiran  s
SELECT first_name, last_name FROM actors WHERE first_name LIKE '%s' OR last_name LIKE '%s';

-- mencari rating di antar 5 dan 7, dan tahun rilis diantara 2004 dan 2006
SELECT rankscore, year FROM movies WHERE rankscore BETWEEN 5 AND 7 AND year BETWEEN 2004 AND 2006; 

-- mencati jumlah movie dengan rating 6
SELECT count(*)  as jumlah_movies FROM movies WHERE rankscore = 6;
