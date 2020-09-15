
clear;
close all;
clc;

Peak_ops = 0.35;

data = textread('performance_with_various_sparsity.txt');
plot(flip([0:9]),Peak_ops ./ data(1,4:13));
hold on;
plot(flip([0:9]),Peak_ops ./ data(2,4:13));
hold on;
plot(flip([0:9]),Peak_ops ./ data(3,4:13));
hold on;
plot(flip([0:9]),Peak_ops ./ data(4,4:13));
hold on;
plot(flip([0:9]), ones(1,10));
hold on;
set(gca,'XTickLabel',{'0.1/0.1',...
                      '0.2/0.2',...
                      '0.3/0.3',...
                      '0.4/0.4',...
                      '0.5/0.5',...
                      '0.6/0.6',...
                      '0.7/0.7',...
                      '0.8/0.8',...
                      '0.9/0.9',...
                      '1.0/1.0'
                    });
legend('w1\_x1\_wx1\_s1',...
       'w2\_x2\_wx2\_s1',...
       'w3\_x3\_wx3\_s1',...
       'w-\_x-\_wx-\_s1',...
       'peak ops',...
       'location','northwest');
xlabel('Weight / Activation Density');
ylabel('Latency');
title('performance versus density');