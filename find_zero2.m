function x=find_zero2(x1,x2,y1,y2)
%function find roots x when you have 2 points A(x1,y1) and B(x2,y2)
%
%x=find_zero2(x1,x2,y1,y2)

y=0;
x=(y-y1).*(x2-x1)./(y2-y1)+x1;
end
