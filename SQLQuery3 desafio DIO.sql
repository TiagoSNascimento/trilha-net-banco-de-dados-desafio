--1

SELECT
	Nome, 
	Ano 
FROM Filmes

--2

SELECT
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

--3

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY Nome, Ano, Duracao

--4

SELECT * FROM Filmes
WHERE Ano = '1997'
ORDER BY Nome, Ano, Duracao

--5

SELECT * FROM Filmes
WHERE Ano >= '2000'
ORDER BY Nome, Ano, Duracao

--6

SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--7

SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
WHERE Ano <> ''
GROUP BY Ano
ORDER BY Quantidade DESC

--8

SELECT
	PrimeiroNome,
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'M'

--9

SELECT
	PrimeiroNome,
	UltimoNome, 
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

-- 11

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

-- 12

SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id