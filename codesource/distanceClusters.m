function D = distanceClusters(C)

D = distance(C, C);
for i = 1:size(C,1)
    D(i,i) = inf;
end