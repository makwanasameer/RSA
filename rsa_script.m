%PART 2 Decryption
p=11;
q=13;
%calculate the value of e
e=cal_e(p,q);
%calculates private key exponent and modulus
[n,d]=genPrivKey(p,q,e);
%Code to be Decrypted
str=[89,59,33,98,67,40,39,98,69,62,59,29,98,77,108,110];
%Performs decryption by calling rsa function
M=rsa(str,n,d);
%displays decrypted ASCII
disp(['Decrypted ASCII of Message is: ' num2str(M)]);
%Convert to string from ASCII
str=ascii2str(M);
%Displays the decrypted String
disp(['Decrypted Message is: ' num2str(str)]);

%Code to be Decrypted
str=[124,45,45,100,98,35,40,66,98,20,24];
%Performs decryption by calling rsa function
M=rsa(str,n,d);
%displays decrypted ASCII
disp(['Decrypted ASCII of Message is: ' num2str(M)]);
%Convert to string from ASCII
str=ascii2str(M);
%Displays the decrypted String
disp(['Decrypted Message is: ' num2str(str)]);

%PART 3 Encryption
p=19;
q=17;
e=7;
%calculates private key exponent and modulus
[n,d]=genPrivKey(p,q,e);
%String to be encrypted
str='the rain in spain falls mainly on the plain';
%Convert string to ASCII
M=str2ascii(str);
%Displays  ASCII of entered message
disp(['ASCII code of entered Message is: ' num2str(M)]);
%Encrypt using rsa function
M=rsa(M,n,e);
%Displays the Cipher text
disp(['Cipher text of entered Message is: ' num2str(M)]);

%String to be encrypted
str='Supercalifragilisticexpialidocious';
%Convert string to ASCII
M=str2ascii(str);
%Displays  ASCII of entered message
disp(['ASCII code of entered Message is: ' num2str(M)]);
%Encrypt using rsa function
M=rsa(M,n,e);
%Displays the Cipher text
disp(['Cipher text of entered Message is: ' num2str(M)]);


