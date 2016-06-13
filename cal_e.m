function e=cal_e(p,q)
Phi=((p-1)*(q-1));
%Here t=2 because e is selected from range [3,Phi(n))  
x=2;t=2;
%Calculate the value of e such that GCD(Phi,e)=1
while x > 1 && t < Phi
    t=t+1;
    %gcd function calculates the gcd of two numbers
    x=gcd(Phi,t);
end
e=t;
end