close all;clc;clear all;

x = load ( 'Lecture6_DataSet.txt' );
 
M=zeros(10,3);

for k=1:10
   figure(1), clf                                      
  
  [idx,C] = kmeans ( x, k );                %Partition the data set (x) into K clusters using k-means clustering
  
   figure ( 1 )
   hold on
   symbl = ['*','d','^','>','<','o','s','p','v','h'];   %symbols for earch individual group
   
   totalsum = 0;
   totalsum2 = 0;
   totalsum3 = 0;

   for i=1:k
      i1 = find ( idx == i);                  % i1 = # of the row where values are located,  find rows that belong to group=1
      x1 = x(i1,:);                           % x an y values that are located in i1 rows
      plot ( x1(:,1), x1(:,2), symbl(i) );    % plot the points in red

      totalsum = totalsum + var(x1(:,1));
      totalsum2 = totalsum2 + var(x1(:,2));
   end

   totalsum = totalsum/k;
   totalsum2 = totalsum2/k;

   M(k,1) = k;
   M(k,2) = totalsum;
   M(k,3) = totalsum2;
 
   title(k);                                     %show the number of clusters (K) on the title
   plot(C(:,1),C(:,2),'rx','MarkerSize',10,'LineWidth',3) ;
    
%    pause(1);
end

figure(2)
plot ( M(:,1), -M(:,2), '-o',M(:,1), -M(:,3), '-o'  );
xlabel('Number of clusters') 
ylabel('Average Total Variance') 
legend({'1-dimension','2-dimension)'},'Location','southwest')

E1 = evalclusters(x,'kmeans','silhouette','klist',[1:k]);
figure(3);
plot(E1);
title(k);
