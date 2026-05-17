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

What is Measure ? : https://youtu.be/1BhSQiHTNbg?si=xMb69_wVSHp9cVkI

**[[Probability Measure]]**
	A **probability measure** is a special kind of measure that assigns a number between 0 and 1 to events, in a way that follows three precise rules

“Lebesgue measure $\lambda$ on $\mathbb{R}$ is a general ‘size’ or ‘length’ measure that can assign values from $0$ up to $+\infty$ to sets, and it is not normalized. A probability measure $\mathbb{P}$ built from a density $f$ using $\lambda$ is obtained by setting
$$
\mathbb{P}(A) = \int_A f(x)\, d\lambda(x)
$$
with total mass $1$, so that $\mathbb{P}$ satisfies the probability axioms: $\mathbb{P}(\Omega)=1$, $\mathbb{P}(\varnothing)=0$, and countable additivity for disjoint events.”

# Lectures :
## Lec 02 Recap of Probability Theory - 1, Part 1 https://youtu.be/YLx3hBqt28k?si=l0_sg9EEOL_hS4iH

## Probability: Mathematical Framework for Uncertainty $(\Omega, \mathcal{F}, \mathbb{P})$

### $\Omega$ (Sample Space)

Set of all possible outcomes of one random experiment.

- Example: Coin toss  
  $\Omega = \{\text{Head}, \text{Tail}\}$

- Example: Roll a die  
  $\Omega = \{1, 2, 3, 4, 5, 6\}$

The sample space lists all that can happen.

---

### $\mathcal{F}$ (Event Space)

Collection of (meaningful) subsets of the sample space $\Omega$.

We take subsets of $\Omega$ that we care about and call them **events**.

- Example (coin toss):  
  $\Omega = \{\text{Head}, \text{Tail}\}$  
  Possible events:  
  - $\varnothing$ (nothing happens)  
  - $\{\text{Head}\}$  
  - $\{\text{Tail}\}$  
  - $\{\text{Head}, \text{Tail}\} = \Omega$

For an $\Omega$ of size $n$, from set theory we know:
$$
\sum_{k=0}^{n} \binom{n}{k} = 2^n
$$
So there are $2^n$ possible subsets of $\Omega$. The elements of $\mathcal{F}$ are called **events**.

---

### $\mathbb{P}$ (Probability Measure)

“Chances” (likelihood) of certain events happening.

A special measure which assigns values between $0$ and $1$ (as in Kolmogorov’s axioms) to the events from the event space $\mathcal{F}$. Every event from $\mathcal{F}$ is assigned a value between $0$ and $1$.

- Notation:  
  $\mathbb{P} : \mathcal{F} \to [0,1]$

- Basic properties (axioms, in simple words):  
  - $\mathbb{P}(\Omega) = 1$ (something in the sample space must happen)  
  - $\mathbb{P}(\varnothing) = 0$ (the impossible event has probability 0)  
  - If $A$ and $B$ are disjoint (no overlap),  
    $$
    \mathbb{P}(A \cup B) = \mathbb{P}(A) + \mathbb{P}(B)
    $$

- Example (fair coin):  
  $\Omega = \{\text{Head}, \text{Tail}\}$  
  $\mathcal{F} = \{\varnothing, \{\text{Head}\}, \{\text{Tail}\}, \Omega\}$  
  Define  
  $$
  \mathbb{P}(\{\text{Head}\}) = 0.5,\quad
  \mathbb{P}(\{\text{Tail}\}) = 0.5
  $$
  Then  
  $$
  \mathbb{P}(\Omega) = 1,\quad
  \mathbb{P}(\varnothing) = 0
  $$
## Kolmogorov's Axioms

### 1. Non‑negativity

Let A be any event (A ∈ 𝓕). Probability will always be non‑negative:

$$
\mathbb{P}(A) \ge 0
$$

So we never have a negative probability.

---

### 2. Normalization (0 to 1)

Probability of the entire sample space Ω is 1.  
Also, probability of the empty set (nothing happens) is 0:

$$
\mathbb{P}(\Omega) = 1, \quad \mathbb{P}(\varnothing) = 0
$$

So maybe we can say: for a fair coin toss with

$$
\Omega = \{\text{Head}, \text{Tail}\}
$$

and

$$
\mathcal{F} = \{\varnothing, \{\text{Head}\}, \{\text{Tail}\}, \Omega\},
$$

we have:

- $\mathbb{P}(\varnothing) = 0$  
- $\mathbb{P}(\{\text{Head}\}) = 0.5$  
- $\mathbb{P}(\{\text{Tail}\}) = 0.5$  
- $\mathbb{P}(\Omega) = 1$

---

### 3. Additivity

Let A and B be two events in 𝓕 and suppose they are **disjoint** (nothing common), i.e.

$$
A \cap B = \varnothing.
$$

Then

$$
\mathbb{P}(A \cup B) = \mathbb{P}(A) + \mathbb{P}(B)
$$

This means when we add probabilities of two disjoint events, their probabilities just add and we get a larger probability.

Example (fair coin):

- $A = \{\text{Head}\}$  
- $B = \{\text{Tail}\}$  
- $A \cap B = \varnothing$ and  
  $$
  \mathbb{P}(A \cup B) = \mathbb{P}(\Omega) = 1 = 0.5 + 0.5
  $$
