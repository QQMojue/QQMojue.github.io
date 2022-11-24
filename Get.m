function [A,index]=Get(A,i,j)
key=A(i);
b=i;
while i<j
    while i<j&&A(j)>=key%从最后一个数依此与第一个数比较，到第一个小于第一个数的位置停止
        j=j-1;
    end
   
    while i<j&&A(i)<=key%从第一个数依此与一开始第一个的数值比较，到第一个大于一开始第一个数的位置停止
        i=i+1;
    end
    if i<j
        a=A(j);
        A(j)=A(i);%把第一个大于一开始第一个数的值赋给最一个数的位置上
        A(i)=a;
    end
    
end
A(b)=A(j);
A(j)=key;
index=j;
end