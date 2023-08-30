% Inner Race
% 12k Drive End Bearing Fault Data

% Datasets
% -- Di�metro da falha de 7 milipolegadas
d007_0 = load('IR007_0.mat');
d007_1 = load('IR007_1.mat');
d007_2 = load('IR007_2.mat');
d007_3 = load('IR007_3.mat');
% -- Di�metro da falha de 14 milipolegadas
d014_0 = load('IR014_0.mat');
d014_1 = load('IR014_1.mat');
d014_2 = load('IR014_2.mat');
d014_3 = load('IR014_3.mat');
% -- Di�metro da falha de 21 milipolegadas
d021_0 = load('IR021_0.mat');
d021_1 = load('IR021_1.mat');
d021_2 = load('IR021_2.mat');
d021_3 = load('IR021_3.mat');
% -- Di�metro da falha de 28 milipolegadas
d028_0 = load('IR028_0.mat');
d028_1 = load('IR028_1.mat');
d028_2 = load('IR028_2.mat');
d028_3 = load('IR028_3.mat');

% Constantes
motor_load_0 = 0;
motor_load_1 = 1;
motor_load_2 = 2;
motor_load_3 = 3;
motor_speed_0 = 1797;
motor_speed_1 = 1772;
motor_speed_2 = 1750;
motor_speed_3 = 1730;

% Formando a tabela
% -- Di�metro da falha - carga - velocidade do motor - drive-end
% accelerometer - fan-end accelerometer - base accelerometer

m007_0 = 