function [StepIndex] = StepTimeConfirm(m)
%STARTTIMECONFIRM 此处显示有关此函数的摘要
%   此处显示详细说明
%确定数据每步的时间点
StepPoint1 = 0;
StepPoint2 = 0;
StepPoint3 = 0;
StepPoint4 = 0;
StepPoint5 = 0;
StepPoint6 = 0;
StepPoint7 = 0;
StepPoint8 = 0;

%%% 读取mf4里面的信号索引值
%% 算法调用
for i=1:size(m.ChannelNames)
     data = m.ChannelGroup(i).Channel(1).Name;
        
        if strcmp(data,'DEBUG_target_current_step')
            DEBUG_target_current_step.index = i;
        end
        
end

[DEBUG_target_current_step.PreValue,DEBUG_target_current_step.Time] = read(m, DEBUG_target_current_step.index,'DEBUG_target_current_step','OutputFormat','Vector');
for i=1:size(DEBUG_target_current_step.PreValue)
    if DEBUG_target_current_step.PreValue(i) ~= 0
        switch (DEBUG_target_current_step.PreValue(i))
            case 1
                if StepPoint1==0
                    StepPoint1 = i;
                    StepIndex(1) = i;
                end
            case 2
                if StepPoint2==0
                StepPoint2 = i;
                StepIndex(2) = i;
                end
            case 3
                if StepPoint3==0
                StepPoint3 = i;
                StepIndex(3) = i;
                end
            case 4
                if StepPoint4==0
                StepPoint4 = i;
                StepIndex(4) = i;
                end
            case 5
                if StepPoint5==0
                StepPoint5 = i;
                StepIndex(5) = i;
                end
            case 6
                if StepPoint6==0
                StepPoint6 = i;
                StepIndex(6) = i;
                end
            case 7
                if StepPoint7==0
                StepPoint7 = i;
                StepIndex(7) = i;
                end
            case 8
                if StepPoint8==0
                StepPoint8 = i;
                StepIndex(8) = i;
                end
        end
    end
end


end
