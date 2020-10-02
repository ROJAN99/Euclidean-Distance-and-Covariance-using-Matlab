function fn = correlation(matrix)
tic;
    %initialize the vector (list) with all one's 
    meanVector(1:size(matrix,1))=1;
    %take mean of each rows ans storing in meanVector
    mu = (meanVector*matrix)/size(matrix,1);
    
    %subtract every column with their respective mean(mu)
    mean_sub = matrix - mu(meanVector,:);
    %finding covariance y transposing mean_sub and multiply by original
    %mean_sub which is then divided by n-1
    covariance = ((mean_sub.' * mean_sub)/(size(matrix,1)-1));
    %creates the diagonal matrix
    D = sqrt(diag(diag(covariance)));
    DInv = inv(D);
%     inverse = D/eye(
    correlation = DInv * covariance * DInv;
    fn = correlation;
  toc;
end