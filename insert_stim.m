function [ frame ] = insert_stim( frame, stimulus, point )
%INSERT_STIM This inserts the stimulus matrix in the frame according to the
%point
%   frame and stimulus are matrices, wheras point is the middle point of
%   the stimulus location

size_stim=size(stimulus);
stimulus;

start_row=point(2)-200;      %determine the first and last row according to y value
end_row=point(2)+199;        %since the matrix is 400 wide
start_column=point(1)-200;   %determine the first and lat column according to x
end_column=point(1)+199;

frame(start_row:end_row,start_column:end_column)=stimulus;


end
