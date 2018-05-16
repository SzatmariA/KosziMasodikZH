function masodik(A)
    
    SingularValues = svd(A);
    n = length(SingularValues);
    rang = 0;
    for i=1 : n-1
        if (SingularValues(i) == 0)
            break;
        end
        if((SingularValues(i+1)/SingularValues(i)) < 1) 
            rang = i
            break;
        end
    end
    [U,S,V]=svd(A);
    U(:,1:rang)*S(1:rang,1:rang)*V(:,1:rang)'

end