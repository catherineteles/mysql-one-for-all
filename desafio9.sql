SELECT COUNT(u.name) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON u.id = h.user_id
WHERE u.name = 'Bill';