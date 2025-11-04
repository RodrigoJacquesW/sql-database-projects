--2
CREATE TABLE editora (
	ideditora integer not null,
	nome varchar(50) unique not null, 

	constraint pk_edt_editora primary key (ideditora)
);

CREATE SEQUENCE editora_id_seq MINVALUE 1
ALTER TABLE editora ALTER ideditora SET DEFAULT nextval('editora_id_seq')
ALTER SEQUENCE editora_id_seq OWNED BY editora.ideditora

--3
insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

SELECT * FROM EDITORA

--4

CREATE TABLE categoria (
	idcategoria integer not null,
	nome varchar(50) unique not null, 

	constraint pk_ctg_categoria primary key (idcategoria)
	)

CREATE SEQUENCE categoria_id_seq MINVALUE 1
ALTER TABLE categoria ALTER idcategoria SET DEFAULT nextval('categoria_id_seq')
ALTER SEQUENCE categoria_id_seq OWNED BY categoria.idcategoria


--5

INSERT INTO categoria (nome) VALUES ('Banco de Dados')
INSERT INTO categoria (nome) VALUES ('HTML')
INSERT INTO categoria (nome) VALUES ('Java')
INSERT INTO categoria (nome) VALUES ('PHP')

--6

CREATE TABLE autor (
	idautor integer not null,
	nome varchar(50) not null, 

	constraint pk_aut_idautor primary key (idautor)
	)

CREATE SEQUENCE autor_id_seq MINVALUE 1
ALTER TABLE autor ALTER idautor SET DEFAULT nextval('autor_id_seq')
ALTER SEQUENCE autor_id_seq OWNED BY autor.idautor

--7

INSERT INTO autor (nome) VALUES ('Waldemar Setzer');
INSERT INTO autor (nome) VALUES ('Flávio Soares');
INSERT INTO autor (nome) VALUES ('John Watson');
INSERT INTO autor (nome) VALUES ('Rui Rossi dos Santos');
INSERT INTO autor (nome) VALUES ('Antonio Pereira de Resende');
INSERT INTO autor (nome) VALUES ('Claudiney Calixto Lima');
INSERT INTO autor (nome) VALUES ('Evandro Carlos Teruel');
INSERT INTO autor (nome) VALUES ('Ian Graham');
INSERT INTO autor (nome) VALUES ('Fabrício Xavier');
INSERT INTO autor (nome) VALUES ('Pablo Dalloglio');

8--

CREATE TABLE LIVRO(
	idlivro INTEGER NOT NULL,
	ideditora INTEGER NOT NULL,
	idcategoria INTEGER NOT NULL,
	nome VARCHAR(50) UNIQUE NOT NULL,

	constraint pk_lv_idlivro primary key (idlivro),
	constraint fk_lv_ideditora foreign key (ideditora) references editora (ideditora),
	constraint fk_lv_idcategoria foreign key (idcategoria) references categoria (idcategoria)

	
)

CREATE SEQUENCE livro_id_seq MINVALUE 1
ALTER TABLE livro ALTER idlivro SET DEFAULT nextval('livro_id_seq')
ALTER SEQUENCE livro_id_seq OWNED BY livro.idlivro

9--

INSERT INTO livro (ideditora,idcategoria,nome) VALUES (2,1,'Banco de Dados – 1 Edição')
INSERT INTO livro (ideditora, idcategoria, nome) VALUES (1, 1, 'Oracle DataBase 11G Administração'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(3, 3, 'Programação de Computadores em Java'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(4, 3, 'Programação Orientada a Aspectos em Java'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(4, 2, 'HTML5 – Guia Prático'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(3, 2, 'XHTML:Guia Referência para Desenvolvimento na Web'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(1, 4, 'PHP para Desenvolvimento Profissional'),
INSERT INTO livro (ideditora, idcategoria, nome) VALUES(2, 4, 'PHP com Programação Orientada a Objetos');

10--

CREATE TABLE livro_autor (
    idlivro INTEGER NOT NULL,
    idautor INTEGER NOT NULL,

    CONSTRAINT pk_livro_autor PRIMARY KEY (idlivro, idautor),
    CONSTRAINT fk_livro_autor_livro FOREIGN KEY (idlivro) REFERENCES livro (idlivro),
    CONSTRAINT fk_livro_autor_autor FOREIGN KEY (idautor) REFERENCES autor (idautor)
);

11-

INSERT INTO livro_autor (idlivro, idautor) VALUES (1, 1);
INSERT INTO livro_autor (idlivro, idautor) VALUES (1, 2); 
INSERT INTO livro_autor (idlivro, idautor) VALUES (2, 3); 
INSERT INTO livro_autor (idlivro, idautor) VALUES (3, 4);
INSERT INTO livro_autor (idlivro, idautor) VALUES (4, 5); 
INSERT INTO livro_autor (idlivro, idautor) VALUES (4, 6);
INSERT INTO livro_autor (idlivro, idautor) VALUES (5, 7);
INSERT INTO livro_autor (idlivro, idautor) VALUES (6, 8); 
INSERT INTO livro_autor (idlivro, idautor) VALUES (7, 9);
INSERT INTO livro_autor (idlivro, idautor) VALUES (8, 10);

12--

CREATE TABLE aluno (
    idaluno INTEGER NOT NULL,
    nome INTEGER NOT NULL,

    CONSTRAINT pk_aln_autor PRIMARY KEY (idaluno)
);


CREATE SEQUENCE aluno_id_seq MINVALUE 1
ALTER TABLE aluno ALTER idaluno SET DEFAULT nextval('aluno_id_seq')
ALTER SEQUENCE aluno_id_seq OWNED BY aluno.idaluno

ALTER TABLE aluno 
ALTER COLUMN nome TYPE VARCHAR(100);

13--

INSERT INTO aluno (nome) VALUES ('Mario');
INSERT INTO aluno (nome) VALUES ('João');
INSERT INTO aluno (nome) VALUES ('Paulo');
INSERT INTO aluno (nome) VALUES ('Pedro');
INSERT INTO aluno (nome) VALUES ('Maria');

14--

CREATE TABLE emprestimo (

    idemprestimo SERIAL PRIMARY KEY,         
    idaluno INTEGER NOT NULL,                   
    data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
    data_devolucao DATE NOT NULL,              
    valor DECIMAL(10,2) NOT NULL,                 
    devolvido CHAR(1) NOT NULL,                    

    CONSTRAINT fk_emprestimo_aluno 
    FOREIGN KEY (idaluno) REFERENCES aluno (idaluno)
);

CREATE SEQUENCE emprestimo_id_seq MINVALUE 1
ALTER TABLE emprestimo ALTER idemprestimo SET DEFAULT nextval('emprestimo_id_seq')
ALTER SEQUENCE emprestimo_id_seq OWNED BY emprestimo.idemprestimo

15--
INSERT INTO emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES
(1, '2012-05-02', '2012-05-12', 10.00, 'S'),
(1, '2012-04-23', '2012-05-03', 5.00,  'N'),
(2, '2012-05-10', '2012-05-20', 12.00, 'N'),
(3, '2012-05-10', '2012-05-20', 8.00,  'S'),
(4, '2012-05-05', '2012-05-15', 15.00, 'N'),
(4, '2012-05-07', '2012-05-17', 20.00, 'S'),
(4, '2012-05-08', '2012-05-18', 5.00,  'S');

SELECT * FROM ALUNO

16--

CREATE TABLE emprestimo_livro (
    idemprestimo INTEGER NOT NULL,
    idlivro INTEGER NOT NULL,

    CONSTRAINT pk_emprestimo_livro PRIMARY KEY (idemprestimo, idlivro),

    CONSTRAINT fk_emprestimo_livro_emprestimo 
        FOREIGN KEY (idemprestimo) REFERENCES emprestimo (idemprestimo),

    CONSTRAINT fk_emprestimo_livro_livro 
        FOREIGN KEY (idlivro) REFERENCES livro (idlivro)
);

17--
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (1, 1);
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (3, 2);
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (4, 5);
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (5, 4); 
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (6, 6);
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (6, 1); 
INSERT INTO emprestimo_livro (idemprestimo, idlivro) VALUES (7, 8);

18--
CREATE INDEX idx_emprestimo_data_emprestimo
ON emprestimo (data_emprestimo);

CREATE INDEX idx_emprestimo_data_devolucao
ON emprestimo (data_devolucao);

19--
SELECT
	nome
FROM autor
ORDER BY nome ASC

20--
SELECT
	nome
FROM autor
WHERE nome LIKE 'P%'

21--
SELECT
	l.nome
FROM livro AS l
INNER JOIN categoria AS c
ON l.idcategoria = c.idcategoria
WHERE c.nome = 'Banco de Dados' OR c.nome = 'Java'

22--
SELECT
	l.nome
FROM livro AS l
INNER JOIN editora AS e
ON l.ideditora = e.ideditora
WHERE e.nome = 'Bookman'

23--
SELECT
	l.nome
FROM livro AS l
INNER JOIN emprestimo_livro AS el 
ON l.idlivro = el.idlivro
INNER JOIN emprestimo AS e
ON e.idemprestimo = el.idemprestimo
WHERE e.data_emprestimo BETWEEN '05/05/2012' AND '10/05/2012'

24--

SELECT
	l.nome
FROM livro AS l
INNER JOIN emprestimo_livro AS el 
ON l.idlivro = el.idlivro
INNER JOIN emprestimo AS e
ON e.idemprestimo = el.idemprestimo
WHERE e.data_emprestimo NOT BETWEEN '05/05/2012' AND '10/05/2012'

25--

SELECT
	l.nome
FROM livro AS l
INNER JOIN emprestimo_livro AS el 
ON l.idlivro = el.idlivro
INNER JOIN emprestimo AS e
ON e.idemprestimo = el.idemprestimo
WHERE e.devolvido = 'S'

26--

SELECT 
	COUNT(idlivro)
FROM livro

27--
SELECT
	SUM(valor) AS emprestimo
FROM emprestimo

28--
SELECT
	AVG(valor) AS media_emprestimo
FROM emprestimo

29--

SELECT
	MAX(valor) AS max_emprestimo
FROM emprestimo

30--
SELECT
	MIN(valor) AS min_emprestimo
FROM emprestimo

31--

SELECT
	SUM(e.idemprestimo) AS valor_emprestimo
FROM emprestimo AS e
WHERE e.data_emprestimo BETWEEN '05/05/2012' AND '10/05/2012'

32--

SELECT
	COUNT(e.idemprestimo) AS quantidade_emprestimo
FROM emprestimo AS e
WHERE e.data_emprestimo BETWEEN '01/05/2012' AND '05/05/2012'

33--
CREATE VIEW livro_categoria_editora AS 
	SELECT
		l.nome AS livro,
		c.nome AS categoria,
		e.nome AS editora
	FROM livro AS l
	INNER JOIN categoria AS c 
	ON l.idcategoria = c.idcategoria
	INNER JOIN editora AS e
	ON l.ideditora = e.ideditora

--34 O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.

CREATE VIEW livro_autor_nome AS
SELECT
	l.nome AS livro,
	a.nome AS autor
FROM livro AS l 
INNER JOIN livro_autor AS la 
ON l.idlivro = la.idlivro
INNER JOIN autor AS a
ON la.idautor = a.idautor
	
35--

SELECT
	l.nome AS livro,
	a.nome AS autor
FROM livro AS l 
INNER JOIN livro_autor AS la 
ON l.idlivro = la.idlivro
INNER JOIN autor AS a
ON la.idautor = a.idautor
WHERE a.nome = 'Ian Graham'

36-- O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).

SELECT
	a.nome AS aluno,
	e.data_emprestimo AS data_emprestimo,
	e.data_devolucao AS data_devolucao
FROM aluno AS a
INNER JOIN emprestimo AS e
ON a.idaluno = e.idemprestimo

37-- O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).

SELECT
	l.nome AS livro
FROM livro AS l
INNER JOIN emprestimo_livro AS el
ON l.idlivro = el.idlivro

38-- O nome da editora e a quantidade de livros de cada editora (LIVRO).

SELECT 
	e.nome,
	COUNT(l.idlivro) AS qnt_livro
FROM editora AS e 
INNER JOIN livro AS l
ON e.ideditora = l.ideditora
GROUP BY e.nome

39-- O nome da categoria e a quantidade de livros de cada categoria (LIVRO).

SELECT
	c.nome AS categoria,
	COUNT(l.idlivro) AS qnt_livro
FROM categoria AS c
INNER JOIN livro AS l
ON c.idcategoria = l.idcategoria
GROUP BY c.nome

40-- O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).

SELECT
	a.nome AS autor,
	COUNT(l.idlivro) AS qnt_livro
FROM autor AS a
INNER JOIN livro_autor AS la
ON a.idautor = la.idautor
INNER JOIN livro AS l
ON la.idlivro = l.idlivro
GROUP BY a.nome

41-- O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
SELECT
	a.nome AS aluno,
	COUNT(e.idemprestimo) AS qnt_emprestimo
FROM aluno AS a
INNER JOIN emprestimo AS e
ON a.idaluno = e.idaluno
GROUP BY a.nome

42--O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).]

SELECT
	a.nome AS aluno,
	SUM(e.valor) AS sum_value
FROM aluno AS a
INNER JOIN emprestimo AS e
ON a.idaluno = e.idaluno
GROUP BY a.nome

43--O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).

SELECT
	a.nome AS aluno,
	SUM(e.valor) AS sum_value
FROM aluno AS a
INNER JOIN emprestimo AS e
ON a.idaluno = e.idaluno
GROUP BY a.nome
HAVING SUM(e.valor) > 7

44--O nome de todos os alunos em ordem decrescente e em letra maiúscula.
SELECT
	LOWER(nome) AS nome
FROM aluno
ORDER BY nome DESC

45--Os empréstimos que foram feitos no mês 04 de 2012

SELECT
	idemprestimo
FROM emprestimo
WHERE data_emprestimo BETWEEN '2012-04-01' AND '2012-04-30'

46--Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
SELECT
	idemprestimo,
	idaluno,
	data_emprestimo,
	data_devolucao,
	valor,
	CASE
		WHEN devolvido = 'S' THEN 'Devolução completa'
		ELSE 'Em atraso'
	END AS status
FROM emprestimo

47-- Somente o caractere 5 até o caractere 10 do nome dos autores.
SELECT
	SUBSTRING(nome,5,5) AS nome
FROM autor

48-- O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc

SELECT
    TO_CHAR(data_emprestimo, 'Month') AS mes_nome
FROM emprestimo;

49--A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.

SELECT
	data_emprestimo,
	valor
FROM emprestimo
WHERE valor > (SELECT AVG(valor) FROM emprestimo)

50--A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.

SELECT 
    e.data_emprestimo,
    e.valor
FROM emprestimo AS e
WHERE e.idemprestimo IN (
    SELECT el.idemprestimo
    FROM emprestimo_livro AS el
    GROUP BY el.idemprestimo
    HAVING COUNT(el.idlivro) > 1
)

51--A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.

SELECT
	data_emprestimo,
	valor
FROM emprestimo
WHERE valor < (SELECT SUM(valor) FROM emprestimo)






