function [address]=addressfind(name)
data=readtable('data.xls');
for i=1:height(data);
    tf(i)=strcmp(data.Name(i,:),name);
    if tf(i)==1
        address=data.Address(i,:)
    end
end

end
