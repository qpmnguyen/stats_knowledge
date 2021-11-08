# (PART\*) Probability concepts {.unnumbered}

# Basics of probability theory

## Definition of probability 

The basics of probability can be drawn from set theory. The realization of an experiment is often a discrete set of outcomes, for example when $S = \{H, T\}$ is the set of all possible outcomes of tossing a coin, where $H$ is heads and $T$ is tails. When an experiment is performed multiple times, we can collect a set of occurrences such as $T = \{ H, T, T, H\}$ for a coin tossing experiment where a coin was tossed 4 times. The "frequency of occurrence" can be thought of as a probability.

<!-- insert stuff about sigma algebras later -->

There are a lot of complex ways to define probabilities. Casella and Berger [@casella2002] defines probability in terms of the fundamental axioms, which involve complex mathematical objects such as $\sigma$-algebras. However, we can define the probability that event $A$ occurs as the simple $P(A)$ which is a function of belief about the chances of $A$ occurring.

$$
P(A) = \frac{\text{# of times A can occur}}{\text{# of possible outcomes in the sample space}}
$$

It is mandatory that $P(A) > 0$ and that the sum of probabilities of all possible outcomes must be 1.

From the Axioms we can build up many properties of the probability function. Some important properties include:

-   Probability of unions $P(A \cup B) = P(A) + P(B) + P(A \cap B)$

-   Probability of subsets $\text{If } A \subset B \text{ then } P(A) \leq P(B)$

-   Bonferroni's Inequality $P(A \cap B) \geq P(A) + P(B) - 1$

## Counting 

Since probabilities are all about finding all possible outcomes, counting is very relevant to this process. Most often, counting methods are used in order to construct probability assignments on finite sample spaces. A lot of the counting methods can be employed boils down to two features of the question at hand: a) Do we care about the order of the objects being counted?; b) Are we replacing objects back into the "bag" once we counted them (replacement). As such, we can construct the following 2x2 table.

Here, $n$ is the number of objects, $r$ is the size of the sample. For example if we're drawing 3 marbles out of a bag of 10, then $n = 10$ and $r = 3$

+------------+-----------------------+--------------------------------+
|            | Without replacement   | With replacement               |
+============+=======================+================================+
| Ordered    | $$                    | $$                             |
|            | \frac{n!}{(n - r)!}   | n^r                            |
|            | $$                    | $$                             |
+------------+-----------------------+--------------------------------+
| Unordered  | $$                    | $$                             |
|            | n \choose r           |  n + r - 1  \choose r          |
|            | $$                    | $$                             |
+------------+-----------------------+--------------------------------+
