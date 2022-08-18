SELECT 
	users.user_name AS usuario,
   IF(MAX(YEAR(history.date_reproduction)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.users AS users
	ON users.user_id = history.user_id
GROUP BY usuario
ORDER BY users.user_name;
  
  
