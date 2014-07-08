function [ stim_num ] = order( prev_stimulus_num, matrix )
%ORDER This finction determines which function comes next
%   using bins making use of the previous simulus and the matrix it
%   determines which stimulus will be displayed in this position
%   returns index of stimulus, e.g. 4

num=prev_stimulus_num; %previous stimulus is the row number

probabilities=matrix(num,:); %take that row's probabilities for the next stimulus

thresh=rand(1); %randomly choose a number between 0 and 1

thresh_probabilities=[sum(probabilities(1)),sum(probabilities(1:2)),sum(probabilities(1:3)),sum(probabilities(1:4)),1];

list=thresh_probabilities>thresh; %check in which bin this threshold falls

stim_num=find(list,1);


end
