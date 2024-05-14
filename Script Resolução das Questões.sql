--01 Buscar o nome e ano dos filmes
Select 
	Nome, 
	Ano 
From 
	Filmes 

--02 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select 
	Nome, 
	Ano 
From 
	Filmes 
Order By 
	Ano

--03 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select 
	Nome, 
	Ano, 
	Duracao 
From 
	Filmes 
Where 
	Nome like 'De Volta para o Futuro'

--04 Buscar os filmes lançados em 1997
Select 
	* 
From 
	Filmes 
Where 
	Ano = 1997

--05 Buscar os filmes lançados APÓS o ano 2000
Select 
	* 
From 
	Filmes 
Where 
	Ano > 2000

--06 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select 
	* 
From 
	Filmes 
Where 
	Duracao > 100 and 
	Duracao < 150

--07 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
Select 
	Ano, 
	Count(*) as Quantidade 
From 
	Filmes 
Group by 
	Ano 
Order By 
	sum(Duracao) desc

--08 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
From 
	Atores 
Where 
	Genero = 'M'

--09 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
From 
	Atores 
Where 
	Genero = 'F' 
Order By 
	PrimeiroNome

--10 Buscar o nome do filme e o gênero
Select 
	T1.Nome, 
	T3.Genero 
From 
	Filmes T1 INNER JOIN 
	FilmesGenero T2 ON T1.Id = T2.IdFilme INNER JOIN 
	Generos T3 ON T2.IdGenero = T3.Id

--11 Buscar o nome do filme e o gênero do tipo "Mistério"
Select 
	T1.Nome, 
	T3.Genero 
From 
	Filmes T1 INNER JOIN 
	FilmesGenero T2 ON T1.Id = T2.IdFilme INNER JOIN 
	Generos T3 ON T2.IdGenero = T3.Id 
Where 
	Genero like 'Mistério'

--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select 
	T1.Nome, 
	T3.PrimeiroNome, 
	T3.UltimoNome,
	T2.Papel
From 
	Filmes T1 Inner Join 
	ElencoFilme T2 on T1.Id = T2.IdFilme Inner Join 
	Atores T3 on T2.IdAtor = T3.Id