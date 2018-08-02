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