function di = DunnIndex(X, list, C)

maxD = -1; % max delta
for k = 1:size(C, 1)
    d = Delta(X, list, k);
    if maxD < d
        maxD = d;
    end
end

D = distanceClusters(C);
D = D./maxD;
di = min(D(:));