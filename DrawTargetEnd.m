function [] = DrawTargetEnd(i)
    global m;
    global TimeIndex;%每一步的索引位置
    global targetGraph1 targetGraph2 targetGraph3 targetGraph4 targetGraph5 targetGraph6 targetGraph7 targetGraph8;%需要全局化，否则无法对该目标进行清除
    switch length(TimeIndex)
        case 1
            switch i
                case TimeIndex(1)
                [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                targetGraph1.LineStyle = '-';
                targetGraph1.LineWidth = 2;
                targetGraph1.MaxHeadSize = 1;
                targetGraph1.Marker = 'o';
            end
        case 2
             switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
             end
        case 3
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
                case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
                case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
            end
        case 4
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
               case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
               case TimeIndex(4)
                    targetGraph3.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph4 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph4.LineStyle = '-';
                    targetGraph4.LineWidth = 2;
                    targetGraph4.MaxHeadSize = 1;
                    targetGraph4.Marker = 'o';
            end
        case 5
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
               case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
               case TimeIndex(4)
                    targetGraph3.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph4 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph4.LineStyle = '-';
                    targetGraph4.LineWidth = 2;
                    targetGraph4.MaxHeadSize = 1;
                    targetGraph4.Marker = 'o';
               case TimeIndex(5)
                    targetGraph4.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph5 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph5.LineStyle = '-';
                    targetGraph5.LineWidth = 2;
                    targetGraph5.MaxHeadSize = 1;
                    targetGraph5.Marker = 'o';
            end
        case 6
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
               case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
               case TimeIndex(4)
                    targetGraph3.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph4 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph4.LineStyle = '-';
                    targetGraph4.LineWidth = 2;
                    targetGraph4.MaxHeadSize = 1;
                    targetGraph4.Marker = 'o';
               case TimeIndex(5)
                    targetGraph4.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph5 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph5.LineStyle = '-';
                    targetGraph5.LineWidth = 2;
                    targetGraph5.MaxHeadSize = 1;
                    targetGraph5.Marker = 'o';
               case TimeIndex(6)
                    targetGraph5.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph6 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph6.LineStyle = '-';
                    targetGraph6.LineWidth = 2;
                    targetGraph6.MaxHeadSize = 1;
                    targetGraph6.Marker = 'o';
            end
        case 7
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
               case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
               case TimeIndex(4)
                    targetGraph3.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph4 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph4.LineStyle = '-';
                    targetGraph4.LineWidth = 2;
                    targetGraph4.MaxHeadSize = 1;
                    targetGraph4.Marker = 'o';
               case TimeIndex(5)
                    targetGraph4.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph5 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph5.LineStyle = '-';
                    targetGraph5.LineWidth = 2;
                    targetGraph5.MaxHeadSize = 1;
                    targetGraph5.Marker = 'o';
               case TimeIndex(6)
                    targetGraph5.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph6 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph6.LineStyle = '-';
                    targetGraph6.LineWidth = 2;
                    targetGraph6.MaxHeadSize = 1;
                    targetGraph6.Marker = 'o';
                case TimeIndex(7)
                    targetGraph6.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph7 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph7.LineStyle = '-';
                    targetGraph7.LineWidth = 2;
                    targetGraph7.MaxHeadSize = 1;
                    targetGraph7.Marker = 'o';
            end
        case 8
            switch i
                case TimeIndex(1)
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph1 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph1.LineStyle = '-';
                    targetGraph1.LineWidth = 2;
                    targetGraph1.MaxHeadSize = 1;
                    targetGraph1.Marker = 'o';
               case TimeIndex(2)
                    targetGraph1.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph2 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph2.LineStyle = '-';
                    targetGraph2.LineWidth = 2;
                    targetGraph2.MaxHeadSize = 1;
                    targetGraph2.Marker = 'o';
               case TimeIndex(3)
                    targetGraph2.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph3 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph3.LineStyle = '-';
                    targetGraph3.LineWidth = 2;
                    targetGraph3.MaxHeadSize = 1;
                    targetGraph3.Marker = 'o';
               case TimeIndex(4)
                    targetGraph3.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph4 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph4.LineStyle = '-';
                    targetGraph4.LineWidth = 2;
                    targetGraph4.MaxHeadSize = 1;
                    targetGraph4.Marker = 'o';
               case TimeIndex(5)
                    targetGraph4.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph5 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph5.LineStyle = '-';
                    targetGraph5.LineWidth = 2;
                    targetGraph5.MaxHeadSize = 1;
                    targetGraph5.Marker = 'o';
               case TimeIndex(6)
                    targetGraph5.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph6 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph6.LineStyle = '-';
                    targetGraph6.LineWidth = 2;
                    targetGraph6.MaxHeadSize = 1;
                    targetGraph6.Marker = 'o';
                case TimeIndex(7)
                    targetGraph6.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph7 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph7.LineStyle = '-';
                    targetGraph7.LineWidth = 2;
                    targetGraph7.MaxHeadSize = 1;
                    targetGraph7.Marker = 'o';
                case TimeIndex(8)
                    targetGraph7.Visible='off';
                    [target_end_x,target_end_y,target_end_yaw] = Get_StepTargetEnd(m,i);%获取targetEnd的信息
                    [target_end_u,target_end_v]=GetYawTouv(target_end_yaw);
                    targetGraph8 = quiver(target_end_x,target_end_y,target_end_u,target_end_v,'g');
                    targetGraph8.LineStyle = '-';
                    targetGraph8.LineWidth = 2;
                    targetGraph8.MaxHeadSize = 1;
                    targetGraph8.Marker = 'o';
            end
    end
    
end