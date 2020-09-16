function [y_out] =  laff_copy(x,y)
[rx,cx] = size(x);
[ry,cy] = size(y);
if (rx ~= 1 && cx ~= 1) || (ry ~= 1 && cy ~= 1)
    y_out = 'FAILED!';
    return
end

if cy == 1
    for i = 1:max(rx,cx)
        y(i,1) = x(i);
    end
    y_out = y;
elseif ry == 1
    for i = 1:max(rx,cx)
        y(i) = x(i);
    end
    y_out = y;
else
    y_out = 'FAILED!';
end

end

