clear
clc
cd 'D:\Documents\proy_final_Morel\modulador\output_files'
x=load('stp1.txt_stp1.txt');
t=x(:,1);
salida=x(:,2);
pnrg=x(:,3);
dato=x(:,4);
q=x(:,5);
locked=x(:,5);


%plot(salida,'*-')
hold on
plot(salida,'.r-')
hold on
plot(200*dato,'b')
hold on
plot(180*pnrg,'k')
