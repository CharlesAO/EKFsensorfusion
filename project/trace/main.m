clear all
%% Car value value
Kanon_data;

% init pose
car1 = 10; % initial frontal vehicle
car2 = 0; % back vehicle
%% Cruise Control
Dref = 5;
b = 0.065*10;
f = 400;
bf = b*f;

% Ref ‘å‘OŠz ACC ‰ğà˜_•¶‚æ‚è”²ˆ
tau = 0.2;

%% set pole of controller



%% 
open('EV_tracking');
sim('EV_tracking');

%% show

figure(1);
plot(measured_depth.Time,measured_depth.Data,true_depth.Time,true_depth.Data);
xlabel('time [s]');
ylabel('Distance');
legend('Measured','Actual')
grid on;

figure(2);
plot(true_depth.Time,true_depth.Data);
xlabel('time [s]');
ylabel('Distance');
legend('Measured','Actual')
grid on;


% figure(2);
% plot(tlimited.Time,tlimited.Data,'-');
% xlabel('time [s]');
% ylabel('Torque');
% legend('Torque')
% grid on;