function [C, list, E] = kmeans(X, K, threshold, maxn)

[~, d] = size(X);
C = rand(K, d);
E = 0; i = 1;

while 1
    M = distance(X, C);
    [list, E2] = assignment(M);
    C2 = newCentroid(X, list, K, C);
    ch = abs(E2-E); % change of intra-class error
    E = E2; C = C2; i = i+1;
    if (ch < threshold) || (i > maxn)
        break;
    end
end