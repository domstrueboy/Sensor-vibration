using Gadfly

function plotLine(Ax1, fiX1, Ay1, fiY1, Az1, fiZ1, Ax2, fiX2, Ay2, fiY2, Az2, fiZ2, omega, time, scale, step)

    #h = plot(NaN,NaN,NaN) % handle
    #axis([-scale scale -scale scale -scale scale]);

    for t = [0:step:time]

        x1 = expression(Ax1, omega, t, fiX1)
        y1 = expression(Ay1, omega, t, fiY1)
        z1 = expression(Az1, omega, t, fiZ1)

        x2 = expression(Ax2, omega, t, fiX2)
        y2 = expression(Ay2, omega, t, fiY2)
        z2 = expression(Az2, omega, t, fiZ2)

         x = [x1, -x2]
         y = [y1 - scale, -y2 + scale]
         z = [z1, z2]

         #set(h, 'XData',x, 'YData',y, 'ZData', z);
         #xlabel('X'); ylabel('Y'); zlabel('Z');
         pause(0.1)
    end
    pause;
end

function expression(A, omega, t, fi)
    return A * sin(omega*t + fi*pi/180)
end

# plotLine(Ax1, fiX1, Ay1, fiY1, Az1, fiZ1, Ax2, fiX2, Ay2, fiY2, Az2, fiZ2, omega, time, scale, step)
plotLine(1.27, -167.7, 6.79, -4.8, 1.25, 33.6, 4.88, -2.7, 7.39, 172.5, 53.95, -9.1, 100, 1, 500, 0.01)
plotLine(2.63, 162.7, 7.78, 173.4, 40.82, 17.2, 6.32, -1.9, 5.41, -8, 71.24, -10.4, 100, 1, 500, 0.01)