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

