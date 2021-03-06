use Pokemon;
#Quais são os valores máximo e mínimo das seguintes colunas:
#total 
select max(total), min(total) from pokemon;
#hp
select max(hp), min(hp) from pokemon;
#ataque
select max(ataque), min(ataque) from pokemon;
#defesa
select max(defesa), min(defesa) from pokemon;
#ataque_especial
select max(ataque_especial), min(ataque_especial) from pokemon;
#defesa_especial
select max(defesa_especial), min(defesa_especial) from pokemon;
#velocidade
select max(velocidade), min(velocidade) from pokemon;
#taxa_captura
select max(taxa_captura), min(taxa_captura) from pokemon;
#Quantas cores diferentes possuem os pokémons?
select count(distinct cor) as cores from Pokemon;
#Qual é o peso médio dos pokémons?
select avg(peso_kg) from Pokemon;
#Qual é a soma das alturas dos pokémons?
select sum(altura_m) as somaDasAlturas from pokemon;
#Quantos pokémons estão cadastrados no banco de dados?
select count(nome) from Pokemon;
#Qual é o altura média dos pokémons?
select avg(altura_m) as mediaAltura from Pokemon;
#Qual é o desvio padrão do valor de HP dos pokémons?
select std(hp) from Pokemon;
#Quantos pokémons possuem tipo2?
select count(tipo2) from pokemon;
#Quantos são os diferentes tipos primários dos pokémons?
select count(distinct tipo1) as tipoPrimario from Pokemon;
#Qual é a soma dos pesos dos pokémons?
select sum(peso_kg) from Pokemon;
#Qual é a quantidade de Pokémons lendários e não lendários
select sum(lendario = 1), sum(lendario = 0) from Pokemon order by cor asc;
#Qual é a quantidade de pokémons para cada uma das diferentes cores ordenadas decrescente?
select distinct cor, count(cor) as quantidade from pokemon group by cor order by cor desc;
#Qual é a média de peso e altura de cada um dos tipos primários dos pokémons? Ordene os resultados decrescente respectivamente por média de peso e altura.
select distinct tipo1, avg(peso_kg) as peso, avg(altura_m) as altura from pokemon group by tipo1 order by peso_kg desc;
#Qual é a taxa de captura média por cor de cada um dos pokémons lendários?
select distinct cor, avg(taxa_captura) from pokemon where lendario = 1 group by cor;
#Qual os tipos primários que possuem a taxa de captura média acima de 100
select distinct tipo1 from pokemon where taxa_captura > 100 order by tipo1 asc;
#Agrupados por cor, quais pokémons não lendários possuem média total abaixo de 400
select nome, cor, total from pokemon where lendario = 0 and total > 400 order by total asc;
#Qual o valor máximo total em cada uma das gerações?
select distinct geracao, sum(total) from pokemon group by geracao order by geracao asc;
#Quantos pokémons lendários existem em cada uma das gerações?
select distinct geracao, sum(lendario) from pokemon group by geracao;
#Em cada uma das gerações, quantos pokémons tem tipos primários e secundários e qual a taxa_captura média deles?
select distinct geracao, avg(taxa_captura) from pokemon where tipo1 is not null and tipo2 is not null group by geracao;
#Qual é a quantidade de cores de cada um dos pokémons lendários em todas as gerações?
select distinct lendario, count(cor) from pokemon group by lendario;