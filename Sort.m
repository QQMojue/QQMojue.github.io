function A=Sort(A,low,high)

if low<high
    [A,key]=Get(A,low,high);%����Get������ԭʼ����������ֳ�key��ߵĶ�С�������ұߵĶ�������
    A=Sort(A,low,key-1);%��key��ߵ�����������
    A=Sort(A,key+1,high);%��key�ұߵ�����������
end

end