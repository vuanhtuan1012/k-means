clc; clear; close all;

datasets = {'ds2.dat', 'ds3.dat', 'ds4.dat',...
    'ds5.dat', 'george.dat'};
K = 5; threshold = 0.01;
maxn = 200;
len = length(datasets);
DI = zeros(len, 1);

for i = 1:len
    X = load(datasets{i});
    [C, list, E] = kmeans(X, K, threshold, maxn);
    DI(i) = DunnIndex(X, list, C);
end
figure; stem(DI,'xr--');
set(gca,'XTick',1:5);
set(gca,'xticklabel',datasets); ylabel('Dunn Index');
print('di.eps', '-depsc');