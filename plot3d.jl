using PyPlot
using Distributions

function f(x)
    return (x[1]^2 + x[2]^2)
    #return sin(x[1]) + cos(x[2])
end

n = 100
x = linspace(-1, 1, n)
y = linspace(-1,1,n)

xgrid = repmat(x',n,1)
ygrid = repmat(y,1,n)

z = zeros(n,n)

for i in 1:n
    for j in 1:n
        z[i:i,j:j] = f([x[i],y[j]])
    end
end

plot_wireframe(xgrid,ygrid,z)

## new line
plot([0.0, 1.0, -1.0], [0.0, 1.0, 1.0], [0.0 , 2.0, 2.0], color="red")