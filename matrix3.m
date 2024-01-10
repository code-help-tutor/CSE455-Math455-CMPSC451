n=50; c=0.3;
L=eye(n,n)-tril(ones(n,n),-1);
    C= eye(n,1);
    R= [1 -c*ones(1,n-1)];
    s=sqrt(1-c)*sqrt(1+c);
    g=log(s);
    y=0:n-1;
    A=diag(exp(g*y))*toeplitz(C,R);
    A=L*A;
   

