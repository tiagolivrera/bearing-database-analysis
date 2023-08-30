# bearing-database-analysis
Análise da base de dados de falhas de rolamentos disponível no site: https://engineering.case.edu/bearingdatacenter/download-data-file.

## Introdução
A base de dados compila informações sobre experimentos envolvendo enrolamentos em um motor de indução trifásico. O motor em questão possui uma potência de 2HP, que é submetido a uma carga através de um dinamômetro,
que varia a carga de 0 até 4 HP. Os rolamentos monitorados são o externo, que recebe diretamente o torque do transdutor/encoder, e o traseiro, que movimenta a ventoinha. As falhas são injetadas nos rolamentos com 
diâmetro de falhas de 7, 14, 21, 28 e 40 milipolegadas. Além disso, é inserido interferência na carga de forma central, ortogonal e oposto em relação a zona de carga. Os dados referentes ao rolamento dianteiro são captados a
taxas de 12000 e 48000 capturas por segundo, enquanto que no rolamento traseiro é feita a uma taxa de 12000 capturas por segundo.

## Problemas

A base apresenta um conjunto de variáveis, como Inner Race, Ball e Outer Race, e cada uma delas é composta pelos dados que vêm dos acelerômetros que capturam as vibrações dos enrolamentos dianteiro e traseiro. 
Em outras palavras, o problema apresenta variáveis que são multivariadas.

Uma possível solução é o uso de um algoritmo para redução de dimensionalidade, como o PCA (Principal Component Analysis). Porém, a maioria das variáveis são mutivariadas, e o uso de PCA em todas elas corre o risco de
levar a perda de informação, levando a um overfitting nos dados atuais, mas levar a uma grande distorção quando inserir dados novos.

Uma outra forma de pensar o problema seria utilizando um outro algoritmo de ML de forma intermediária para reduzir a quantidade de parâmetros.

Podemos pensar nesse problema como um problema de Classificação, onde as classes seriam o tamanho do diâmetro de falha, e os artibutos seriam a saída desse modelo de ML intermediário.

Qual seria esse algoritmo, o uso de PCA ou não e como organizar essa estrutura está aberta a discussão.
