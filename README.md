# MySQL

Olá! Este repositório tem o objetivo de servir como guia de estudo e consulta relacionado ao tema MySQL. 

Os conteúdo aqui foram ministrados em aulas da Generation Brasil e Faculdade Impacta. 

Terminologia de um banco de dados

- Campo
  - Menor unidade de informação
  - Só armazena um único tipo de informação ou dados
  - Recebe nomes de identificação, especificação do tipo de dado, tamanho para armazenamento, entre outros.
- Registro
  - Conjunto de campos de uma tabela
  - O layout ou formato dos registros é definido durante a estruturação (o conjunto de campos que foram construídos)
  - Esse formato de registros envolve a disposição dos campos ao longo dos mesmos.

- Tabela
  - É um agrupamento de linhas (registros) que, por sua vez, são divididas em colunas (campos)
- Índice
  - São estruturas formadas por um ou mais campos de uma tabela de dados, responsáveis pela organização da tabela
  - Permitem que as informações sejam encontradas com rapidez
- Chaves
  - Permite a distinção dos registros de uma tabela
  - Pode ser formado por um campo ou conjunto de campos (chaves compostas)
  - Uma chave primária determina a ordem dos registros dentro da tabela
  - Permite que uma pesquisa seja realizada com maior velocidade
- Tipos numéricos
  - Bit ou Bool: Um número interio que pode ser 0 ou 1
  - TinyInt: É um número inteiro com ou sem sinal. Com sinal, a margem de valores válidos é de -128 até 127. Sem sinal, a margem de valores é de 0 até 255
  - SmallInt: Número inteiro com ou sem sinal. Com sinal, a margem de valores válidos é de -32.768 até 32.767. Sem sinal, a margem de valores é de 0 até 65.535
  - Float: Número inteiro de ponto-flutuante com precisão simples.
  - Real, Double, Double Precision: Número inteiro de ponto-flutuante com dupla precisão
  - Decimal, Dec, Numeric: Número de ponto-flutuante. O número armazena-se como uma string
- Tipos de string
  - Char(n): Armazena uma string de longitude fixa. A string poderá conter de 0 até 255 caracteres
  - VarChar(n): Armazena uma string de longitude variável. A string poderá conter de 0 até 65535 caracteres. Dentre os tipos de string, pode-se distinguir dois subtipos: o tipo Text e o tipo Blob (**Binary Large Object**). A diferença entre um tipo e outros é o tratamento que recebem na hora de ordená-los e compará-los.
    - O tipo Text, ordena-se sem considerar maiúscula e minúscula.
    - O tipo Blob, ordena-se levando em consideração maiúsculas e minúsculas.
  - TinyText e TinyBloB: Coluna com uma longitude máxima de 255 caracteres
  - Blob e Text: Máximo de 65535
  - MediumBlob e MediumText: Um texto com um máximo de 16.777.215 caracteres
  - LongBlob e LongText: Um texto com um máximo de 4.294.967.295 caracteres
  - Enum: Campo que pode ter um único valor de uma lista que se especifica. Aceita até 35535 valores diferentes
  - Set: Um campo que pode conter nenhum, um ou vários valores de uma lista. A lista pode ter um máximo de 64 valores.
- Tipos data
  - Date: Armazena uma data. A margem de valores vai desde 1 de janeiro de 1001 a 31 de dezembro de 9999. O formato de armazenamento é **ano-mês-dia**: "YYYY-MM- DD"
  - DateTime: Combinação de data e hora. A margem de valores vai desde 1 de janeiro de 1001 à 0:00:00 até 31 de dezembro de 9999 23:59:59. Formato: YYYY-MM-DD HH:MM:SS.
  - Time: Armazena hora. HH:MM:SS
  - Year: O campo pode ter tamanho de 2 ou tamanho de 4.

**Restrições** - Principais constraints

- Not null
- Default
- Unique
- Primary key
- Foreign key

**Modelo entidade relacionamento**

- N...N

  Quando tabelas têm entre si relacionamentos n..n é necessário criar uma nova tabela com as chaves primárias das tabelas envolvidas, criando assim uma chave composta, ou seja, formada por diversos campos-chave de outras tabelas. O relacionamento então se reduz para um relacionamento 1..n, sendo que o lado n ficará com a nova tabela criada. 