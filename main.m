%1: Greenland Ice Sheet
%2: West Antarctic Ice Sheet
%3: AMOC
%4: Amazon Rainforest

time = [4900; 2400; 300; 50];

span = [0 50000];
startState = [-1; -1; -1; -1];

GMT = 4;
Tlimit = [2 3.15 4.75 4];

d = 0.6;

[t1, y1] = ode45(@(t,y)domino(t, y, GMT, time, d, Tlimit), span, startState);
clf
hold on 

axis([0 50000 -2 2])

plot(t1, y1, '-o')

yline(-1/sqrt(3), '--', 'Transitioned Regime')
yline(1/sqrt(3), '--', 'Baseline Regime')
legend('Greenland Ice Sheet', 'West Antarctica Ice Sheet', 'AMOC', 'Amazon Rainforest')


hold off


