function tau = order_conditions(x,class,s,p,Aeq,beq)
% function tau = order_conditions(x,class,s,p,Aeq,beq)
%
% This is just a small wrapper, used when the option solveorderconditions=1
% is passed to rk_opt.  See the documentation of rk_opt for more details.

oc_form = 'albrecht';

[A,b,c]=unpack_rk(x,s,class);

if strcmp(oc_form,'albrecht')
    tau = oc_albrecht(A,b,c,p);
elseif strcp(oc_form,'butcher')
    tau = oc_butcher(A,b,c,p);
end

lin_tau = Aeq*x'-beq';
tau = [tau lin_tau'];
