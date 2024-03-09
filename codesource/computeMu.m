function Mu = computeMu(X, list, C)

K = size(C, 1);
Mu = zeros(K, 1);
for k = 1:K
    Xk = getCluster(X, list, k);
    if ~isempty(Xk)
        M = distance(Xk, C(k,:));
        Mu(k) = mean(M);
    end
end