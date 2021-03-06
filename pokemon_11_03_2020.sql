#Selecione o banco de dados (esquema) pokédex.
USE `pokedex`;
#Obtenha informações da estrutura da tabela Pokémon.
SELECT * FROM Pokemon;
#Selecione todos os pokémons cadastrados no banco de dados.
SELECT nome FROM Pokemon;
#Selecione o numero, nome, cor, altura_m e peso_kg de todos os pokémons cadastrados.
SELECT numero, nome, cor, altura_m, peso_kg
FROM Pokemon;
#Qual é o numero e o nome de todos os pokémons da primeira geração?
SELECT numero, nome FROM Pokemon WHERE geracao = 1;
#Quais são os pokémons Amarelo da primeira geração?
SELECT nome, cor, geracao FROM Pokemon WHERE geracao = 1 AND cor = 'amarelo';
#Qual é o pokémon mais forte?
SELECT nome, total FROM Pokemon ORDER BY total DESC LIMIT 1;
#Selecione o numero, nome e tipo1; de todos os pokémons cujo tipo primário é Fire.
SELECT numero, nome, tipo1 FROM Pokemon WHERE tipo1 = 'Fire';
#Selecione em ordem decrescente o numero, nome e defesa de todos os pokémons.
SELECT numero, nome, defesa FROM Pokemon ORDER BY numero, nome, defesa DESC;
#Qual o pokémon possui menor taxa de captura? Selecione apenas numero e nome.
SELECT numero, nome FROM Pokemon ORDER BY taxa_captura ASC LIMIT 1;
#Selecione todos pokémons que não possuem tipo secundário, ou seja, tipo2.
SELECT * FROM Pokemon WHERE tipo2 IS NULL;
#Selecione numero, nome, tipo1, tipo2 de todos os pokémons que possuem o peso entre 100kg e 500kg.
SELECT numero, nome, tipo1, tipo2 FROM Pokemon WHERE peso_kg BETWEEN 100 AND 500;
#Crie um ranking dos top 10 pokémons mais velozes, contendo numero, nome e velocidade.
SELECT numero, nome, velocidade FROM Pokemon WHERE velocidade < 200 ORDER BY velocidade DESC LIMIT 10;
#Selecione numero, nome, tipo1, tipo2, taxa_captura dos pokémons que possuem os dois tipos e tenham uma taxa de captura acima de 100. Ordene os resultados decrescente pela taxa de captura.
SELECT numero, nome, tipo1, tipo2, taxa_captura FROM Pokemon WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL AND taxa_captura > 100 ORDER BY taxa_captura DESC;
#Quais são os tipos primários dos pokémons?
SELECT distinct tipo1 FROM Pokemon; 
#Selecione o numero, nome e cor; de todos os pokémons que o nome começa com a letra D.
SELECT numero, nome, cor FROM Pokemon WHERE nome LIKE 'D%';
#Qual é o pokémon mais poderoso de todas as gerações?
SELECT nome, total FROM Pokemon WHERE total ORDER BY total DESC LIMIT 1;
#Selecione o numero, nome, defesa, ataque dos pokémons com defesa > 60 e ataque <= 70; ordenados decrescente pelo total.
SELECT numero, nome, defesa, ataque FROM Pokemon WHERE defesa > 60 AND ataque <= 70 ORDER BY total DESC;
#Selecione todos os pokémons do tipo Planta e Venenoso que não sejam Green, ordenado crescente pelo nome.
SELECT tipo1, tipo2 FROM Pokemon WHERE (tipo1 
#Selecione de maneira crescente os nomes dos pokémons que possuem a letra y na 4ª posição do nome.
SELECT nome FROM Pokemon WHERE nome LIKE '___y%' ORDER BY nome ASC;
#Qual é o maior valor de ataque_especial cadastrado?
SELECT ataque_especial FROM Pokemon ORDER BY ataque_especial DESC LIMIT 1;
#Selecione o numero, nome e altura_m dos pokémons que possuem altura acima de 2,10m.
SELECT numero, nome, altura_m FROM Pokemon WHERE altura_m > 2.10 ORDER BY altura_m;
#Quais são as diferentes tipos de cores dos pokémons? Apresente os resultados de maneira crescente pelo nome da cor.
SELECT DISTINCT cor FROM Pokemon ORDER BY cor ASC;
#Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)
SELECT nome, velocidade FROM Pokemon WHERE velocidade BETWEEN 30 AND 70 ORDER BY nome ASC, ORDER BY velocidade DESC;
#Quem são os pokémons lendários? Apresente os resultados ordenados por total decrescente.
SELECT lendario FROM Pokemon WHERE lendario ORDER BY lendario DESC;
#Selecione os pokémons da primeira geração com taxa de captura igual a 255.
SELECT geracao, taxa_captura FROM Pokemon WHERE geracao = 1 AND taxa_captura = 255;
#Quem é o mais poderoso? selecione o Pikachu, Squirtle, Bulbasaur e Charmander; ordenados decrescente pelo total.
SELECT nome, total FROM Pokemon WHERE nome = 'Pikachu' OR nome = 'Squirtle' OR nome = 'Bulbasaur' OR nome = 'Charmander' ORDER BY total DESC;
#Quem são os pokémons da primeira geração, que começam com a letra d e não possuem tipo secundário? Ordene os resultados crescente por taxa_captura e decrescente pelo total.
SELECT nome, tipo1, tipo2 FROM Pokemon WHERE tipo2 IS NULL AND nome LIKE 'a%' OR nome LIKE 'd%';
#Qual é o ranking dos top 5 pokémons lendários com maior taxa_captura e total? Apresente apenas numero, nome, total, taxa_captura nos resultados.
SELECT numero, nome, total, taxa_captura, lendario FROM Pokemon WHERE lendario = 1 ORDER BY taxa_captura DESC LIMIT 5;
#Selecione o numero, nome, peso_kg dos pokémons com peso entre 2kg e 3kgs?
SELECT numero, nome, peso_kg FROM Pokemon WHERE peso_kg BETWEEN 2 AND 3;
#Selecione o numero, nome, tipo1 e tipo2 dos pokémons com tipo primário Normal, que não possuem tipo secundário. Existe algum pokémon lendário nos resultados, se sim, os remova dos resultados?
SELECT numero, nome, tipo1, tipo2 FROM Pokemon WHERE tipo1 = 'Normal' AND tipo2 IS NULL AND lendario = 0;
#Quem são os pokémons do tipo Water que não são azuis? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
SELECT numero, nome, tipo1, tipo2, cor FROM Pokemon WHERE tipo1 = 'Water' AND cor = <> 'Blue'; 
#Crie um ranking dos top 10 pokémons mais lentos.
SELECT nome, velocidade FROM Pokemon WHERE velocidade > 0 ORDER BY velocidade LIMIT 10;
#Selecione os pokémons cujo nome comece e termine com a letra a.
SELECT nome FROM Pokemon WHERE nome LIKE 'a%a';
#Quem são os pokémons do tipo Fire que não são vermelhos? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.
SELECT numero, nome, tipo1, tipo2, cor FROM Pokemon WHERE tipo1 = 'Fire' AND cor = 'Red' ORDER BY nome ASC;
#Quais são os diferentes tipos de peso_kg dos pokémons? Apresente os resultados ordenados de maneira crescente.
SELECT DISTINCT peso_kg FROM Pokemon ORDER BY peso_kg ASC;
#Selecione o numero, nome e hp dos pokémons com valores entre 0 e 100. Ordene os resultados de maneira crescente por hp e nome.
SELECT numero, nome, hp FROM Pokemon WHERE valor BETWEEN 0 AND 100;
#Selecione o numero, nome, hp, ataque, defesa e total; dos pokémons com valores de hp, ataque, defesa maiores ou iguais a 100.
#Selecione todos os pokémons do tipos Water e Gelo, ordenados decrescente por total.
SELECT total FROM Pokemon WHERE tipo1 = 'Gelo';