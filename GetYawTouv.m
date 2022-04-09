function [u,v] = GetYawTouv(yaw)
%%画目标点的Tracking end的航向，u,v是航向的x和y的矢量分量
%为保证箭头方向长度
%v^2+u^2=arrowLength^2,arrowLength即为箭头长度
%tan(yaw)=v/u
%换算公式得v和u的值
%%
    arrowLength =1;
    %避免因计算出虚数无法绘画出方向的问题
    if abs(yaw-3.14)<=0.1 || abs(yaw)<=0.1
        u = 1.57;
        v = 0;
    elseif yaw>=1.57
        u=-sqrt((arrowLength)^2/(1+tan(pi-yaw)));
        v=sqrt(u^2*tan(pi-yaw));
    else
        u=sqrt((arrowLength)^2/(1+tan(yaw)));
        v=sqrt(u^2*tan(yaw));
    end
    
end