SELECT name AS usuario, (SELECT
CASE
    WHEN YEAR(max(history_date)) >= 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
END) AS condicao_usuario
FROM SpotifyClone.users
INNER JOIN SpotifyClone.history
ON users.id = history.user_id
GROUP BY usuario;
