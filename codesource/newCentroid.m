function C = newCentroid(X, list, K, cC)

C = cC; % initially, new centroids are the same current centroids
for k = 1:K
    I = find(list==k); % indexes of points belong to cluster k
    if ~isempty(I)
        C(k,:) = mean(X(I,:));
    end
end