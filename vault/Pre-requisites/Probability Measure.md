### Probability measure (intuition + definition)

Think of a **probability measure** as *a measure that has been normalized so the total mass is 1*.

---

### Basic idea

Start with:

- A sample space $\Omega$: all possible outcomes of a random experiment.  
- A sigma‑algebra $\mathcal{F}$: the collection of events (subsets of $\Omega$) we are allowed to talk about.  

A **probability measure** $\mathbb{P}$ is a function

$$
\mathbb{P} : \mathcal{F} \to [0,1]
$$

that assigns a probability to each event.

---

### Three key properties

For all events $A, A_1, A_2, \dots \in \mathcal{F}$:

1. **Non‑negativity**

$$
\mathbb{P}(A) \ge 0
$$

2. **Total probability = 1**

$$
\mathbb{P}(\Omega) = 1, \quad \mathbb{P}(\varnothing) = 0
$$

3. **Countable additivity (sigma‑additivity)**

If $A_i$ are pairwise disjoint (no overlap), then

$$
\mathbb{P}\Big(\bigcup_{i=1}^{\infty} A_i\Big)
= \sum_{i=1}^{\infty} \mathbb{P}(A_i)
$$

So a **probability measure** is just an ordinary measure (like length, area, counting) with the extra condition that the whole space has measure $1$.

---

### Simple examples

**1. Finite sample space (coin)**

- $\Omega = \{\text{H}, \text{T}\}$, $\mathcal{F} = 2^\Omega$.  
- Define
  $$
  \mathbb{P}(\{\text{H}\}) = 0.5, \quad
  \mathbb{P}(\{\text{T}\}) = 0.5
  $$
- Then $\mathbb{P}(\Omega) = 1$, and probabilities add for disjoint events.

**2. Continuous case using Lebesgue measure**

- $\Omega = \mathbb{R}$, background measure = Lebesgue measure $\lambda$.  
- Choose a density $f$ with
  $$
  \int_{\mathbb{R}} f(x)\, d\lambda(x) = 1
  $$
- Define
  $$
  \mathbb{P}(A) = \int_A f(x)\, d\lambda(x)
  $$

This $\mathbb{P}$ satisfies all three properties above.

---

### One‑line intuition

A **measure** gives “size”; a **probability measure** is a measure where the total size of the entire sample space is $1$, and we interpret that size as “chance”.