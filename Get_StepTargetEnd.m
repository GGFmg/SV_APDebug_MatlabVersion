function [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,TimeIndex)

    for i=1:size(m.ChannelNames)
    data = m.ChannelGroup(i).Channel(1).Name;
%% Tracking end
        if strcmp(data,'DEBUG_target_path_x')
            DEBUG_target_path_x.index = i;
        end
        if strcmp(data,'DEBUG_target_path_y')
            DEBUG_target_path_y.index = i;
        end
        if strcmp(data,'DEBUG_target_path_yaw')
            DEBUG_target_path_yaw.index = i;
        end
    end
    
    [DEBUG_target_path_x.PreValue]= read(m, DEBUG_target_path_x.index,'DEBUG_target_path_x','OutputFormat','Vector');
    [DEBUG_target_path_y.PreValue]= read(m, DEBUG_target_path_y.index,'DEBUG_target_path_y','OutputFormat','Vector');
    [DEBUG_target_path_yaw.PreValue]= read(m, DEBUG_target_path_yaw.index,'DEBUG_target_path_yaw','OutputFormat','Vector');
    target_end_x = DEBUG_target_path_x.PreValue(TimeIndex+2);
    target_end_y = DEBUG_target_path_y.PreValue(TimeIndex+2); 
    target_end_yaw = DEBUG_target_path_yaw.PreValue(TimeIndex+2);
end
