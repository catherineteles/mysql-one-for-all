SELECT 
  a.artist_name AS artista,
  AA.album_name AS album,
  (SELECT COUNT(artist_id) FROM SpotifyClone.following WHERE artist_id = a.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS AA
ON a.artist_id = AA.artist_id
ORDER BY seguidores DESC, artista ASC, album ASC;