
T = (0:1/44.1e3:99*1/44.1e3); %Muestreo a 1/44.1kHz para 100 estímulos

load resp_dec.txt
load respA_dec.txt
load respM_dec.txt
load respB_dec.txt

x = fopen('estimulac_dec.txt','r');
signal = fscanf(x,'%f',[100])';


%Descripción de los filtros:

%pasoalto - pasobajo
ideal_baja = filtro(filtro(step,-1.996,0.996,0.998,-1.996,0.998),-1.96,0.9605,0.000199,0.0003979,0.000199);
ideal_media = filtro(filtro(step,-1.96,0.9605,1,-2,1),-1.035,0.3678,0.08316,0.1663,0.08316);
ideal_alta = filtro(filtro(step,-1.035,0.3678,0.6007,-1.201,0.6007),1.591,0.6617,0.8132,1.626,0.8132);
ideal = ideal_baja + ideal_media + ideal_alta;

%Banda Baja
ax1 = subplot(4,1,1);
plot(T,ideal_baja,'b',respB_dec,'r');%
title('Filtro Pasabanda Baja');
xlabel('Tiempo(s)');

%Banda Media
ax1 = subplot(4,1,2);
plot(T,ideal_media,'b',T,respM_dec,'r');
title('Filtro Pasabanda Media');
xlabel('Tiempo(s)');

%Banda Alta
ax1 = subplot(4,1,3);
plot(T,ideal_alta,'b',T,respA_dec,'r');
title('Filtro Pasabanda Alta');
xlabel('Tiempo(s)');

%Suma de las Bandas
ax1 = subplot(4,1,4);
plot(T,ideal,'b',T,resp_dec,'r');
title('Filtro');
xlabel('Tiempo(s)');

datacursormode on

    



