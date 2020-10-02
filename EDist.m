function f = EDist(m)

    rows = size(m,1);% #rows
    cols = size(m,2);% #cols
    
    % Preallocate a matriz with zero
    dMat = zeros(rows, rows); 
    
    %calculate euclidian disstans
    for i=1:rows
        for j=1:rows %N*N matrix
            dMat(i,j) = sqrt(sum((m(i,:)- m(j,:)).^2));
            
        end
    end
    
    f = dMat;   
    
    
end