% Using ncspline and ccspline
% Q8:
x = [0.1,0.2,0.3];
a = [-0.29004996,-0.56079734,-0.81401972];
[b, c, d] = ncspline(x,a);

% Q10:
fpleft = -2.8004996;
fpright = -2.453394925124157;
[b, c, d] = ccspline(x,a,fpleft, fpright)