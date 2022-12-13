--		QUESTÕES

-- 	1. Liste todos os nomes dos empregados da empresa.

	SELECT nome FROM `empregado`
	
-- 	2. Quantos dependentes existem?

	SELECT COUNT(cod_dependente) FROM `dependente`
	
-- 	3. Liste os empregados que recebam mais que R$3000,00.

	SELECT * FROM `empregado` WHERE salario > 3000
	
-- 	4. Refaça o exercício anterior ordenando do mais velho para o mais novo.

	SELECT * FROM `empregado` WHERE salario > 3000 ORDER BY admissao

--	5. Qual o dependente de código 1?

	SELECT * FROM `dependente` WHERE cod_dependente = 1
	
--	6. Quais dependentes têm o nome terminando pela letra 'A'?

	SELECT * FROM `dependente` WHERE nome_dependente LIKE "%a"

--	7. Quais os funcionários têm a letras ‘EU’ no nome?

	SELECT * FROM `dependente` WHERE nome_dependente LIKE "%eu%"

--	8. Qual empregado tem salário entre R$4000 e R$9000?

	SELECT * FROM `empregado` WHERE salario BETWEEN 4000 AND 9000

--	9. Qual o maior salário?

	SELECT MAX(salario) FROM `empregado`

--	10. Qual a média salarial da empresa? 

	SELECT AVG(salario) FROM `empregado`