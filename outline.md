# Outline For Project

Possible title:
	Solving the azimuthally Fourier decomposed Helmholtz equation in axisymmetric cylindrical coordinates

## Chapter descriptions

1. Introduction
	Here we motivate the problem.
	Why do people care?
	What are the difficulties?
	What has already been done?
	A literature review of the topic.

2. Problem description
	Formal description of the problem.
	Mathematical subtleties.
	Boundary conditions, interpretations, similar results.
	Complex shifted laplacian.

3. Finite element method
	What are the components, outline of the method.
	Where does my work fit in?
	Benefits of FEM vs other methods.
	Talk about oomph-lib.

4. Multigrid
	How does multigrid work?
	What are the difficulties as we increase the dimension of the problem?
	How does FEM come work with mutltigrid?
	Geometric vs. algebraic.
	Figure of the grid hierarchy.

5. Results
	Essentially, what is the output from the oomph-lib stuff
	Lots of graphs/figures/tables
	Comparison between mg cartesian and mg cylindrical

6. Conclusion 
	Summary of results.
	Conclude the work.

## Comments

Need some more chapters. What to include?



## Notes

Mention the different mg cycles, reference papers.
Talk about their features, the smoothing and restriction/prolongation operators.
Different levels/grids.

On comparison of multigrid cycles...
Mentions solver not good for cartesian, works fine for cylindrical.
This is important, need to say possible that this wont work -- introduction

Have to use complex damped jacobi because of the block structure of the matrix (real vs imag part)
Oomph doesn't store complex numbers, so we use vector where first entry is real, second is imag
Split u=u_r+iu_c

Mesh refinement study -> how does the error reduce as the mesh is refined?
For a 2d mesh, error should reduce as h^2
So double the size of the mesh, error reduces by 1/4.


GMRES is the smoother for MG, which preconditions FGMRES, which solves the linear system arising from the Jacobian in the Newton method.
We have to use FGMRES because the preconditioner changes from iteration to iteration.
We use GMRES because of the paper references in the code (elman).
The Jacobian matrix is "block complex", with the given structure (A_r, -A_c; A_c, A_r) 

---

We need to make a comparison for the 1D variable coefficient solver.
Discuss what the problem is, according to Briggs.
Mention the iteration count against the Poisson vs with the 1/r term.
