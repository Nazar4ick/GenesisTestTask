SELECT adverts.category_name, AVG(costs.cost) as average_costs
FROM adverts
JOIN costs ON costs.advert_id = adverts.advert_id
GROUP BY adverts.category_name
HAVING AVG(costs.cost) < 500;