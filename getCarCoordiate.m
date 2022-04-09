function [Slot12,Slot21,Slot23,Slot32,Slot34,Slot43,Slot41,Slot14] = getCarCoordiate(i,XPreValue,YPreValue,CAR_WIDTH,CAR_LENGTH,REAR_AXLE_TO_FRONT,REAR_AXLE_TO_REAR)
%CARCOOR 此处显示有关此函数的摘要
%   此处显示详细说明
    %%%%%%%%%%%
    %%%1   2%%%
    %%%     %%%
    %%%4   3%%%
    Slot12(1) = XPreValue(i)-CAR_WIDTH/2;
    Slot21(1) = YPreValue(i)+REAR_AXLE_TO_FRONT;
    Slot12(2) = XPreValue(i)+CAR_WIDTH/2;
    Slot21(2) = YPreValue(i)+REAR_AXLE_TO_FRONT;

    Slot23(1) = XPreValue(i)+CAR_WIDTH/2;
    Slot32(1) = YPreValue(i)+REAR_AXLE_TO_FRONT;
    Slot23(2) = XPreValue(i)+CAR_WIDTH/2;
    Slot32(2) = YPreValue(i)-REAR_AXLE_TO_REAR;

    Slot34(1) = XPreValue(i)+CAR_WIDTH/2;
    Slot43(1) = YPreValue(i)-REAR_AXLE_TO_REAR;
    Slot34(2) = XPreValue(i)-CAR_WIDTH/2;
    Slot43(2) = YPreValue(i)-REAR_AXLE_TO_REAR;

    Slot41(1) = XPreValue(i)-CAR_WIDTH/2;
    Slot14(1) = YPreValue(i)-REAR_AXLE_TO_REAR;
    Slot41(2) = XPreValue(i)-CAR_WIDTH/2;
    Slot14(2) = YPreValue(i)+REAR_AXLE_TO_FRONT;
end

