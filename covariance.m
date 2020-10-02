function f = covariance(m)
    rows = size(m,1);% #rows
    cols = size(m,2);% #cols
    
    % Preallocate a matriz with zero
    cov = zeros(rows, rows); 
    corr = zeros(rows, rows);
    
    oneVector(1:size(m,1)) = 1;
    mu1 = (oneVector * m)/size(m,1);
    mu1 = mu1'; %col
    
    mu2 = (oneVector * m)/size(m,1);
    mu2 = mu2'; %col
    
    
    N = rows;
    
    
    for n=1:N
       for i=1:rows
            for j=1:cols
                v1 = m(n,i)- mu1(i);
                v2 = m(n,j)- mu2(j);
                cov(i,j) = sum(v1*v2)/N-1;
                
                
            end
        end
    end
    
    d=diag(cov).^.5;
    
    for i=1:length(cov)
        for j=1:length(cov)
            corr(i,j)=cov(i,j)./(d(i)*d(j));
        end
    end
    
    f=corr;
    
    
end