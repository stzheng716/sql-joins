SELECT * 
FROM owners
LEFT OUTER JOIN vehicles 
ON  vehicles.owner_id = owners.id;

SELECT owners.first_name, count(*)
FROM owners
JOIN vehicles ON owner_id = owners.id
GROUP BY first_name
vehicles-# ORDER BY first_name;

SELECT first_name, ROUND(AVG(price),0), count(*)
FROM owners
JOIN vehicles
ON owner_id = owners.id
GROUP BY first_name                         
HAVING count(*) > 1 AND AVG(price) > 10000
vehicles-# ORDER BY first_name DESC;
