Matlab package for basic robotic operations.

# Intro

As a first time robotic student I found myself struggling to understand the basic computations which are fundamental for the study of manipulators. 

To get myself familiar with this I created this matlab module which is based on the [Symbolic](https://nl.mathworks.com/help/symbolic/index.html?s_tid=CRUX_lftnav) toolbox. For the ones that are not familiar with matlab, the symbolic toolbox provides functions for solving, plotting, and manipulating symbolic math equations. 

Rather than solving equations and outputting numbers, I focused on having a reference between theroy and practice. This toolbox is not ment to be used on a real robot, but it should be rather used while solving exercises. 

## Structure

Each direcotry contains scripts relative to a specific field of study, in this section I will explain them all. 

### Initialization

This direcotry contains function to create the _robot_ struct, which is the main object in this toolbox.

- [dh2robot](./initialization/dh2robot.m) : returns a robot object from a series of DH parameters.
- [load_robot](./initialization/load_robot.m): load certain types of robot (e.g. an n revolutive planar robot), without specifying the DH parameters.
- [corke2robot](./initialization/dh2robot.m): transform a DH table in the corke standard into a robot object.

### matrix_utils

This directory is divided into two parts, one for homogeneous matrices and one for transf matrices.

#### homogeneous
Aka _homo_ (no pun intended), handles the homogeneous matrix creation. They can derive either from the standard DH convention or from the [modified](https://en.wikipedia.org/wiki/Denavit%E2%80%93Hartenberg_parameters#Modified_DH_parameters). Be sure to input the right type of convention during the robot creation.

#### transformation
Aka _trans_ (again no pun intended), handels the transformation matrices estimation. it is based on the previous _homo_ directory. You can either get the trans mat from the robot object of from the _pe_ (end effector position). 


