function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% GradientBasedPlanner : This function plans a path through a 2D
% environment from a start to a destination based on the gradient of the
% function f which is passed in as a 2D array. The two arguments
% start_coords and end_coords denote the coordinates of the start and end
% positions respectively in the array while max_its indicates an upper
% bound on the number of iterations that the system can use before giving
% up.
% The output, route, is an array with 2 columns and n rows where the rows
% correspond to the coordinates of the robot as it moves along the route.
% The first column corresponds to the x coordinate and the second to the y coordinate

[gx, gy] = gradient (-f);

%%% All of your code should be between the two lines of stars.
% *******************************************************************
gx_normalized = gx./(sqrt(gx.^2 + gy.^2));
gy_normalized = gy./(sqrt(gx.^2 + gy.^2));

route(1,:) = start_coords;
iter = 1;
goal_distance = inf;

while (iter <= max_its && goal_distance >= 2.0)
    newy = route(iter, 2) + gy_normalized(round(route(iter, 2)),round(route(iter, 1)));
    newx = route(iter, 1) + gx_normalized(round(route(iter, 2)),round(route(iter, 1)));

    goal_distance = sqrt((newx - end_coords(1,1))^2 + (newy - end_coords(1,2))^2);
    iter = iter + 1;    
    route(iter, :) = [newx, newy];
end
% *******************************************************************
end
