function db = DBIndex(X, list, C)

Mu = computeMu(X, list, C);
Fmax = getMax(Mu, C);
db = sum(Fmax)/size(C, 1);