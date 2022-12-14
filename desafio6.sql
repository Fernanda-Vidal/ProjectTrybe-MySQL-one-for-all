SELECT
	ROUND(MIN(plan.price), 2) AS 'faturamento_minimo',
    ROUND(MAX(plan.price), 2) AS 'faturamento_maximo',
    ROUND(AVG(plan.price), 2) AS 'faturamento_medio',
    ROUND(SUM(plan.price), 2) AS 'faturamento_total'
FROM SpotifyClone.plans AS plan
INNER JOIN SpotifyClone.users AS user
	ON plan.plan_id = user.plan_id;