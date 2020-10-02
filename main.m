 function fn = main(numOfMatrices)

    a =0; b = 99;
    
    row = 0;
    col = 20;
    for ii = 1:numOfMatrices
        row = row + 5;
        col = col + 5;
        disp(row)
        disp(col)
        
        fn1 = floor(a+(b-a) * rand(row,col));
            tic;
            correlation(fn1)
            y=toc;
            plot (row, y, "*"); hold on

    end  
 end
