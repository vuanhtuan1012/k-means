function plotClusters(X, K, list, dname)

figure; plot(X(:,1), X(:,2),'.');
pos = strfind(dname, '.');
fname = strcat(dname(1:pos), 'eps');
print(fname, '-depsc');

figure;
for k = 1:K
    I = find(list==k); % indexes of points belong to cluster k
    if ~isempty(I)
        Xk = X(I,:); % points belong to cluster k
        plot(Xk(:,1), Xk(:,2),'.'); hold on;
    end
end
fname = sprintf('-%d.', K);
fname = strcat(dname(1:pos-1), fname, 'eps');
print(fname, '-depsc');