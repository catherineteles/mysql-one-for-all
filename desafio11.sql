SELECT song_name AS nome_musica, (
  CASE
    WHEN SUBSTRING(song_name, -7) = 'Streets' THEN REPLACE(song_name, 'Streets', 'Code Review')
    WHEN SUBSTRING(song_name, -7) = 'Her Own' THEN REPLACE(song_name, 'Her Own', 'Trybe')
    WHEN SUBSTRING(song_name, -10) = 'Inner Fire' THEN REPLACE(song_name, 'Inner Fire', 'Project')
    WHEN SUBSTRING(song_name, -5) = 'Silly' THEN REPLACE(song_name, 'Silly', 'Nice')
    WHEN SUBSTRING(song_name, -6) = 'Circus' THEN REPLACE(song_name, 'Circus', 'Pull Request')
  END
) AS novo_nome
FROM SpotifyClone.songs
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica;