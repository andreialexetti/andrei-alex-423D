
D=1;%durata semnalului
T=40; %perioada  semnalului
N=50;%numarul de coeficienti 
a=1;%amplitudinea semnalului
f= 0.025;%frecventa semnalului astfel incat perioada semnalului sa aiba valoarea 40
dc=2.5;%duty cycle ales astfel incat durata semnalului sa fie 1
f=f * 2 * pi;
omega=2*pi/T;%pulsatia  semnalului
 k=-N/2:N/2;%k apartine inervalului [-25;25]
 Ck=(1./(-1i*k*2*pi)).*(exp(-1i*k*omega*D)-1).*exp(1i*k*omega*D/2).*(exp(-1i*k*omega*D)+1);% formula de calcul al coeficientilor pentru seria complexa
 Ck(k==0)=D/T;%se determina valoarea coeficentului pentru care k=0
 subplot (2,1,1)%afisarea graficului in prima parte a ferestrei
 stem(k,abs(Ck)),title('Spectrul semnalului x(t)'), xlabel('k'),ylabel('Amplitudinea semnalului')
 t=-50:0.001:50;% 0.001  rezolutia temporala
 x50=Ck*exp(1i*omega*k'*t);%se calculeaza semnalul pentru N=50
 y=a * square(f * t,dc);
 y(y<0)=0; %semnalul pentru N=infinit;
 subplot(2,1,2)%afisarea graficului in cea de a doua parte a ferestrei
 plot(t, x50,':' ,t, y,'k'),title('x(t)(linia solida) si reconstructia sa folosind N coeficienti (Linia punctata)'),
     xlabel('timp(secunde)'),ylabel('Amplitudine')%se repzinta cele 2 semnale, semnalul real si cel aproximat de acelasi grafic
     %Calculele sunt mai comode atunci când N este finit si de o valoare mica; în acest
%caz atât semnalul cât si raspunsul se exprima printr-un numar redus de termeni.
%Când N este teoretic infinit, se constata ca valorile coeficientilor  Ck scad începând
%de la o valoare k max a rangului k; prin aceasta se pot neglija termeni cu
%rangul k>(k max) si se pot
%obtine o exprimare aproximativa a semnalului x .
