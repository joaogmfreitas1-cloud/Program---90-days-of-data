SELECT * FROM PERSON.PERSON;
SELECT TITLE FROM PERSON.PERSON
SELECT * FROM PERSON.EmailAddress
-- desafio SELECT
SELECT firstname, lastname FROM PERSON.PERSON


-- desafio DISTINCT 
SELECT DISTINCT firstname FROM PERSON.PERSON
-- Quantos sobrenomes únicos temos na tabela person.person? 
SELECT DISTINCT lastname FROM PERSON.PERSON


-- desafio WHERE
/* OPERADOR
= IGUAL
> MAIOR QUE
< MENOR QUE 
>= MAIOR QUE OU IGUAL 
<= MENOR QUE OU IGUAL
<> DIFERNETE DE 
AND OPERADOR LÓGICO E
OR OPERADOR LÓGICO OU 
*/

SELECT * FROM PERSON.PERSON WHERE LASTNAME = 'MILLER'
-- a equipe de produção precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção, weight 
SELECT Name FROM PRODUCTION.Product WHERE weight > '500' and weight < '700'
-- Foi pedido pelo marketing um relação de todos os empregados , employees, que são casados , single or married, e são assalariados, salaried
SELECT * FROM HumanResources.Employee where MaritalStatus = 'M' AND SalariedFlag = '1'
-- Um usuário chamado PETER KREBS está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança
SELECT * FROM PERSON.PERSON WHERE firstname = 'Peter' and LastName = 'Krebs' -- 26
SELECT * FROM PERSON.EmailAddress where BusinessEntityID = 26


-- DESAFIO COUNT!!
-- Quero saber quantos produtos temos cadastrados em nossa tabela de produtos = 504
SELECT * FROM PRODUCTION.Product
SELECT count(*) FROM Production.Product

-- Quero saber quantos  tamanhos de produtos temos cadastrado em nossa tabela = 211
SELECT count(SIZE) FROM Production.Product

-- DESAFIO TOP!
SELECT TOP 100 * FROM Production.Product

-- DESAFIO ORDER BY!
SELECT * FROM Person.Person ORDER BY FIRSTNAME ASC
SELECT * FROM Person.Person ORDER BY FIRSTNAME DESC
-- Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

SELECT * FROM PRODUCTION.PRODUCT ORDER BY ListPrice DESC
SELECT TOP 10 * FROM PRODUCTION.PRODUCT ORDER BY ListPrice DESC

-- DESAFIO BETWEEN!
SELECT * FROM Production.Product WHERE ListPrice BETWEEN 1000 AND 1500 
SELECT * FROM HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' order by HireDate
-- DESAFIO IN!
SELECT * FROM Person.Person WHERE BusinessEntityID IN (2,7,13)
-- DESAFIO LIKE!
SELECT * FROM Person.Person WHERE FirstName like 'ovi%'

-- Quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares? 
SELECT Count(ListPrice) FROM Production .Product WHERE ListPrice > 1500
-- Quantos pessoas temos com o sobrenome que inicia com a letra P? 
SELECT COUNT(lastname) from Person.Person where LastName LIKE 'p%'
-- Em quantas cidades únicas estão cadastrados nossos clientes? 
SELECT count(DISTINCT city) FROM person.Address
-- Em quantas cidades únicas estão cadastrados nossos clientes? 
SELECT DISTINCT(city) FROM person.Address
-- Quantos produtos vermelhos tem preço entre 500 a 1000 dolares? 
SELECT COUNT(LISTPRICE) FROM Production.PRODUCT where color = 'red' AND ListPrice between 500 and 1000
-- Quantos produtos tem a palavra ROAD no nome deles? 
