function [A,index]=Get(A,i,j)
key=A(i);
b=i;
while i<j
    while i<j&&A(j)>=key%�����һ�����������һ�����Ƚϣ�����һ��С�ڵ�һ������λ��ֹͣ
        j=j-1;
    end
   
    while i<j&&A(i)<=key%�ӵ�һ����������һ��ʼ��һ������ֵ�Ƚϣ�����һ������һ��ʼ��һ������λ��ֹͣ
        i=i+1;
    end
    if i<j
        a=A(j);
        A(j)=A(i);%�ѵ�һ������һ��ʼ��һ������ֵ������һ������λ����
        A(i)=a;
    end
    
end
A(b)=A(j);
A(j)=key;
index=j;
end