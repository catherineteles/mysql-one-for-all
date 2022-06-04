SELECT 
  a.artist_name AS artista,
  AA.album_name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS AA
ON a.artist_id = AA.artist_id
WHERE a.artist_name = "Walter Phoenix"
ORDER BY album;