```md
## Random Variable (with Coin and Dice Examples)

Think of a **random variable** as a machine that takes a random outcome and outputs a number, so that probability can live on numbers instead of messy outcome labels.

### Core Idea

Start with a probability space $(\Omega, \mathcal{F}, \mathbb{P})$.

A **random variable** $X$ is a function

$$
X : \Omega \to \mathbb{R}
$$

that assigns a real number to each outcome $\omega \in \Omega$.

Which number you actually observe when you run the experiment is random, because it depends on which $\omega$ occurs.

---

### Example 1: Coin Toss

- Sample space:

$$
\Omega = \{\text{H}, \text{T}\}
$$

- Define $X$ as the “number of heads in one toss”:

$$
X(\text{H}) = 1,\quad X(\text{T}) = 0
$$

So $X$ is a random variable taking values in $\{0,1\}$.

If the coin is fair:

$$
\mathbb{P}(X = 1) = \mathbb{P}(\{\text{H}\}) = 0.5
$$

$$
\mathbb{P}(X = 0) = \mathbb{P}(\{\text{T}\}) = 0.5
$$

The values and their probabilities,

$$
\mathbb{P}(X=0)=0.5,\quad \mathbb{P}(X=1)=0.5
$$

form the **probability mass function (PMF)** or **distribution** of $X$.

---

### Example 2: Dice Roll

- Sample space:

$$
\Omega = \{1,2,3,4,5,6\}
$$

- Define

$$
Y(\omega) = \omega
$$

(identity random variable).

Then $Y$ takes values $1,2,3,4,5,6$, and for a fair die:

$$
\mathbb{P}(Y = k) = \frac{1}{6}, \quad k = 1,\dots,6
$$

Again, the table of $\mathbb{P}(Y=k)$ forms the **distribution** of $Y$.

---

### Bridge to ML Intuition

In machine learning, data points $x \in \mathbb{R}^d$ are often viewed as realizations of a random variable

$$
X : \Omega \to \mathbb{R}^d
$$

where:

- $\Omega$ represents abstract randomness,
- $X$ maps outcomes to feature vectors in $\mathbb{R}^d$,
- and the **distribution of $X$** describes how likely different regions of $\mathbb{R}^d$ are.

A random variable is the bridge that moves probability from the abstract space $\Omega$ to the concrete numerical space where we perform calculations and train models.
```
