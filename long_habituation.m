function [  ] = long_habituation( Marginal, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5, block )
%LONG_HABITUATION Makes the frames for the short rehabituation sequences
%   Uses the marginal distribution and the stimuli of the block as well as
%   the block number (only needed for saving purposes)

m=600 ;                       % number of habituation frames for the initial long habituation
long_habit=linspace(1,m,m);
frame=zeros(960,1280);
[ point_1, point_2, point_3 ] = Circle(  )

for i=long_habit
            % POINT 1
            if i==1                                    %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );     %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_1);%replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                 %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                           %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_1);
                prev_stimulus_num = stim_num;
            end
            % POINT 2
            if i==1                                    %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );     %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_2);%replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                 %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                           %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_2);
                prev_stimulus_num = stim_num;
            end
            % POINT 3
            if i==1                                    %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );     %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_3);%replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                 %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                           %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_3);
                prev_stimulus_num = stim_num;
            end
            
            
            figure(7)
            imagesc(frame, [-1 1]);
            axis image; axis off; colormap gray(256);
            set(gca,'pos', [0 0 1 1]);
            set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
            b_id=['Block_' num2str(block)];                             %generate unique frame name including block number and frame number
            f_id=['Frame_' num2str(i)];
            id=strcat(b_id,'_LH_',f_id);
            saveas(gcf,['Stimuli/Long_Habit/' id '.jpg']);
end

end
