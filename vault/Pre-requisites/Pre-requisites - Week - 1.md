Resource : *Mathematical Foundations of Machine Learning (https://www.youtube.com/playlist?list=PLgMDNELGJ1Cay-Q9Cn8KcpUcC58NDWuiu)*

# Definitions

**Probability Theory** : 
	Probability Theory is a mathematical framework for analyzing/modelling uncertainty of events.
	
**Random Experiment** : 
	A **random experiment** is any process you can repeat under the same conditions where you know all the possible outcomes, but you **cannot be sure which one will happen on a given trial**.
		*ex. Tossing of Coin  : $\{H, T\}$, Rolling a Die : $\{1, 2, 3, 4, 5, 6\}$*
		Again, we know all possible results, but each roll is uncertain.

**Sample Space(Ω)** :
	The **sample space** is the set of **all possible outcomes** of a random experiment.
	Tossing one coin:
		$Ω=\{\text{Head},\text{Tail}\}$
	    These are all the outcomes that can occur when you toss the coin once.
	Rolling a Die:
		$Ω=\{1,2,3,4,5,6\}$

**Valid Measure(for Now [[Lebesgue Measure]]**)
	Lebesgue measure is a way to make the idea of **length / area / volume** work for **very complicated subsets** of $\mathbb{R}$ or $\mathbb{R}^n$, not just nice intervals or rectangles.
	In probability, when people say “a random variable on $(\mathbb{R},\mathbb{B},\mathbb{λ})$", $\mathbb{λ}$ is usually the Lebesgue measure, and $\mathbb{B}$ is the Borel sigma-algebra.
		Ex lets compare A = [2, 3] and B = [3, 6] using $\mathbb{L}$,
		$\mathbb{L}$ = | b - a |
		L = | 3 - 2 | = 1
		L = |6 - 3| = 3
		Set B is larger, i.e. Its is a valid measure to compare 2 sets.
		To connect this to what you know: for a **simple interval** like [0,1], Lebesgue measure gives 1; for [0,2], it gives 2. The power is that the same notion works for much more complicated sets sucg as $\mathbb{R}^n$ and underlies Lebesgue integration.
**[[Probability Measure]]**

“Lebesgue measure $\lambda$ on $\mathbb{R}$ is a general ‘size’ or ‘length’ measure that can assign values from $0$ up to $+\infty$ to sets, and it is not normalized. A probability measure $\mathbb{P}$ built from a density $f$ using $\lambda$ is obtained by setting
$$
\mathbb{P}(A) = \int_A f(x)\, d\lambda(x)
$$
with total mass $1$, so that $\mathbb{P}$ satisfies the probability axioms: $\mathbb{P}(\Omega)=1$, $\mathbb{P}(\varnothing)=0$, and countable additivity for disjoint events.”