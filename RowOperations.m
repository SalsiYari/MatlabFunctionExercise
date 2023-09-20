A=[1 2 -1; 2 1 -2; -3 1 1]; %coefficients
b=[3; 3; -6];   %vector b

Ab=[A b];   %tableau form [A |b]

%Step 1: row2 - 2*row1
Ab(2,:)=Ab(2,:)-2*Ab(1,:);

%Step 2: row3 + 3*row1
Ab(3,:)=Ab(3,:)+3*Ab(1,:);

%Step 2: row3 + 7/3*row2
Ab(3,:)=Ab(3,:)+7/3*Ab(2,:);

%Back substitution -because A yields an upper triangular form
z=Ab(3,4)/Ab(3,3);
y=(Ab(2,4)-Ab(2,3)*z)/Ab(2,2);
x=(Ab(1,4)-Ab(1,2)*y-Ab(1,3)*z)/Ab(1,1);

x0=[x; y; z];   %Save this variable for further checks