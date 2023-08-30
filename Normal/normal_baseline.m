% Normal Baseline Data
% Time series data

% Datasets
d97 = load("97.mat");
d98 = load("98.mat");
d99 = load("99.mat");
d100 = load("100.mat");

% Constantes
motor_load_97 = 0;
motor_load_98 = 1;
motor_load_99 = 2;
motor_load_100 = 3;
motor_speed_97 = 1797;
motor_speed_98 = 1772;
motor_speed_99 = 1750;
motor_speed_100 = 1730;

% Formando a tabela
m97 = [d97.X097_DE_time d97.X097_FE_time repelem(motor_load_97, length(d97.X097_DE_time)).' repelem(motor_speed_97, length(d97.X097_DE_time)).'];
m98 = [d98.X098_DE_time d98.X098_FE_time repelem(motor_load_98, length(d98.X098_DE_time)).' repelem(motor_speed_98, length(d98.X098_DE_time)).'];
m99 = [d99.X099_DE_time d99.X099_FE_time repelem(motor_load_99, length(d99.X099_DE_time)).' repelem(motor_speed_99, length(d99.X099_DE_time)).'];
m100 = [d100.X100_DE_time d100.X100_FE_time repelem(motor_load_100, length(d100.X100_DE_time)).' repelem(motor_speed_100, length(d100.X100_DE_time)).'];

data = [m97; m98; m99; m100];
n_baseline = array2table(data);
n_baseline.Properties.VariableNames(1:4) = {'drive_end_accelerometer', 'fan_end_accelerometer', 'motor_load_HP', 'motor_speed_RPM'};
writetable(n_baseline, 'normal_baseline.csv');