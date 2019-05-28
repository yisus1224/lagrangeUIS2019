clc
clear
%Xo=3.5;
%n=4;
%X=[0.5 2 3.2 5];
%Y=[2 3 2.7 4];
Xo=input('valor que desea interpolar  ');
n=input('numero de puntos medidos  ');
for i=1:n
    disp('')
    disp('ingrese el punto')
    disp(i)
    X(i)=input('ingrese el valor de X  ');
    Y(i)=input('ingrese el valor de Y  '); 
end
for i=1:n
    Ya(i)=Y(i);
    for j=1:n
        if j~=i
            Ya(i)=Ya(i)*(Xo-X(j))/(X(i)-X(j));
        end
    end
end
Yo=sum(Ya);
plot(X,Y,'b+-',Xo,Yo,'r*')
xlabel('Abscisas X')
ylabel('Ordenadas Y')
title('Interpolacion De Lagrange')
legend('Medidos','Interpolado')
disp('El Punto Interpolado Es')
disp([Xo,Yo])
disp('X')
disp(Xo)
disp('Y')
disp(Yo)

