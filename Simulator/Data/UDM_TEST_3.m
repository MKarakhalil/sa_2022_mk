%----- Equations f 

function res = UDM_TEST_3(x,y,t,ev,param,flag,model_no)

global empty3 storage 

global empty

res = empty;

if nargin == 0
clc;
disp('Model: UDM_TEST_3');
disp('dynamic_states:  dTstart xTIME STATUS dPloss Counter1 Counter2 CounterStatus1 CounterStatus2');
disp('external_states:  y1 y2');
disp('internal_states:  TIME');
disp('events:  ev_on ev_Stufe1 ev_Stufe2 ev_Stufe1n ev_Stufe2n ev_Zeit1 ev_Zeit2');
disp('parameters:  Ton K T Ts1 Ts2 df1 df2');
disp('--------------------------------------------------');
disp('Summary:');
disp('--------------------------------------------------');
disp('Number of x = 8');
disp('Number of y = 10');
disp('Number of f = 8');
disp('Number of g = 10');
disp('Number of p = 7');
disp(' ');
disp(' ');
disp(' ');
res1 = UDM_TEST_3([],[],0,[],[],104,[]);text = 'x0=[';text = strcat(text,sprintf('%d ',res1.x0));text = strcat(text,']');disp(text);text = 'y0=[';text = strcat(text,sprintf('%d ',res1.y0));text = strcat(text,']');disp(text);text = 'p0=[';text = strcat(text,sprintf('%d ',res1.p0));text = strcat(text,']');disp(text);return;
end
if flag == 0
%----- Initialisation 
%	res = [number_of_f number_of_g [event_variables]]
	res = [8 10 0 [4 5 6 7 8 9 10 ]];
return;
elseif flag == 101
res=[8 10 7 8 10];
return;
elseif flag == 102
res='';
return;
elseif flag == 103
dynstates = { ... ;
'dTstart';...
'xTIME';...
'STATUS';...
'dPloss';...
'Counter1';...
'Counter2';...
'CounterStatus1';...
'CounterStatus2';...
};
algstates = { ... ;
'TIME';...
'y1';...
'y2';...
'ev_on';...
'ev_Stufe1';...
'ev_Stufe2';...
'ev_Stufe1n';...
'ev_Stufe2n';...
'ev_Zeit1';...
'ev_Zeit2';...
};
parameters = { ... ;
'Ton';...
'K';...
'T';...
'Ts1';...
'Ts2';...
'df1';...
'df2';...
};
externalstates = { ... ;
'y1';...
'y2';...
};
internalstates = { ... ;
'TIME';...
};
events = { ... ;
'ev_on';...
'ev_Stufe1';...
'ev_Stufe2';...
'ev_Stufe1n';...
'ev_Stufe2n';...
'ev_Zeit1';...
'ev_Zeit2';...
};
res.dynstates=dynstates;
res.algstates=algstates;
res.parameters=parameters;
res.externalstates=externalstates;
res.internalstates=internalstates;
res.events=events;
return;
elseif flag == 104
res.x0=zeros(1,8);
res.y0=zeros(1,10);
res.p0=zeros(1,7);
res.x0(1) = 0; % dTstart 
res.x0(2) = 0; % xTIME 
res.x0(3) = 0; % STATUS 
res.x0(4) = 0; % dPloss 
res.x0(5) = 0; % Counter1 
res.x0(6) = 0; % Counter2 
res.x0(7) = 0; % CounterStatus1 
res.x0(8) = 0; % CounterStatus2 
res.y0(1) = 0; % TIME 
res.y0(2) = 1; % y1 
res.y0(3) = 0; % y2 
res.y0(4) = 0; % ev_on 
res.y0(5) = 0; % ev_Stufe1 
res.y0(6) = 0; % ev_Stufe2 
res.y0(7) = 0; % ev_Stufe1n 
res.y0(8) = 0; % ev_Stufe2n 
res.y0(9) = 0; % ev_Zeit1 
res.y0(10) = 0; % ev_Zeit2 
res.p0(1) = 1; % Ton 
res.p0(2) = 5.000000e-01; % K 
res.p0(3) = 2; % T 
res.p0(4) = 2.000000e-01; % Ts1 
res.p0(5) = 2.000000e-01; % Ts2 
res.p0(6) = 2.000000e-01; % df1 
res.p0(7) = 4.000000e-01; % df2 
return;
elseif flag == 110
	res = [1  1  1  1  1  1  1];
return;
elseif flag == 111
	res = [1  1  1 -1 -1  1  1];
return;
elseif flag == 106
Ton = param(1);
K = param(2);
T = param(3);
Ts1 = param(4);
Ts2 = param(5);
df1 = param(6);
df2 = param(7);
end
%------- map parameters -------------------
Ton = param(1);
K = param(2);
T = param(3);
Ts1 = param(4);
Ts2 = param(5);
df1 = param(6);
df2 = param(7);
%------- map x -------------------
dTstart = x(1);
xTIME = x(2);
STATUS = x(3);
dPloss = x(4);
Counter1 = x(5);
Counter2 = x(6);
CounterStatus1 = x(7);
CounterStatus2 = x(8);
%------- map y -------------------
TIME = y(1);
y1 = y(2);
y2 = y(3);
ev_on = y(4);
ev_Stufe1 = y(5);
ev_Stufe2 = y(6);
ev_Stufe1n = y(7);
ev_Stufe2n = y(8);
ev_Zeit1 = y(9);
ev_Zeit2 = y(10);


if flag == 1
%----- f 
res = empty;
%--------------------------------------------------------------------------
res(1) = 0;
res(3) = 0;
res(4) = 0;
res(7) = 0;
res(5) = CounterStatus1;
res(8) = 0;
res(6) = CounterStatus2;
if (t < 0) 
res(2) = 0;
else
res(2) = 1;
end
%--------------------------------------------------------------------------
elseif flag == 2
%----- fx 
res = empty3;
%--------------------------------------------------------------------------
res = [res;[5 7 (1)]];
res = [res;[6 8 (1)]];
if (t < 0) 
else
end
%--------------------------------------------------------------------------
elseif flag == 3
%----- fy 
res = empty3;
%--------------------------------------------------------------------------
if (t < 0) 
else
end
%--------------------------------------------------------------------------
elseif flag == 4
%----- g 
res = empty;
%--------------------------------------------------------------------------
res(1) = Ton - TIME + ev_on;
res(2) = df1 + ev_Stufe1 - y1;
res(3) = df2 + ev_Stufe2 - y1;
res(4) = ev_Stufe1n - df1 - y1;
res(5) = ev_Stufe2n - df2 - y1;
res(6) = Ts1 - Counter1 + ev_Zeit1;
res(7) = Ts2 - Counter2 + ev_Zeit2;
if (t < 0) 
res(8) = y1;
else
res(8) = y1 - K*STATUS*sin((2*pi*(TIME - Ton))/T);
end
res(9) = TIME - xTIME;
res(10) = y2 - dPloss;

%--------------------------------------------------------------------------
elseif flag == 5
%----- gx 
res = empty3;
%--------------------------------------------------------------------------
res = [res;[6 5 (-1)]];
res = [res;[7 6 (-1)]];
if (t < 0) 
else
res = [res;[8 3 (-K*sin((2*pi*(TIME - Ton))/T))]];
end
res = [res;[9 2 (-1)]];
res = [res;[10 4 (-1)]];

%--------------------------------------------------------------------------
elseif flag == 6
%----- gy 
res = empty3;
%--------------------------------------------------------------------------
res = [res;[1 1 (-1)]];
res = [res;[1 4 (1)]];
res = [res;[2 2 (-1)]];
res = [res;[2 5 (1)]];
res = [res;[3 2 (-1)]];
res = [res;[3 6 (1)]];
res = [res;[4 2 (-1)]];
res = [res;[4 7 (1)]];
res = [res;[5 2 (-1)]];
res = [res;[5 8 (1)]];
res = [res;[6 9 (1)]];
res = [res;[7 10 (1)]];
if (t < 0) 
res = [res;[8 2 (1)]];
else
res = [res;[8 1 (-(2*K*STATUS*pi*cos((2*pi*(TIME - Ton))/T))/T)]];
res = [res;[8 2 (1)]];
end
res = [res;[9 1 (1)]];
res = [res;[10 3 (1)]];

%--------------------------------------------------------------------------
elseif flag == 7
%----- h 
res = x;
%--------------------------------------------------------------------------
if (ev==1)
res(1) = TIME;
res(3) = 1;
end
if (ev==2)
res(5) = 0;
res(7) = 1;
end
if (ev==4)
res(5) = 0;
res(7) = 1;
end
if (ev==6)
res(5) = 0;
res(7) = 0;
res(4) = dPloss + 1/20;
end
if (ev==3)
res(6) = 0;
res(8) = 1;
end
if (ev==5)
res(6) = 0;
res(8) = 1;
end
if (ev==7)
res(6) = 0;
res(8) = 0;
res(4) = dPloss + 1/10;
end
elseif flag == 8
%----- hx 
res = [[1:8];[1:8];ones(1,8)]';
%--------------------------------------------------------------------------
if (ev==1)
end
if (ev==2)
end
if (ev==4)
end
if (ev==6)
res = [res;[4 4 (1)]];
end
if (ev==3)
end
if (ev==5)
end
if (ev==7)
res = [res;[4 4 (1)]];
end
elseif flag == 9
%----- hy 
res = empty3;
%--------------------------------------------------------------------------
if (ev==1)
res = [res;[1 1 (1)]];
end
if (ev==2)
end
if (ev==4)
end
if (ev==6)
end
if (ev==3)
end
if (ev==5)
end
if (ev==7)
end
elseif flag == 100
x(find(abs(x)<1e-9))=0;
y(find(abs(y)<1e-9))=0;
res = empty;
%%----- Measurements
elseif flag == 105
elseif flag == 107
res.x0=x;
res.y0=y;
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
end
