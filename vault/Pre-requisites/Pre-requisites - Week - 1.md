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
	A **probability measure** is a special kind of measure that assigns a number between 0 and 1 to events, in a way that follows three precise rules, Tells you how likely the event is about the happen.

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

Let A and B be two events in $F$ and suppose they are **disjoint** (nothing common), i.e.

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
# Lec 03 Recap of Probability Theory - 1, Part 2 : https://youtu.be/DaBw9qBpt2s?si=4MzImG4x79p4C-T6

To get from the abstract world of Probability to something concrete, we use Random Variable.
## Random Variable 

Random variable is a function which bridges probability theory to machine learning data by turning abstract probability stuff into real numbers.

It roughly connects:
- sample space $\Omega$ to points in $\mathbb{R}^d$ (data points),
- event space $\mathcal{F}$ to Borel sigma algebra $\mathcal{B}(\mathbb{R}^d)$ (events in data space),
- probability measure $\mathbb{P}$ to a distribution on $\mathbb{R}^d$ (how likely different data points or regions are).

So a random variable $X : \Omega \to \mathbb{R}^d$ is the map that lets us talk about probabilities directly on the data space instead of on the original abstract outcomes.

Here $\Omega \to \mathbb{R}^d$ means: the data in $\Omega$ can be normal text, images, etc. Let’s consider images.

An image of size $p \times q$ pixels can be seen as a real number vector:

- Total pixels $= p \times q$
- Each pixel can be represented as a combination of 3 channels (R, G, B)

So a single example (one image) becomes a vector in $\mathbb{R}^{3 \times p \times q}$.

Example:

Consider an image of size $2 \times 2$ pixels. Suppose each pixel has a color stored in RGB form (like in Microsoft logo etc.).
![[pixel.png]]
We can write the 4 pixels as:

- Top‑left pixel: $(R_{11}, G_{11}, B_{11})$
- Top‑right pixel: $(R_{12}, G_{12}, B_{12})$
- Bottom‑left pixel: $(R_{21}, G_{21}, B_{21})$
- Bottom‑right pixel: $(R_{22}, G_{22}, B_{22})$

Each $(R_{ij}, G_{ij}, B_{ij})$ is a triple of real numbers (or integers like 0–255).

If we flatten this image into a vector, we get something like:

$$
x = (R_{11}, G_{11}, B_{11},\;
     R_{12}, G_{12}, B_{12},\;
     R_{21}, G_{21}, B_{21},\;
     R_{22}, G_{22}, B_{22})
$$

This is a vector in $\mathbb{R}^{12}$ because we have $4$ pixels $\times$ $3$ channels $= 12$ numbers.

So the $2 \times 2$ RGB image becomes one data point $x \in \mathbb{R}^{12}$.

### Example: RGB image as a vector

In Python with NumPy, a small RGB image can look like this:

```python
import numpy as np

image_array = np.array([
    [[255,   0,   0], [0, 255,   0]],
    [[0,     0, 255], [255, 255, 0]]
])  # shape: (2, 2, 3)
```

- Shape `(2, 2, 3)` means:
  - 2 rows
  - 2 columns
  - 3 channels (R, G, B) per pixel

Total number of values:

- Total pixels $= 2 \times 2 = 4$
- Each pixel has 3 values (R, G, B)
- So total numbers $= 4 \times 3 = 12$

If we flatten this image into a single vector, it becomes an element of:

$$
\mathbb{R}^{12}
$$

So:

- As a tensor: shape is $2 \times 2 \times 3$
- As a flat vector: it lives in $\mathbb{R}^{2 \times 2 \times 3} = \mathbb{R}^{12}$

