function [n, d] = genPrivKey(p,q,e)    
%cal_next_prime function calculates the next prime number
%if user by mistake inputs composite number
p=cal_next_prime(p);
q=cal_next_prime(q);
n=p*q;
phi_n=((p-1)*(q-1));
%This function calculates the value of d using
%Extended Euclidean Algorithm
i=1;
r=1;
while r > 0
    k=(phi_n*i)+1;
    r=rem(k,e);
    i=i+1;
end
d=k/e;
%Display the modulus,public key and private key exponent
%and totient
disp(['The value of modulus (n) is: ' num2str(n)]);
disp(['The exponent of public key (e) is: ' num2str(e)]);
disp(['The value of totient (Phi) is: ' num2str(phi_n)]);
disp(['The exponent of private key (d)is: ' num2str(d)]);
end
    