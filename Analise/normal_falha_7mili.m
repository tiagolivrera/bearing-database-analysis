%% Análise inicial da base
%
% Normal Baseline data:
% - Dados de operação normal do motor
% - Referência para a ausência de falha
% 48k Drive End Bearing Fault Data
% - 0.007' como referência para falha e o campo Inner Race (inicial)
% OBS.: Os dados em Normal Baseline também foram capturados a uma taxa de 48k
%
%% Construção da base:
% A base terá os seguintes campos:
% - DE (Drive End Accelerometer)
% - FE (Fan End Accelerometer)
% - Velocidade (RPM)
% - Carga do motor (HP)
% - Falha (0 - ausência de falha. O dado vem de Normal Baseline)
%         (1 - presença de falha. O dado vem de 12k Drive Bearing)
%
%% Considerações para a construção da base
%
% 1 - Verificar a proporção de dados "normais" e dados com "falha"
% 2 - Dentre o mesmo tipo de dados, verificar se todas as tabelas tem o mesmo tamanho.
%     Talvez seja interessante deixar todas as tabelas como um múltiplo de 48000,
%     que é a taxa de captura desses dados.
% 3 - Verificar existe correlação entre esses dados.
% 4 - Verificar como aplicar uma transformada de Fourrier.
% 5 - O experimento tem um tempo de warmup? Verificar isso no artigo.
%     Caso haja, remover esse tempo na base de dados. Ex. 1 seg de warmup: retirar as primeiras 48k linhas.

%% Carregamento de dados
%
% Carregando os dados de Normal Baseline (dados "sem falha"):
nb_1 = load('../Normal/97.mat');
nb_2 = load('../Normal/98.mat');
nb_3 = load('../Normal/99.mat');
nb_4 = load('../Normal/100.mat');
%
% Carregando os dados de 48k Drive End (0.007', Inner Race, dados "com falha")
de_1 = load('../48k Drive End Bearing Fault Data/Inner Race/IR007_0.mat');
de_2 = load('../48k Drive End Bearing Fault Data/Inner Race/IR007_1.mat');
de_3 = load('../48k Drive End Bearing Fault Data/Inner Race/IR007_2.mat');
de_4 = load('../48k Drive End Bearing Fault Data/Inner Race/IR007_3.mat');

