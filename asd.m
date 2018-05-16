function asd(A, eps)
    maxEigValA = abs(eigs(A, 1))
    minEigValA = abs(eigs(A, 1, 'SA'))
    maxEigValB = 0.001;
    minEigValB = 0.001;  
    count = 1;
    B = length(A);
    B = qr(A);
    while ((maxEigValA - maxEigValB > eps) && ...
            (minEigValA - minEigValB) > eps)
        tic;
        B = qr(B);
        maxEigValB = abs(eigs(B, 1))
        minEigValB = abs(eigs(B, 1, 'SR'));
        count = count +1 ;
        toc;
    end
    count
end