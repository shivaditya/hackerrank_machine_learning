# Enter your code here. Read input from STDIN. Print output to STDOUT
n = scanf("%d",1);
m = scanf("%d",1);
X = scanf("%lf",[n+1,m])';
Y=X(:,end);
X=X(:,1:end-1);
X=[ones(m,1),X];
theta=pinv(X'*X)*X'*Y;
Q = scanf("%d",1);
x = scanf("%lf",[n,Q])';
x=[ones(Q,1),x];

disp(x*theta);
