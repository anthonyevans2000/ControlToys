function doublePendulumAnimator(phi1, phi2, duration)
clear All; clf;

simulationFrames = length(phi1);
fps = simulationFrames/duration;    
if length(phi2) ~= simulationFrames
    error('Joint angle vectors are not the same length - invalid input data');
end


imageOut=plot(0,0,'MarkerSize',30,'Marker','.','LineWidth',2);
set(gca,'nextplot','replacechildren');

% Plot Parameters
axis([-2.2, 2.2, -2.2, 2.2]);
l1=1;
l2=1;
pause;

for i = 1:simulationFrames-1
    
    Xcoord=[0,l1*sin(phi1(i)),l1*sin(phi1(i))+l2*sin(phi2(i))];
    Ycoord=[0,-l1*cos(phi1(i)),-l1*cos(phi1(i))-l2*cos(phi2(i))];
    set(imageOut,'XData',Xcoord,'YData',Ycoord);
    drawnow;
    pause(1/fps);
end
    
    
    