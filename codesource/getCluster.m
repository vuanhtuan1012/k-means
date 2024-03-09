function Xk = getCluster(X, list, k)

I = find(list==k); % indexes of points belong to cluster k
if ~isempty(I)
    Xk = X(I,:); % points belong to cluster k
else
    Xk = [];
end