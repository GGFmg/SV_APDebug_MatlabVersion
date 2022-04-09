function [u,v] = GetYawTouv(yaw)
%%��Ŀ����Tracking end�ĺ���u,v�Ǻ����x��y��ʸ������
%Ϊ��֤��ͷ���򳤶�
%v^2+u^2=arrowLength^2,arrowLength��Ϊ��ͷ����
%tan(yaw)=v/u
%���㹫ʽ��v��u��ֵ
%%
    arrowLength =1;
    %���������������޷��滭�����������
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