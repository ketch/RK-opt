This subpackage contains routines for finding optimal Runge-Kutta method coefficients,
given a prescribed order of accuracy, number of stages, and an objective function.
Constraints on the stability polynomial (possibly obtained using **polyopt** or **am_radius-opt**)
can optionally be provided.

To run the tests, execute the MATLAB commands
``
results_rkopt = runtests('test_rkopt.m');
table(results_rkopt)
``
