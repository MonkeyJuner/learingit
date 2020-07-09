# coordinates in [m]
float64 x
float64 y
float64 z

# accumulated distance from beginning of the path in [m]
float64 s

# direction on the x-y plane in [0 ~ 2π]
float64 theta

# curvature on the x-y planning
float64 kappa

# derivative of kappa w.r.t s.
float64 dkappa

# derivative of derivative of kappa w.r.t s.
float64 ddkappa