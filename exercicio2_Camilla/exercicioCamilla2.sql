USE POKEDEX;
SELECT MAX(TOTAL), 
	   MIN(TOTAL), 
	   MAX(HP),
	   MIN(HP),
	   MAX(ATAQUE),
	   MIN(ATAQUE),
	   MAX(DEFESA),
	   MIN(DEFESA),
	   MAX(ATAQUE_ESPECIAL),
	   MIN(ATAQUE_ESPECIAL),
	   MAX(DEFESA_ESPECIAL),
	   MIN(DEFESA_ESPECIAL),
	   MAX(VELOCIDADE),
	   MIN(VELOCIDADE),
	   MAX(TAXA_CAPTURA),
	   MIN(TAXA_CAPTURA) 
	   FROM POKEMON;
	   
SELECT COUNT(DISTINCT COR) FROM POKEMON;

SELECT AVG(PESO_KG) FROM POKEMON;

SELECT SUM(ALTURA_M) FROM POKEMON;

SELECT COUNT(*) FROM POKEMON;

SELECT AVG(ALTURA_M) FROM POKEMON;

SELECT STD(HP) FROM POKEMON;

SELECT COUNT(TIPO2) FROM POKEMON;

SELECT COUNT(DISTINCT TIPO1) FROM POKEMON;

SELECT SUM(PESO_KG) FROM POKEMON;

SELECT COUNT(LENDARIO)FROM POKEMON GROUP BY LENDARIO; 

SELECT COUNT(*),
	   COUNT(DISTINCT COR) 
	   
FROM POKEMON ORDER BY COR DESC;

SELECT AVG(PESO_KG), 
	   AVG(ALTURA_M) 

FROM POKEMON ORDER BY PESO_KG, ALTURA_M DESC ;

SELECT AVG(TAXA_CAPTURA),
       COR FROM POKEMON 
	   GROUP BY COR;
	   
SELECT TIPO1,
AVG(TAXA_CAPTURA) AS CAPTURA
FROM POKEMON 
	GROUP BY TIPO1 HAVING CAPTURA >100;
	
SELECT AVG(TOTAL),
NOME 
FROM POKEMON WHERE LENDARIO = 0 
	GROUP BY COR HAVING AVG(TOTAL) <400; 
	
SELECT MAX(TOTAL),
GERACAO 
FROM POKEMON 
	GROUP BY GERACAO; 
	
SELECT COUNT(LENDARIO),
GERACAO 
FROM POKEMON WHERE LENDARIO =1 
	GROUP BY GERACAO;
	
SELECT COUNT(TIPO1), 
	   COUNT(TIPO2), 
	   AVG(TAXA_CAPTURA),
	   GERACAO 
FROM POKEMON 
	   GROUP BY GERACAO ;
	   
SELECT  COUNT(COR),
GERACAO 
FROM POKEMON 
WHERE LENDARIO=1 
	GROUP BY GERACAO;