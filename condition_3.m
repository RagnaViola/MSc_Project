function [  ] = condition_3( Marginal, Transitional, Diff_Marg, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5, block )
%CONDITION_3 Makes frames for 1 sequence of condition 3 (600 frames?)
%   Detailed explanation goes here

n=450;                         % number of frames
frames=linspace(1,n,n);      % list of number of frames for iteration
[point_1, point_2, point_3] = Circle(); % generate the positions

%determine which sequence goes where for the section
[ pos_mat_1, pos_mat_2, pos_mat_3, position_1, position_2, position_3 ] = det_places( block, section, Marginal, Transitional, Diff_Marg );

for i=frames
        frame=zeros(960,1280);
        % for position 1 determine stimulus
        if i==1                                         %if it's the first frame (no previous stimulus available)
            if position_1~=2                            %if it's the Marginal or Diff_Marginal sequence 
                stim_num = first_item( pos_mat_1 );     %feed it the marginal or diff-Marg matrix to determine first stimulus
            end
            if position_1==2                            %if it's the transitional sequence
                stim_num = first_item( Marginal );      %feed it the underlying Marginal statistics for random gen of first stimulus    
            end
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
            frame=insert_stim(frame, stimulus, point_1);%replace the area in the frame with the stimulus
            prev_stimulus_num=stim_num;                 %set previous stimulus to the stimulus just inserted
        end
        if i ~= 1                                           %if it's not the first frame
            stim_num=order( prev_stimulus_num, pos_mat_1 );  
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
            frame=insert_stim(frame, stimulus, point_1);
            prev_stimulus_num=stim_num;
        end
        %same for position 2 
        if i==1                                         %if it's the first frame (no previous stimulus available)
            if position_1~=2                            %if it's the Marginal or Diff_Marginal sequence 
                stim_num = first_item( pos_mat_2 );     %feed it the marginal or diff-Marg matrix to determine first stimulus
            end
            if position_1==2                            %if it's the transitional sequence
                stim_num = first_item( Marginal );      %feed it the underlying Marginal statistics for random gen of first stimulus    
            end
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5)
            frame=insert_stim(frame, stimulus, point_2);%replace the area in the frame with the stimulus
            prev_stimulus_num=stim_num;                 %set previous stimulus to the stimulus just inserted
        end
        if i ~= 1                                           %if it's not the first frame
            stim_num=order( prev_stimulus_num, pos_mat_2 );  
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5)
            frame=insert_stim(frame, stimulus, point_2);
            prev_stimulus_num=stim_num;
        end
        %same for position 3
        if i==1                                         %if it's the first frame (no previous stimulus available)
            if position_1~=2                            %if it's the Marginal or Diff_Marginal sequence 
                stim_num = first_item( pos_mat_3 );     %feed it the marginal or diff-Marg matrix to determine first stimulus
            end
            if position_1==2                            %if it's the transitional sequence
                stim_num = first_item( Marginal );      %feed it the underlying Marginal statistics for random gen of first stimulus    
            end
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5)
            frame=insert_stim(frame, stimulus, point_3);%replace the area in the frame with the stimulus
            prev_stimulus_num=stim_num;                 %set previous stimulus to the stimulus just inserted
        end
        if i ~= 1                                           %if it's not the first frame
            stim_num=order( prev_stimulus_num, pos_mat_3 );  
            stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5)
            frame=insert_stim(frame, stimulus, point_3);
            prev_stimulus_num=stim_num;
        end
        %
        figure(6)
        imagesc(frame, [-1 1]);
        axis image; axis off; colormap gray(256);
        set(gca,'pos', [0 0 1 1]);
        set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
        b_id=['Block_' num2str(block)];                 %generate unique frame name including block number and frame number
        f_id=['Frame_' num2str(i)];
        id=strcat(b_id,'_',f_id);
        saveas(gcf,['Stimuli/Condition_3/' id '.jpg']);
    end


end
