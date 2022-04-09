function [Timex,XPreValue,YPreValue,YawPreValue] = DrawDr(m)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

for i=1:size(m.ChannelNames)
    data = m.ChannelGroup(i).Channel(1).Name;
 %% DR PreValue
        if strcmp(data,'DEBUG_track_vehicle_pos_x')
            DEBUG_track_vehicle_pos_x.index = i;
        end
        if strcmp(data,'DEBUG_track_vehicle_pos_y')
            DEBUG_track_vehicle_pos_y.index = i;
        end
        if(strcmp(data,'DEBUG_track_vehicle_yaw'))
            DEBUG_track_vehicle_pos_yaw.index = i;
        end
        
end
[DEBUG_track_vehicle_pos_x.PreValue,Timex]= read(m, DEBUG_track_vehicle_pos_x.index,'DEBUG_track_vehicle_pos_x','OutputFormat','Vector');
[DEBUG_track_vehicle_pos_y.PreValue,~] = read(m, DEBUG_track_vehicle_pos_y.index,'DEBUG_track_vehicle_pos_y','OutputFormat','Vector');
[DEBUG_track_vehicle_pos_yaw.PreValue,~] = read(m, DEBUG_track_vehicle_pos_yaw.index,'DEBUG_track_vehicle_yaw','OutputFormat','Vector');

XPreValue = DEBUG_track_vehicle_pos_x.PreValue;
YPreValue = DEBUG_track_vehicle_pos_y.PreValue;
YawPreValue = DEBUG_track_vehicle_pos_yaw.PreValue;

% for i=StartPoint:size(Timex)
%      plot(DEBUG_track_vehicle_pos_x.PreValue(i),DEBUG_track_vehicle_pos_y.PreValue(i),'-o');
%      xlim([-10,10]);
%      ylim([-10,10]);
%      pause(0.001);
% end
end

