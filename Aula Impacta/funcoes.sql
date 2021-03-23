select round(12345.878);
select round(12345.878,3);

-- tornando em uma string
select cast(12345.878 as char);

-- funcoes com string
select concat('10', ' e', ' 20' );
select concat(10, ' e', ' 20' ); -- conversão implicita

select concat(
				cast(
					10 
				as char)
		,' e', ' 20' ); -- boa prática para conversão 

-- replace('texto','o que você procura','por qual você troca')
select replace ('M','M', 'x') as 'Teste aplelido';

-- Funções de texto
select right('Carla Cristina', 8); -- conta 8 caracteres começando pela direita
select left('Carla Cristina', 8); -- conta 8 caracteres começando pela esquerda
select substring('Carla Cristina', 7); -- retorna o 7º caracter em diante
select substring('Carla Cristina', 7,2); -- retorna o 7º caracter em diante

select trim('oi                 ') as 'trim'; -- tira os espaços em branco

select upper('oi'); -- caixa alta
select lower('OI'); -- minuscula
