close all
clc

flag = 1;

if flag == 0
    figure
    sgtitle("FL Wheel")
    subplot(6,1,1)
    plot(wheel_acc.Time, wheel_acc.Data(:,1))
    grid on
    title('Wheel FL acceleration')
    subplot(6,1,2)
    plot(wheel_slip.Time, wheel_slip.Data(:,1))
    grid on
    title('Wheel FL slip')
    subplot(6,1,3)
    plot(wheel_speed.Time, wheel_speed.Data(:,1))
    grid on
    title('Wheel FL speed')
    subplot(6,1,4)
    plot(car_speed.Time, car_speed.Data(:,1))
    grid on
    title('Vehicle velocity')
    subplot(6,1,5)
    plot(brake_press.Time, brake_press.Data(:,2))
    grid on
    title('Wheel FL Brake pressure')
    subplot(6,1,6)
    plot(contr_mode.Time, contr_mode.Data(:,1))
    grid on
    title('Wheel FL Control mode')
    
    figure
    sgtitle("FR Wheel")
    subplot(6,1,1)
    plot(wheel_acc.Time, wheel_acc.Data(:,2))
    grid on
    title('Wheel FR acceleration')
    subplot(6,1,2)
    plot(wheel_slip.Time, wheel_slip.Data(:,2))
    grid on
    title('Wheel FR slip')
    subplot(6,1,3)
    plot(wheel_speed.Time, wheel_speed.Data(:,2))
    grid on
    title('Wheel FR speed')
    subplot(6,1,4)
    plot(car_speed.Time, car_speed.Data(:,1))
    grid on
    title('Vehicle velocity')
    subplot(6,1,5)
    plot(brake_press.Time, brake_press.Data(:,3))
    grid on
    title('Wheel FR Brake pressure')
    subplot(6,1,6)
    plot(contr_mode.Time, contr_mode.Data(:,2))
    grid on
    title('Wheel FR Control mode')
    
    figure
    sgtitle("RL Wheel")
    subplot(6,1,1)
    plot(wheel_acc.Time, wheel_acc.Data(:,3))
    grid on
    title('Wheel RL acceleration')
    subplot(6,1,2)
    plot(wheel_slip.Time, wheel_slip.Data(:,3))
    grid on
    title('Wheel RL slip')
    subplot(6,1,3)
    plot(wheel_speed.Time, wheel_speed.Data(:,3))
    grid on
    title('Wheel RL speed')
    subplot(6,1,4)
    plot(car_speed.Time, car_speed.Data(:,1))
    grid on
    title('Vehicle velocity')
    subplot(6,1,5)
    plot(brake_press.Time, brake_press.Data(:,4))
    grid on
    title('Wheel RL Brake pressure')
    subplot(6,1,6)
    plot(contr_mode.Time, contr_mode.Data(:,3))
    grid on
    title('Wheel RL Control mode')
    
    figure
    sgtitle("RR Wheel")
    subplot(6,1,1)
    plot(wheel_acc.Time, wheel_acc.Data(:,4))
    grid on
    title('Wheel RR acceleration')
    subplot(6,1,2)
    plot(wheel_slip.Time, wheel_slip.Data(:,4))
    grid on
    title('Wheel RR slip')
    subplot(6,1,3)
    plot(wheel_speed.Time, wheel_speed.Data(:,4))
    grid on
    title('Wheel RR speed')
    subplot(6,1,4)
    plot(car_speed.Time, car_speed.Data(:,1))
    grid on
    title('Vehicle velocity')
    subplot(6,1,5)
    plot(brake_press.Time, brake_press.Data(:,5))
    grid on
    title('Wheel RR Brake pressure')
    subplot(6,1,6)
    plot(contr_mode.Time, contr_mode.Data(:,4))
    grid on
    title('Wheel RR Control mode')
end

if flag == 1
    tiledlayout('flow')
    sgtitle("Front tyres")
    subplot(2,1,1)
    ax1 = nexttile;
    x1 = wheel_acc.Time;
    y1 = wheel_acc.Data(:,1);
    plot(x1,y1)
    hold on
    xlabel("Time [s]")
    ylabel("FL Wheel acceleration [rad/s^2]")
    x2 = contr_mode.Time;
    y2 = 600*contr_mode.Data(:,1)-300;
    plot(x2,y2)
    ylabel("FL Control mode")
    grid on

    ax2 = nexttile;
    x3 = wheel_acc.Time;
    y3 = wheel_acc.Data(:,2);
    plot(x3,y3)
    xlabel("Time [s]")
    ylabel("FR Wheel acceleration [rad/s^2]")
    hold on
    x4 = contr_mode.Time;
    y4 = 600*contr_mode.Data(:,2)-300;
    plot(x4,y4)
    ylabel("FR Control mode")
    grid on
    linkaxes([ax1 ax2],'xy')
end

return

%% Possible tresholds
% FL Wheel - in rad/s^2

a4 = 185;
% a3 not used
a1 = -400;
a2 = -420; % maybe 530

% or first cycle at -530 and then steady state cycles at -450/400