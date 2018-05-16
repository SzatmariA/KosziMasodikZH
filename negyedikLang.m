function Li = negyedikLang(x, n, i)
    L=zeros(n); % ez egy mátrix, az i-edik sorában van L_i
    teteje=poly(x); % (x-x(1))*(x-x(2))*...*(x-x(n))
    for k=1:length(x)
        % (x-x(1))*...*(x-x(k-1))*(x-x(k+1))*...*(x-x(n)):
        alja=deconv(teteje, poly(x(k)));
        L(k,:)=alja/polyval(alja,x(k));
    end
    Li = L(i);
end