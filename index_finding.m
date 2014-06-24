function [ index ] = index_finding( index, index_old )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

index_bound_low = index_old - 5;
index_bound_high = index_old + 5;

if index > index_bound_low && index > index_bound_high
    index_new = round(rand(1)*36);
    index_finding(index_new, index_old);
else
    if exist('index_new', 'var') == 1
        index=index_new
    end
end

end
