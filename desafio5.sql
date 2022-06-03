SELECT song_name AS cancao, COUNT(user_id) AS reproducoes
FROM SpotifyClone.songs
INNER JOIN SpotifyClone.history
ON songs.song_id = history.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;