clc;
clear;
close all;
global m;%文件内容
global TimeIndex;%每一步的索引位置
global drawMs;

%车身信息
global CAR_LENGTH;
global CAR_WIDTH;
global REAR_AXLE_TO_FRONT;
global REAR_AXLE_TO_REAR;
CAR_LENGTH = 5.038;
CAR_WIDTH = 1.948;
REAR_AXLE_TO_FRONT = 3.902;
REAR_AXLE_TO_REAR = 1.136;
%设置窗格大小
set(gcf,'Resize','off','position',[20,100,720,640]);

drawMs = 0;
% %%% 读取mf4里面的文件
GetDataIndexFromMDF();

%% 数据处理
[Time_StartPoint,Time_EndPoint] = StartTimeConfirm(m);%init rollingcounter的起始时间
TimeIndex = StepTimeConfirm(m);%每一步的索引位置
[tracking_end_x,tracking_end_y,tracking_end_yaw] = GetTrackingEnd(m,Time_StartPoint);%获取tracking end的信息
%画目标点的Tracking end的航向，u,v是航向的x和y的矢量分量
[tracking_end_u,tracking_end_v]=GetYawTouv(pi/2+tracking_end_yaw);
trackingGraph = quiver(tracking_end_x,tracking_end_y,tracking_end_u,tracking_end_v,'r');
trackingGraph.LineStyle = '-';
trackingGraph.LineWidth = 2;
trackingGraph.MaxHeadSize = 1;
trackingGraph.Marker = 'o';
hold on;

%画车位线
[Slot12,Slot21,Slot23,Slot32,Slot34,Slot43,Slot41,Slot14]=DrawSlotLine(m,Time_StartPoint);
plot(Slot12,Slot21,'b-',Slot23,Slot32,'b-',Slot34,Slot43,'b-',Slot41,Slot14,'b-');


%画DR
[Timex,XPreValue,YPreValue,YawPreValue] = DrawDr(m);

Point = animatedline('Color','r');
Point.MaximumNumPoints = 1;
Point.LineWidth = 1;
Point.Marker = 'o';



drawCounter = 0;

WidthHalf = CAR_WIDTH/2;
RearAxle = REAR_AXLE_TO_REAR;
d = sqrt(WidthHalf*WidthHalf + RearAxle*RearAxle);
DRx_bk = 0;
DRy_bk = 0;
leftRearPointX = -WidthHalf;
leftRearPointY = -REAR_AXLE_TO_REAR;
for i=Time_StartPoint:Time_EndPoint-1%length(Timex)
    drawCounter = drawCounter+1;
    DRx = XPreValue(i);
    DRy = YPreValue(i);
    DRyaw = YawPreValue(i);
    if drawCounter>10
        h.Visible = 'off';
        [leftRearPointX,leftRearPointY]=DrawDrCarLine(DRx,DRy,DRyaw);
%         leftRearPointX = leftRearPointX+DRx-DRx_bk;
%         leftRearPointY = DRy+(-abs(d/(leftRearPointX-DRx)) + DRy);
        h = rectA(leftRearPointX,leftRearPointY,CAR_WIDTH,CAR_LENGTH,DRyaw-pi/2);
        h.Visible = 'on';
        drawCounter = 0;
        DRx_bk = DRx;
        DRy_bk = DRy;
    end
    DrawTargetEnd(i);
    addpoints(Point,DRx,DRy);
    xlim([-10,10]);
    ylim([-10,10]);
    pause(0.001);
end


