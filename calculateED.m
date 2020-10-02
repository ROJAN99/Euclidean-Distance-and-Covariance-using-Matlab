function f = calculateED(m)
    %JJ = sum(j.^2, 2);
    %II = sum(i.^2, 2);
    %IJ = i' * j;
    
    %f = sqrt(JJ + II - (2*IJ));
    
    x = m;
    IP = x'*x;
    f = sqrt(bsxfun(@plus, diag(IP), diag(IP)') - 2 * IP);
    
    
end