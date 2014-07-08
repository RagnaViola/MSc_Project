function [ stimulus ] = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5 )
%ASSIGN_MATRIX assign stimulus the correct stimulus matrix
%   5 if statements

if stim_num==1
    stimulus=stimulus_1
end

if stim_num==2
    stimulus=stimulus_2
end

if stim_num==3
    stimulus=stimulus_3
end

if stim_num==4
    stimulus=stimulus_4
end

if stim_num==5
    stimulus=stimulus_5
end



end
