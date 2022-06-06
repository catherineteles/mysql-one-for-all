SELECT
  s.song_name AS nome,
  COUNT(s.song_name) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.id
WHERE plan_id = 1 OR plan_id = 4
GROUP BY s.song_name;