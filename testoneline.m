% Close all open figure windows
close all; clear ;clc

% Read the data from the CSV file
csv_file_path = 'C2DATA_0809.csv';
data = readtable(csv_file_path);
data.freq = data.freq / 1e9;
% Convert frequency from Hz to GHz and round to nearest whole number
%data.freq = data.freq / 1e9;
% Display the modified data to check the transformation
disp(data.Properties);
colors = [
    0, 114, 189;   % Blue
    217, 83, 25;   % Red
    126, 47, 142;  % Purple
    119, 172, 48;  % Green
    77, 190, 238;  % Cyan
    237, 117, 32;  % Orange
    162, 20, 47;   % Dark Red
    71, 51, 55;    % Brown
    255, 0, 0;     % Bright Red
    0, 255, 0;     % Bright Green
    0, 0, 255;     % Bright Blue
    255, 255, 0;   % Yellow
    255, 0, 255;   % Magenta
    0, 255, 255;   % Bright Cyan
    128, 128, 128  % Gray
] / 255;

% Define markers
markers = {'o', '+', '*', '.', 'x', 's', 'd', '^', 'v', '>', '<', 'p', 'h', 'square', 'diamond', 'pentagram', 'hexagram', 'none', '|', '_'};

% z0 = data.re_Zo_1____;
%dB_S11 = data.dB_S_1_1____;
marker_interval =40;
% dB_S43 = data.dB_S_4_3__;
% dB_S11 = data.dB_S_1_1__;
% dB_S21 = data.dB_S_2_1__;
% dB_S33 = data.dB_S_3_3__;
% dB_S55 = data.dB_S_5_5__;
% dB_S65 = data.dB_S_6_5__;
% dB_S77 = data.dB_S_7_7__;
% dB_S87 = data.dB_S_8_7__;
% dB_S99 = data.dB_S_9_9__;
% dB_S109 = data.dB_S_10_9__;
% dB_S1515 = data.dB_S_15_15__;
% dB_S1615 = data.dB_S_16_15__;
% Proceed with plotting
figure;
hold on;

% Define colors directly in RGB
%light_blue = [0.678, 0.847, 0.902];
% 
% Define colors
% Fill the region between 37.375 GHz and 40.625 GHz
fill([57.5 62.5 62.5 57.5], [-50 -50 -10 -10], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);
% fill([57.5 62.5 62.5 57.5], [-50 -50 0 0], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);
%fill([57.5 62.5 62.5 57.5], [-5 -5 0 0], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);
% fill([37.375 40.625 40.625 37.375], [-50 -50 0 0], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);
% fill([37.375 40.625 40.625 37.375], [-5 -5 0 0], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);
% fill([37.375 40.625 40.625 37.375], [-50 -50 -10 -10], [1.0 0.8 0.0], 'DisplayName', 'Working Frequency','EdgeColor', 'none', 'FaceAlpha', 0.4);

% Plot each pair with the same color but different markers
plot(data.freq, data.dB_S_1_1__, 'DisplayName', 'S11 (Meas.)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(1,:));
%plot(data.freq, data.dB_S_2_1__, 'DisplayName', 'S21 (Meas.) ', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(1,:));


 plot(data.freq, data.dB_S_3_3__, 'DisplayName', 'Via=0.1 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(2,:), 1]);
% plot(data.freq, data.dB_S_4_3__, 'DisplayName', 'Via=0.1 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(2,:), 1]);

plot(data.freq, data.dB_S_5_5__, 'DisplayName', 'Via=0.125 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(3,:), 1]);
% plot(data.freq, data.dB_S_6_5__, 'DisplayName', 'Via=0.125 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(3,:), 1]);

%S21 (Sim. Scaling -5%)
 plot(data.freq, data.dB_S_7_7__, 'DisplayName', 'Via=0.15 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(4,:), 1]);
%plot(data.freq, data.dB_S_8_7__, 'DisplayName', 'S21 (Sim. Scaling -5%)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(4,:), 1]);

 plot(data.freq, data.dB_S_9_9__, 'DisplayName', 'Via=0.175 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', colors(5,:));
% plot(data.freq, data.dB_S_10_9__, 'DisplayName', 'Via=0.175 (mm)' , 'LineWidth', 1.5, 'LineStyle', '--', 'Color', colors(5,:));

 plot(data.freq, data.dB_S_11_11__, 'DisplayName', 'Via=0.2 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(6,:), 1]);
% plot(data.freq, data.dB_S_12_11__, 'DisplayName', 'Via=0.2 (mm)', 'LineWidth', 1.5, 'LineStyle', '--', 'Color', [colors(6,:), 1]);

%plot(data.freq, data.dB_S_13_13__, 'DisplayName', 'dB(S(1,1)) (Scaling-7.5%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', [colors(7,:), 1]);
%plot(data.freq, data.dB_S_14_13__, 'DisplayName', 'dB(S(2,1)) (Scaling-7.5%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', [colors(7,:), 1]);

%plot(data.freq, data.dB_S_15_15__, 'DisplayName', 'dB(S(1,1)) (Scaling-9%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', [colors(8,:), 1]);
%plot(data.freq, data.dB_S_16_15__, 'DisplayName', 'dB(S(2,1)) (Scaling-9%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color',[colors(8,:), 1]);

%plot(data.freq, data.dB_S_17_17__, 'DisplayName', 'dB(S(1,1)) (Scaling-10%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(9,:));
%plot(data.freq, data.dB_S_18_17__, 'DisplayName', 'dB(S(2,1)) (Scaling-10%)', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(9,:));

%plot(data.freq, data.dB_S_19_19__, 'DisplayName', 'dB(S(1,1)) Meas.', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(11,:));
%plot(data.freq, data.dB_S_20_19__, 'DisplayName', 'dB(S(2,1)) Meas.', 'LineWidth', 1.5, 'LineStyle', '-', 'Color', colors(11,:));
grid on;
legend('Location', 'best');
xlabel('Frequency (GHz)');
ylabel('Magnitude (dB)');
%ylabel('|S11| (dB)');
title('S11 of C2 Design (Meas. vs. Sim.)');
% Get the screen size
% screenSize = get(0, 'ScreenSize');

set(gcf, 'Position', [100, 100, 800, 600]);
%Relative Permittivity(S21)
%ylim([-5 0]);
% Optionally, save the figure
% saveas(gcf, 'RF_Data_Plot.png');
