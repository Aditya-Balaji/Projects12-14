function [  ] = ser(v,num)
s=serial('com1','BaudRate',4800,'DataBits',7);
fopen(s);
for i=1:num
 fwrite(s,v(i));
while(1)
if(fscanf(s)=='G')
    break;
end
end     

end
fwrite(s U');
fwrite(s,'J');
end

