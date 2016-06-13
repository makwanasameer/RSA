function a=cal_next_prime(p)
test=0;
%if the user by mistake entered composite number
%this function calculates the next prime number
while test == 0
    %checks whether the number entered is prime or not
    test=isprime(p);
    if test == 0
        p=p+1;
    end   
end
a=p;
end