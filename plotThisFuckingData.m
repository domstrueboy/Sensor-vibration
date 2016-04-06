function plotThisFuckingData

clear %������� ������� ������� (������)
clc %������� ������
load('data/time.txt'); %�������� ������� �0 �� �����
load('data/X1.txt'); %�������� ������� Y0 �� �����
load('data/Y1.txt'); %�������� ������� �0 �� �����
load('data/Z1.txt'); %�������� ������� Y0 �� �����
load('data/X2.txt'); %�������� ������� �0 �� �����
load('data/Y2.txt'); %�������� ������� Y0 �� �����
load('data/Z2.txt'); %�������� ������� �0 �� �����

%minNum = 450; maxNum = 455; % �������� ��������
%minNum = 400; maxNum = 425; % �������� ��������
%minNum = 400; maxNum = 450; % �������� ��������
minNum = 400; maxNum = 500; % �������� ��������
%minNum = 1; maxNum = 618; % �������� ��������

time = time(minNum:maxNum);
Y1 = Y1(minNum:maxNum);
Y2 = Y2(minNum:maxNum);

X1 = X1(minNum:maxNum);
X2 = X2(minNum:maxNum);

Z1 = Z1(minNum:maxNum);
Z2 = Z2(minNum:maxNum);

    if length(time) == length(X1)
        disp('����������� time � X1 ���������');
    end

plot(time, Y1, time, Y2); 
xlabel('time'); ylabel('A');
legend('Y1','Y2');
pause();

plot(time, X1, time, X2); 
xlabel('time'); ylabel('A');
legend('X1','X2');
pause();

plot(time, Z1, time, Z2); 
xlabel('time'); ylabel('A');
legend('Z1','Z2');
pause();

plot(X1, Y1, X2, Y2); 
xlabel('AX'); ylabel('AY');
legend('XY1','XY2');
pause();

plot3(X1, Z1, Y1, X2+10, Z2, Y2); 
xlabel('AX'); ylabel('AZ'); zlabel('AY');
legend('�1','�2');
pause();


h = plot3(NaN,NaN,NaN); % handle

axis([-5 15 -1e-15 0 -4e-15 7e-15]);

    for i = 1:length(time)

             %x = [x1, (x1-x2)/2, (x1-x2)/2 - 200, (x1-x2)/2 + 200, (x1-x2)/2, -x2];
             %y = [y1 - scale, (y1-y2)/2, (y1-y2)/2, (y1-y2)/2, (y1-y2)/2, -y2 + scale];
             %z = [z1, (z1+z2)/2, (z1+z2)/2 - 400, (z1+z2)/2 - 400, (z1+z2)/2, z2];
             
             x = [X1(i), X2(i) + 10];
             y = [Y1(i), Y2(i)];
             z = [Z1(i), Z2(i)];

             set(h, 'XData', x, 'YData', z, 'ZData', y);
             xlabel('X'); ylabel('Z'); zlabel('Y');
             pause(0.1);

    end
end