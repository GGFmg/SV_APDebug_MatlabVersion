function GetDataIndexFromMDF()
global m;
m = mdf('Vertical.mf4');

%%% 读取mf4里面的信号索引值
for i=1:size(m.ChannelNames)
    data = m.ChannelGroup(i).Channel(1).Name;
    %% 车位坐标
        if strcmp(data,'DEBUG_total_A_x')
            DEBUG_total_A_x.index = i;
        end
        if strcmp(data,'DEBUG_total_A_y')
            DEBUG_total_A_y.index = i;
        end
        if strcmp(data,'DEBUG_total_B_x')
            DEBUG_total_B_x.index = i;
        end
        if strcmp(data,'DEBUG_total_B_y')
            DEBUG_total_B_y.index = i;
        end
        if strcmp(data,'DEBUG_total_C_x')
            DEBUG_total_C_x.index = i;
        end
        if strcmp(data,'DEBUG_total_C_y')
            DEBUG_total_C_y.index = i;
        end
        if strcmp(data,'DEBUG_total_D_x')
            DEBUG_total_D_x.index = i;
        end
        if strcmp(data,'DEBUG_total_D_y')
            DEBUG_total_D_y.index = i;
        end
 %% DR PreValue
        if strcmp(data,'DEBUG_track_vehicle_pos_x')
            DEBUG_track_vehicle_pos_x.index = i;
        end
        if strcmp(data,'DEBUG_track_vehicle_pos_y')
            DEBUG_track_vehicle_pos_y.index = i;
        end
        if strcmp(data,'DEBUG_track_vehicle_yaw')
            DEBUG_track_vehicle_pos_yaw.index = i;
        end
        if strcmp(data,'Debug_f_tracking_end_x')
            Debug_f_tracking_end_x.index = i;
        end
        if strcmp(data,'Debug_f_tracking_end_y')
            Debug_f_tracking_end_y.index = i;
        end
        if strcmp(data,'Debug_f_tracking_end_yaw')
            Debug_f_tracking_end_yaw.index = i;
        end
        %% 算法调用
        if strcmp(data,'DEBUG_RollingCountInit0')
            DEBUG_RollingCountInit0.index = i;
        end
        
end
end