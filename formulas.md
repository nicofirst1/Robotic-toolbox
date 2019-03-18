# Errors

## Encoder resolution/error
$\Delta$ $\theta$ = N * $\Delta$ q

where:
- $\Delta$ $\theta$ : encoder error or resoltion = 2 $\pi$/r (where r is the pulse/turn)
- N : transmission / reduction system matrix
- $\Delta$ q: joint error

## End effector position error

$\Delta$ p = J<sub>L</sub>(q) * $\Delta$ q

where:
- delta p : is the position error 
- J<sub>L</sub>(q)  : is the geometric jacobian for the position 
- delta q : is the joint error

# Singularities

##  Rank
When you have found some values of parameters (e.g. $\theta$=0) that makes the jacobian to have det=0 (singular), remember to study the rank of the jacobian with $\theta$=0.

## Span
When you have found some values of parameters (e.g. $\theta$=0) that makes the jacobian to have det=0 (singular), study the span of the jacobian since it will return the linear combination to get something like velocity.

## Jacobian generic Term 
A jeneric term in the null space of the jacobian is given by:

$g=[I-J^\dagger(q)*J^\dagger(q)]*\dot{q}_0$

# Workspace

## Primary
Set of all possible positions that can be reacehd by the robot end-effector indipendetly of its orientation. For a 3R robot the inner radius has the following general formula (given l1, l2, l3 the lengths of the three links):

r=max(|l1-l2|-l3,|l2-l3|-l1,|l1-l3|-l2,0)

## Secondary
Set of all possible positions that can be reacehd by the robot end-effector with any **admissible** orientation


# DH Table

## PRP planar robot
When having the prismatic joint in between two revolutive ones remember that the di can be q1 (for the prismatic joint) plus some extra space


# Jacobian

# Second derivative

$\ddot{q}=J^{-1}(q)(\ddot{p_d}-\dot{J}(q)*\dot{q})$

# Differential Inv/Kin

## Feasable Velocity
Given a velocity *V* and a jacobian *J*, *V* will be feasible if and only if it belongs to the range space (or image) of *J*.

To check it just concatenate *V* with *J* column wise and check if the rank of the new matrix changes. If not then the velocity is feasable, since *V* is a linear combination of the columns of *J*, else it is not.

## Balance force
Given a force *F* and some torques $\tau$, if we want the torques to balance the force applied on the end effector we use:

$F - J\tau=0 \Rightarrow \tau=J^{-1}*F$