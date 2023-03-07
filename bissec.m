% Curso de Cálculo Numérico Computacional
% Aula 06/03/2022 - 2 aula
clc; clear;
fprintf('Digite a função: \n');
f = input('','s');
f = str2sym(f);
fprintf('Digite o limite inf. : \n');
a = input('');
fprintf('Digite o limite sup. : \n');
b = input('');
fprintf('Digite o número máx de iteração: \n');
n = input('');
fprintf('Digite o erro: \n');
erro = input('');
cont = 0;
if( subs(f,a) == 0 || subs(f,b) == 0 )
    fprintf('Raiz encontrada!')
else
    imaA = subs(f,a);
    imaB = subs(f,b);
    if(imaA*imaB >= 0)
        fprintf('Limitantes inválidos!')
    else %(imaA*imaB < 0)
        while(cont <= n)
            x = (a+b)/2;
            imaX = subs(f,x);
            if(imaX == 0 || abs(b-a)<erro)
                fprintf('Raiz encontrada!\n')
                fprintf('Raiz = %f \n Número de ite. = %f', x, cont)
                break;
            else 
                if(imaA * imaX < 0)
                    b = x;
                else
                    a = x;
                end
            end
            cont = cont + 1;
        end
    end

end



