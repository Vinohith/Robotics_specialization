function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************
a = P1(1, :);
b = P1(2, :);
c = P1(3, :);

x = P2(1, :);
y = P2(2, :);
z = P2(3, :);

centP1 = [(a(1)+b(1)+c(1))/3 ; (a(2)+b(2)+c(2))/3];
centP2 = [(x(1)+y(1)+z(1))/3 ; (x(2)+y(2)+z(2))/3];

distbtwcent = norm(centP1 - centP2);
distbtwcent1anda = norm(centP1 - a);
distbtwcent2andx = norm(centP2 - x);

if (distbtwcent < distbtwcent1anda) || (distbtwcent < distbtwcent2andx)
    flag = true;
else
    flag = false;
% *******************************************************************
end