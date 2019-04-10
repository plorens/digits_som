clear all
x=0:16;

M = csvread('train.csv');
liczba_cyfr=length(M);
liczba_cech=length(M(1,:));   

% usuniecie pierwszej kolumny
Mm=M(:,2:liczba_cech);

for i=1:liczba_cech
      if (mean(M(:,i))==0)
          disp(['Same zera s¹ w cesze numer: ', num2str(i)]);
      end
end

