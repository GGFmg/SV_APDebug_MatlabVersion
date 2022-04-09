function [trackingEnd_x,trackingEnd_y,trackingEnd_yaw] = GetTrackingEnd(m,StartPoint)

    for i=1:size(m.ChannelNames)
    data = m.ChannelGroup(i).Channel(1).Name;
%% Tracking end
        if strcmp(data,'Debug_f_tracking_end_x')
            Debug_f_tracking_end_x.index = i;
        end
        if strcmp(data,'Debug_f_tracking_end_y')
            Debug_f_tracking_end_y.index = i;
        end
        if strcmp(data,'Debug_f_tracking_end_yaw')
            Debug_f_tracking_end_yaw.index = i;
        end
    end
[Debug_f_tracking_end_x.PreValue]= read(m, Debug_f_tracking_end_x.index,'Debug_f_tracking_end_x','OutputFormat','Vector');
[Debug_f_tracking_end_y.PreValue]= read(m, Debug_f_tracking_end_y.index,'Debug_f_tracking_end_y','OutputFormat','Vector');
[Debug_f_tracking_end_yaw.PreValue]= read(m, Debug_f_tracking_end_yaw.index,'Debug_f_tracking_end_yaw','OutputFormat','Vector');
trackingEnd_x = Debug_f_tracking_end_x.PreValue(StartPoint+2);
trackingEnd_y = Debug_f_tracking_end_y.PreValue(StartPoint+2); 
trackingEnd_yaw = Debug_f_tracking_end_yaw.PreValue(StartPoint+2);
end