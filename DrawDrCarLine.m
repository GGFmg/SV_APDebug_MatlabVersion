function [leftRearPointX,leftRearPointY] = DrawDrCarLine(DRx,DRy,DRyaw)
    
    global CAR_WIDTH;
    global REAR_AXLE_TO_REAR;
%% 航向为90度
    if abs(DRyaw - pi/2)<0.01
        if DRx >= CAR_WIDTH/2
            leftRearPointX = DRx-CAR_WIDTH/2;
            if DRy > REAR_AXLE_TO_REAR
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            elseif DRy <= 0
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            else
                leftRearPointY = -(REAR_AXLE_TO_REAR - DRy);
            end
        elseif DRx <= 0
            leftRearPointX = DRx-CAR_WIDTH/2;

            if DRy > REAR_AXLE_TO_REAR
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            elseif DRy <= 0
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            else
                leftRearPointY = -(REAR_AXLE_TO_REAR - DRy);
            end
        else
            leftRearPointX = -(CAR_WIDTH/2-DRx);

            if DRy > REAR_AXLE_TO_REAR
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            elseif DRy <= 0
                leftRearPointY = DRy - REAR_AXLE_TO_REAR;
            else
                leftRearPointY = -(REAR_AXLE_TO_REAR - DRy);
            end
        end
%% 航向为0度
    elseif abs(DRyaw - 0)<0.5
        leftRearPointX = DRx - REAR_AXLE_TO_REAR;
        leftRearPointY = (CAR_WIDTH/2);
%% 航向为锐角
    elseif DRyaw < pi/2
        tempDF = DRy / tan(DRyaw);
         if tempDF < DRx
             leftRearPointX = DRx-tempDF+DRy*cos(DRyaw)-REAR_AXLE_TO_REAR*cos(DRyaw)-(CAR_WIDTH/2)*sin(DRyaw); 
             leftRearPointY = CAR_WIDTH/(2*cos(DRyaw))+DRy-REAR_AXLE_TO_REAR*sin(DRyaw)-(CAR_WIDTH/2)*tan(DRyaw)*sin(DRyaw);
         elseif tempDF == DRx
             leftRearPointX = DRx-tempDF;
             leftRearPointY = CAR_WIDTH/(2*cos(DRyaw));
         else
            leftRearPointX = DRx-(CAR_WIDTH/2)*sin(DRyaw)+DRy*cos(DRyaw)-REAR_AXLE_TO_REAR*cos(DRyaw)-DRy/tan(DRyaw); 
            leftRearPointY = CAR_WIDTH/2*cos(DRyaw)+DRy-REAR_AXLE_TO_REAR*sin(DRyaw);
         end
%% 航向为钝角
    elseif DRyaw > pi/2
        ;
     end
    
end