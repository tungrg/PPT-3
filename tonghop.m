%bai 4
  function[c,fc]=Bai04(f,a,b,Df)
  k=1; hold on

  while 1
  c=(a+b)/2;
  fc=f(c);
  rEc=abs((a-c)/a);
  disp([k c fc]);
  plot(k,fc,'ro');
  if abs(fc) < Df, break, end
  if f(a)*f(c)>0, a=c; else b=c; end
  k=k+1;

  end
  end
% loi goi ham: [c,fc] = Bai04(@(x) x+ sin(x) - 2,1,1.4,10^(-3))
  
 %bai 6
  function[xn,fn] = Bai06(f,phi,x0,Df)
  k=1; hold on

  while 1
  xn = phi(x0);
  disp([k xn f(xn)]);
  plot(k,f(xn),'ro');
  if abs(f(xn)) < Df, break, end
  x0 = xn;
  k=k+1;
  end;
  end
 %loi goi ham: [xn,fn] = Bai06(@(x) x + sin(x) -2, @(x) 2 - sin(x),1.05,10^(-3))
 %loi goi ham: [xn,fn] = Bai06(@(x) x^2 + x + 5, @(x) 5 - x^2, 1.5, 10^(-3))
