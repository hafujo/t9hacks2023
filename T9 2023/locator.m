function [loc]=locator(location)
data=readtable('data.xls');


if location=="Denver"
    
     for i=1:height(data)
        if data.Location(i)=="Denver"
            loc(i)=data.Name(i,:);
        end
        i=i+1;
    end
    
elseif location=="Boulder"
     for i=1:height(data)
        if data.Location(i)=="Boulder"
          loc(i)=data.Name(i,:);
        end
        i=i+1;
     end
    
end

loc=loc(~cellfun('isempty',loc));
end

