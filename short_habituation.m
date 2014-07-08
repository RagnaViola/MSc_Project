function [  ] = short_habituation( Marginal, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5, block, sh )
%SHORT_HABITUATION Makes the frames for the short rehabituation sequences
%   Uses the marginal distribution and the stimuli of the block as well as
%   the block number (only needed for saving purposes)

frame=zeros(960,1280)
j=250;                         % number of frames for the short habituation
short_habit=linspace(1,j,j);
[ point_1, point_2, point_3 ] = Circle(  )

for i=short_habit
    
            % POINT 1
            if i==1                                             %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );              %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_1);  %replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                   %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                               %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_1);
                prev_stimulus_num = stim_num;
            end
            
            % POINT 2
            if i==1                                             %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );              %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_2);  %replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                   %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                               %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_2);
                prev_stimulus_num = stim_num;
            end
            
            % POINT 3
            if i==1                                             %if it's the first frame (no previous stimulus available)
                stim_num = first_item( Marginal );              %feed it the marginal
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_3);  %replace the area in the frame with the stimulus
                prev_stimulus_num = stim_num;                   %set previous stimulus to the stimulus just inserted
            end
            if i ~= 1                                               %if it's not the first frame
                stim_num = order( prev_stimulus_num, Marginal );  
                stimulus = assign_matrix( stim_num, stimulus_1, stimulus_2, stimulus_3, stimulus_4, stimulus_5);
                frame = insert_stim(frame, stimulus, point_3);
                prev_stimulus_num = stim_num;
            end
            
            figure(8)
            imagesc(frame, [-1 1]);
            axis image; axis off; colormap gray(256);
            set(gca,'pos', [0 0 1 1]);
            set(gcf, 'menu', 'none', 'Color',[.5 .5 .5]);
            b_id=['Block_' num2str(block)];         %generate unique frame name including block number and frame number
            sh_id=['SH_' num2str(sh)];
            f_id=['Frame_' num2str(i)];
            id=strcat(b_id,'_',sh_id,'_',f_id);
            saveas(gcf,['Stimuli/Short_Habit/' id '.jpg']);
end

end
