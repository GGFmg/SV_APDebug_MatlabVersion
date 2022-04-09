function [Slot12,Slot21,Slot23,Slot32,Slot34,Slot43,Slot41,Slot14] = DrawSlotLine(m,StartPoint)
%GETSLOTLINE 此处显示有关此函数的摘要
%   此处显示详细说明


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
end
[DEBUG_total_A_x.PreValue,DEBUG_total_A_x.Time] = read(m, DEBUG_total_A_x.index,'DEBUG_total_A_x','OutputFormat','Vector');
[DEBUG_total_A_y.PreValue,DEBUG_total_A_y.Time] = read(m, DEBUG_total_A_y.index,'DEBUG_total_A_y','OutputFormat','Vector');
[DEBUG_total_B_x.PreValue,DEBUG_total_B_x.Time] = read(m, DEBUG_total_B_x.index,'DEBUG_total_B_x','OutputFormat','Vector');
[DEBUG_total_B_y.PreValue,DEBUG_total_B_y.Time] = read(m, DEBUG_total_B_y.index,'DEBUG_total_B_y','OutputFormat','Vector');
[DEBUG_total_C_x.PreValue,DEBUG_total_C_x.Time] = read(m, DEBUG_total_C_x.index,'DEBUG_total_C_x','OutputFormat','Vector');
[DEBUG_total_C_y.PreValue,DEBUG_total_C_y.Time] = read(m, DEBUG_total_C_y.index,'DEBUG_total_C_y','OutputFormat','Vector');
[DEBUG_total_D_x.PreValue,DEBUG_total_D_x.Time] = read(m, DEBUG_total_D_x.index,'DEBUG_total_D_x','OutputFormat','Vector');
[DEBUG_total_D_y.PreValue,DEBUG_total_D_y.Time] = read(m, DEBUG_total_D_y.index,'DEBUG_total_D_y','OutputFormat','Vector');


DEBUG_total_A_x.Value = DEBUG_total_A_x.PreValue(StartPoint);
DEBUG_total_A_y.Value = DEBUG_total_A_y.PreValue(StartPoint);
DEBUG_total_B_x.Value = DEBUG_total_B_x.PreValue(StartPoint);
DEBUG_total_B_y.Value = DEBUG_total_B_y.PreValue(StartPoint);
DEBUG_total_C_x.Value = DEBUG_total_C_x.PreValue(StartPoint);
DEBUG_total_C_y.Value = DEBUG_total_C_y.PreValue(StartPoint);
DEBUG_total_D_x.Value = DEBUG_total_D_x.PreValue(StartPoint);
DEBUG_total_D_y.Value = DEBUG_total_D_y.PreValue(StartPoint);




Slot12(1) = DEBUG_total_A_x.Value;
Slot21(1) = DEBUG_total_A_y.Value;
Slot12(2) = DEBUG_total_B_x.Value;
Slot21(2) = DEBUG_total_B_y.Value;

Slot23(1) = DEBUG_total_B_x.Value;
Slot32(1) = DEBUG_total_B_y.Value;
Slot23(2) = DEBUG_total_C_x.Value;
Slot32(2) = DEBUG_total_C_y.Value;

Slot34(1) = DEBUG_total_C_x.Value;
Slot43(1) = DEBUG_total_C_y.Value;
Slot34(2) = DEBUG_total_D_x.Value;
Slot43(2) = DEBUG_total_D_y.Value;

Slot41(1) = DEBUG_total_D_x.Value;
Slot14(1) = DEBUG_total_D_y.Value;
Slot41(2) = DEBUG_total_A_x.Value;
Slot14(2) = DEBUG_total_A_y.Value;



%% 不被APP调用内部调试代码
% plot(Slot12,Slot21,'b-*',Slot23,Slot32,'b-*',Slot34,Slot43,'b-*',Slot41,Slot14,'b-*');
end

