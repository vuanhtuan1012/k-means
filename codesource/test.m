% mailto: doan-nhat.quang@usth.edu.vn
% deadline: before 24h 21/10

clc; clear; close all;

datasets = {'ds2.dat', 'ds3.dat', 'ds4.dat',...
    'ds5.dat', 'george.dat'};
K = 5; threshold = 0.01;
maxn = 200; % maximum number of iteration
for i = 1:length(datasets)
    X = load(datasets{i});
    [~, list, ~] = kmeans(X, K, threshold, maxn);
    plotClusters(X, K, list, datasets{i});
end