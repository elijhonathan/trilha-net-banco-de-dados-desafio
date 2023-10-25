-- 1
SELECT nome, ano FROM Filmes

-- 2
SELECT * FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT Nome, Ano, Duracao 
FROM Filmes
WHERE Id = 28

-- 4
SELECT *
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT *
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10
SELECT Filmes.Nome AS NomeFilme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
ORDER BY Genero

-- 11
SELECT Filmes.Nome AS NomeFilme, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12
SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN	ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


select * from FilmesGenero
select * from Generos
select * from Filmes
select * from Atores
select * from ElencoFilme