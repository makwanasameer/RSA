function mc = rsa(M,N,key)
x=length(M);
c=zeros;
for i=1:x
    %Encrypt or Decrypt using the bigmod function
    c(i)=bigmod(M(i),key,N);
end
%Return the Encrypted or Decrypted array to rsa_script.m 
mc=c;
end