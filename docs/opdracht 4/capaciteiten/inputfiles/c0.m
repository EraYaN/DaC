%Gemaakt door Kees Hogenhout
%30-9-2013
%Grafiek Cg (totale gatecapaciteit),
%hangt af van W, C0, L en Cgc
%werking: teken 5 punten en daar een lijn doorheen naar de y-as. 
%Dat punt is C0
%Varieer de lengte van L
clear all;
%L = 0:.01:10;
L = [  2.2 2.4 2.8 3.2 3.6 4.0 4.4 4.8 ];             %punten van L
Cg = [8.3381 9.1672 10.825 12.483 14.141 15.799 17.457 19.115];           %punten van Gc
plot( L, Cg);


axis([0 8 5 25]);
%axis([3.5 3.6 12.5 12.6])
xlabel('Lengte van de transistor (um)');
ylabel('Totale capaciteit Gate/Source (fF)');
title_handle = title('Totale Capaciteit van de condensator');
legend('Cg t.o. L');


