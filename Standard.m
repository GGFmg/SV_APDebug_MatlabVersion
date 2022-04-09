clc;
clear;
close all;
global m;%�ļ�����
global TimeIndex;%ÿһ��������λ��
global drawMs;

%������Ϣ
global CAR_LENGTH;
global CAR_WIDTH;
global REAR_AXLE_TO_FRONT;
global REAR_AXLE_TO_REAR;
CAR_LENGTH = 5.038;
CAR_WIDTH = 1.948;
REAR_AXLE_TO_FRONT = 3.902;
REAR_AXLE_TO_REAR = 1.136;
%���ô����С
set(gcf,'Resize','off','position',[20,100,720,640]);

drawMs = 0;
% %%% ��ȡmf4������ļ�
GetDataIndexFromMDF();

%% ���ݴ���
[Time_StartPoint,Time_EndPoint] = StartTimeConfirm(m);%init rollingcounter����ʼʱ��
TimeIndex = StepTimeConfirm(m);%ÿһ��������λ��
[tracking_end_x,tracking_end_y,tracking_end_yaw] = GetTrackingEnd(m,Time_StartPoint);%��ȡtracking end����Ϣ
%��Ŀ����Tracking end�ĺ���u,v�Ǻ����x��y��ʸ������
[tracking_end_u,tracking_end_v]=GetYawTouv(pi/2+tracking_end_yaw);
trackingGraph = quiver(tracking_end_x,tracking_end_y,tracking_end_u,tracking_end_v,'r');
trackingGraph.LineStyle = '-';
trackingGraph.LineWidth = 2;
trackingGraph.MaxHeadSize = 1;
trackingGraph.Marker = 'o';
hold on;

%����λ��
[Slot12,Slot21,Slot23,Slot32,Slot34,Slot43,Slot41,Slot14]=DrawSlotLine(m,Time_StartPoint);
plot(Slot12,Slot21,'b-',Slot23,Slot32,'b-',Slot34,Slot43,'b-',Slot41,Slot14,'b-');


%��DR
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


