function [ pos_mat_1, pos_mat_2, pos_mat_3, position_1, position_2, position_3 ] = det_places( block, section, Marginal, Transitional, Diff_Marg )
%DET_PLACES determines which stimuli goes where, assign the correct
%matrices and records which sequence is in which place

    pos=[1 2 3];                        %possible positions
    
    % position 1
    position_1=pos(randi(numel(pos)));
    pos = pos(pos~=position_1);
    if position_1==1
        pos_mat_1=Marginal;
    end
    if position_1==2
        pos_mat_1=Transitional;
    end
    if position_1==3
        pos_mat_1=Diff_Marg;
    end
    % position 2
    position_2=pos(randi(numel(pos)));
    pos = pos(pos~=position_2);
    if position_2==1
        pos_mat_2=Marginal;
    end
    if position_2==2
        pos_mat_2=Transitional;
    end
    if position_2==3
        pos_mat_2=Diff_Marg;
    end
    % position 3
    position_3=pos(randi(numel(pos)));
    if position_3==1
        pos_mat_3=Marginal;
    end
    if position_3==2
        pos_mat_3=Transitional;
    end
    if position_3==3
        pos_mat_3=Diff_Marg;
    end
    
    pos=[1 2 3]; %reinstate pos to use for the next part
    
    % write to a file which sequence is in which position where Marginal=1,
    % Transitional=2 and Diff-Marg=3
    
    text_file = fopen('Condition_Overview.txt', 'a+');
    b_id=['Block_' num2str(block)];
    s_id=['Section_' num2str(section)];
    id=strcat(b_id,'_',s_id);
    fprintf(text_file, '%s\n', id);
    fclose(text_file);
    %pos_array=[position_1, position_2, position_3];
    write_pos=[pos(1), position_1, pos(2), position_2, pos(3), position_3];
    formatSpec = 'In position %1f the sequence is sequence number %1f.\n';
    text_file = fopen('Condition_Overview.txt', 'a+');
    fprintf(text_file,formatSpec,write_pos);
    fclose(text_file);

end
