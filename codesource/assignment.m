function [list, E] = assignment(M)

[N, ~] = size(M);
list = zeros(N,1); % list of clusters
E = 0; % intra-class error

for i = 1:N
    [d_ik, list(i)] = min(M(i,:));
    % d_ik: the distance between the point x_i and the centroid w_k 
    % of cluster in which it belongs to
    E = E + d_ik;
end