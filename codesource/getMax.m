function Fmax = getMax(Mu, C)

K = size(C,1);
D = distance(C, C);
Fmax = zeros(K, 1);
for i = 1:K
    for k = 1:K
        if k ~= i
            f = (Mu(i) + Mu(k))/D(i,k);
            if Fmax(i) < f
                Fmax(i) = f;
            end
        end
    end
end