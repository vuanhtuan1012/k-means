function d = Delta(X, list, k)

Xk = getCluster(X, list, k);
if ~isempty(Xk)
    M = distance(Xk, Xk);
    d = max(M(:));
else
    d = -1;
end