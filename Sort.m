function A=Sort(A,low,high)

if low<high
    [A,key]=Get(A,low,high);%调用Get函数把原始数组里的数分成key左边的都小于它，右边的都大于它
    A=Sort(A,low,key-1);%对key左边的数进行排序
    A=Sort(A,key+1,high);%对key右边的数进行排序
end

end