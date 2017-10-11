% For minimum Case 
g1=2.6/(1+62*s);
g2=1.5/((1+23*s)*(1+62*s));
g3=1.4/((1+30*s)*(1+90*s));
g4=2.8/(1+90*s);
G_Minimum=[g1,g2;g3,g4]

% step response for Minimum phase transfer function 
step(feedback(G_Minimum,[1,1;1,1]))
title('Step Response for Minimum phase transfer function ')


    

