function [name]=test(price)
data=readtable('data.xls');

height(data)

if price==1;
    for i=1:height(data)
        if data.Price(i)=="$"
            name(i)=data.Name(i,:)
         
        end
        i=i+1;
    end


elseif price==2;
    for i=1:height(data)
            if data.Price(i)=="$$"
                name(i)=data.Name(i,:);
            end
            i=i+1;
    end

elseif price==3;
    for i=1:height(data)
        if data.Price(i)=="$$$"
            name(i)=data.Name(i,:);
        end
        i=i+1;
    end

end

name = name(~cellfun('isempty',name)); %gets rid of empty cells


end
