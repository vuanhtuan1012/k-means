function M = distance(X, C)

N = size(X, 1); K = size(C, 1);
M = zeros(N, K);

for i=1:N
    for k = 1:K
        T = X(i,:) - C(k,:);
        M(i,k) = sqrt(T*T');      
    end
end