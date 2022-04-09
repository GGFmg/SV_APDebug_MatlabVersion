function [StartPoint, EndPoint] = StartTimeConfirm(m)
%STARTTIMECONFIRM 此处显示有关此函数的摘要
%   此处显示详细说明
%确定数据开始时间点

%%% 读取mf4里面的信号索引值
%% 算法调用
for i=1:size(m.ChannelNames)
     data = m.ChannelGroup(i).Channel(1).Name;
        if strcmp(data,'DEBUG_RollingCountInit0')
            DEBUG_RollingCountInit0.index = i;
        end
        if strcmp(data,'DEBUG_RollingCountExit')
            DEBUG_RollingCountExit.index = i;
        end
end

[DEBUG_RollingCountInit0.PreValue,DEBUG_RollingCountInit0.Time] = read(m, DEBUG_RollingCountInit0.index,'DEBUG_RollingCountInit0','OutputFormat','Vector');
[DEBUG_RollingCountExit.PreValue,DEBUG_RollingCountExit.Time] = read(m, DEBUG_RollingCountExit.index,'DEBUG_RollingCountExit','OutputFormat','Vector');


for i=1:size(DEBUG_RollingCountExit.Time)
    if DEBUG_RollingCountInit0.PreValue(i) ~= 0
        StartPoint = i;
        Exit_bakup = DEBUG_RollingCountExit.PreValue(i);
        break;
    end
end
for i=StartPoint:size(DEBUG_RollingCountExit.Time)
    if DEBUG_RollingCountExit.PreValue(i) ~= Exit_bakup
        EndPoint = i;
        Exit_bakup = DEBUG_RollingCountExit.PreValue(i);
        break;
    end
end
end
