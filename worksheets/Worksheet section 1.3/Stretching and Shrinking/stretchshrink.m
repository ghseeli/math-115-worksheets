

set(0,'defaultaxesfontsize',15);
set(0,'defaultaxeslinewidth',1)
set(0,'defaultlinelinewidth',2)
set(0,'defaultpatchlinewidth',1)

f = @(x) and(-2 <= x, x <=0).*x + and(0 < x, x<= 2).*x.^2 + and(2 < x, x<= 4).*(-2*x+8);




x = linspace(-2,4,100);

plot(x,f(x),x,2*f(x),x,f(x)/3)

axis([-4.5 8.5 -4.5 8.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
xticks(-4:2:8)
yticks(-4:2:8)
legend({'$f(x)$','$2f(x)$','$\frac{\displaystyle f(x)}{\displaystyle 3}$'},'Interpreter','latex')
legend boxoff
print(gcf, '-depsc2', 'stretchshrinkvertical');

plot(x,f(x),x/2,f(x),2*x,f(x))

axis([-4.5 8.5 -4.5 8.5])
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
xticks(-4:2:8)
yticks(-4:2:8)
legend({'$f(x)$','$f(2x)$','$f(\frac{\displaystyle x}{\displaystyle 2})$'},'Interpreter','latex')
legend boxoff
print(gcf, '-depsc2', 'stretchshrinkhorizontal');