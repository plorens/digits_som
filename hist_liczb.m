clear all
x=0:16;

M = csvread('train.csv');
max=length(M); %Piotrek się skichał

zero=[];
one=[];
two=[];
three=[];
four=[];
five=[];
six=[];
seven=[];
eight=[];
nine=[];



for i = 1:max
    
    switch M(i,length(M(i,:)))
        case 0
            zero=[zero;M(i,:)];
        case 1
            one=[one;M(i,:)];
        case 2
            two=[two;M(i,:)];
        case 3
            three=[three;M(i,:)];
        case 4
            four=[four;M(i,:)];
        case 5
            five=[five;M(i,:)];
        case 6
            six=[six;M(i,:)];
        case 7
            seven=[seven;M(i,:)];
        case 8
            eight=[eight;M(i,:)];
        case 9
            nine=[nine;M(i,:)];
        otherwise
            disp('Nierozpoznane dzia³anie!')
            
    end
end

sr(1,:)=mean(zero);
sr(2,:)=mean(one);
sr(3,:)=mean(two);
sr(4,:)=mean(three);
sr(5,:)=mean(four);
sr(6,:)=mean(five);
sr(7,:)=mean(six);
sr(8,:)=mean(seven);
sr(9,:)=mean(eight);
sr(10,:)=mean(nine);

for j=1:10
      
subplot(10,1,j)
bar(sr(j,:));
title(['Liczba ', num2str(j-1)]);

end

