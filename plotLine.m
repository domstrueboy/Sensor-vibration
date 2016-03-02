function plotLine(Ax1, fiX1, Ay1, fiY1, Az1, fiZ1, Ax2, fiX2, Ay2, fiY2, Az2, fiZ2, omega, time, scale, step)

    h = plot3(NaN,NaN,NaN); % handle
    axis([-scale scale -scale scale -scale scale]);
    
    for t = 0:step:time

        x1 = expression(Ax1, omega, t, fiX1);
        y1 = expression(Ay1, omega, t, fiY1);
        z1 = expression(Az1, omega, t, fiZ1);

        x2 = expression(Ax2, omega, t, fiX2);
        y2 = expression(Ay2, omega, t, fiY2);
        z2 = expression(Az2, omega, t, fiZ2);

         x = [x1, (x1-x2)/2, (x1-x2)/2 - 200, (x1-x2)/2 + 200, (x1-x2)/2, -x2];
         y = [y1 - scale, (y1-y2)/2, (y1-y2)/2, (y1-y2)/2, (y1-y2)/2, -y2 + scale];
         z = [z1, (z1+z2)/2, (z1+z2)/2 - 400, (z1+z2)/2 - 400, (z1+z2)/2, z2];

         set(h, 'XData',x, 'YData',y, 'ZData', z);
         xlabel('X'); ylabel('Y'); zlabel('Z');
         pause(0.1)
    end
    pause;
end


% Вариант с отображением двух графиков в одном окне (совмещенных)
% function plotLine(  Ax1, fiX1, Ay1, fiY1, Az1, fiZ1, Ax2, fiX2, Ay2, fiY2, Az2, fiZ2, Bx1, xiX1, By1, xiY1, Bz1, xiZ1, Bx2, xiX2, By2, xiY2, Bz2, xiZ2, omega, time, scale, step )
% 
%     h = plot3(NaN,NaN,NaN); % handle
%     axis([-scale scale -scale scale -scale scale]);
%     
%     for t = 0:step:time
% 
%         x1A = expression(Ax1, omega, t, fiX1);
%         y1A = expression(Ay1, omega, t, fiY1);
%         z1A = expression(Az1, omega, t, fiZ1);
% 
%         x2A = expression(Ax2, omega, t, fiX2);
%         y2A = expression(Ay2, omega, t, fiY2);
%         z2A = expression(Az2, omega, t, fiZ2);
%         
%          
%         x1B = expression(Bx1, omega, t, xiX1);
%         y1B = expression(By1, omega, t, xiY1);
%         z1B = expression(Bz1, omega, t, xiZ1);
% 
%         x2B = expression(Bx2, omega, t, xiX2);
%         y2B = expression(By2, omega, t, xiY2);
%         z2B = expression(Bz2, omega, t, xiZ2);
%         
%          xA = [x1A, -x2A];
%          yA = [y1A - scale, -y2A + scale];
%          zA = [z1A, z2A];
% 
%          xB = [x1B, -x2B];
%          yB = [y1B - scale, -y2B + scale];
%          zB = [z1B, z2B];
%          
%          x = [xA, xB];
%          y = [yA, yB];
%          z = [zA, zB];
%          
% 
%          set(h, 'XData',x, 'YData',y, 'ZData', z);
%          xlabel('X'); ylabel('Y'); zlabel('Z');
%          pause(0.1)
%     end
%     pause;
% end