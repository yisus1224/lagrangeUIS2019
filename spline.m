clc
clear
Xp=9;
X=[5 8 13.1 14 15];
Y=[2 3 5 8.1 10];
Xa=abs(Xp-X);
p=min(find(Xa==min(Xa)));
if p==1
    A=[X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1;X(p+2)^2 X(p+2) 1];
    B=[Y(p);Y(p+1);Y(p+2)];
else
    if p~=length(X)
        A=[X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1];
        B=[Y(p-1);Y(p);Y(p+1)];
    else
        A=[X(p-2)^2 X(p-2) 1;X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1];
        B=[Y(p-2);Y(p-1);Y(p)];
    end
end
C=linsolve(A,B);
Yp=(C(1)*Xp^2)+(C(2)*Xp)+C(3);
plot(X,Y,'k+-',Xp,Yp,'r*')
disp('El Punto Interpolado Es')
%disp([Xp,Yp])
disp('X')
disp(Xp)
disp('Y')
disp(Yp)


