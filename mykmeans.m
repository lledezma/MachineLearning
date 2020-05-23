function [index,clusters] = mykmeans(x,k)

storek = zeros(k,2);
myNewX = zeros(length(x),3);

% for i=1:k
%     storek(i,1) = randi([0 120]);
%     storek(i,2) = randi([0 160]);
% end


for n=1:5000
    
    for h=1:k
        i1 = find ( myNewX(:,3) == h);
        if isempty(i1)
            storek(h,1) = randi([0 120]);
            storek(h,2) = randi([0 160]);
            continue;
        end
        x1 = x(i1,:); 
        
        val1 = sum(x1(:,1))/length(x1(:,1));
        val2 = sum(x1(:,2))/length(x1(:,2));
        
        storek(h,1) = val1;
        storek(h,2) = val2;
    end
    
    for i=1:length(x)
        
        min = 0;
        kvalue = 0;

        for j=1:k
            p1= [storek(j,1) storek(j,2)];
            p2= [x(i,1) x(i,2)];
            
           if min == 0
%                min = sqrt(   ((storek(j,1) - x(i,1))^2  + (storek(j,2) - x(i,2))^2));
               min = norm(p1-p2);
               kvalue =j;
               continue;
           end
%            if sqrt(((storek(j,1) - x(i,1))^2  + (storek(j,2) - x(i,2))^2)) < min
           if norm(p1-p2) < min
               kvalue = j;
           end
        end
        myNewX(i,1) = x(i,1);
        myNewX(i,2) = x(i,2);
        myNewX(i,3) = kvalue;
        
    end
    
%     for h=1:k
%         i1 = find ( myNewX(:,3) == h);
%         if isempty(i1)
%             storek(h,1) = randi([0 120]);
%             storek(h,2) = randi([0 160]);
%             continue;
%         end
%         x1 = x(i1,:); 
%         
%         val1 = sum(x1(:,1))/length(x1(:,1));
%         val2 = sum(x1(:,2))/length(x1(:,2));
%         
%         storek(h,1) = val1;
%         storek(h,2) = val2;
%     end


end

clusters = storek;
index = myNewX(:,3);

end

