# (PART\*) Probability concepts {.unnumbered}

# Basics of probability theory

## Definition of probability

The basics of probability can be drawn from set theory. The realization of an experiment is often a discrete set of outcomes, for example when you toss a coin the two possible outcomes per coin toss is either heads or tails. As such probability is all about operations on the set of outcomes and quantify such outcomes as numbers. Let's define the first theorem of probability, the *sample space*:

::: {.definition name="Definition of a sample space"}
The set $S$ of all possible outcomes of a particular experiment is called the *sample space* of the experiment
:::

For the example of coin tossing, $S = \{H, T\}$ where $H$ is heads and $T$ is tails. When an experiment is performed multiple times, we can collect a set of occurrences such as $T = \{ H, T, T, H\}$ for a coin tossing experiment where a coin was tossed 4 times. The "frequency of occurrence" can be thought of as a probability.

<!-- insert stuff about sigma algebras later -->

We can define the probability that event $A$ occurs as the simple $P(A)$ which is a function of belief about the chances of $A$ occurring. Usually the simplest way to think of probabilities is in terms of frequency of occurrences.

$$
P(A) = \frac{\text{# of times A can occur}}{\text{# of possible (unique) outcomes in the sample space}}
$$

For coin tossing example, the probability of heads for a single coin toss is $P(A = H) = \frac{1}{2}$ where there are only two possible options (H or T) and only 1 time H can occur a single coin toss.

Even though we can develop our own intuition about probabilities, at the end of the day $P(A)$ is still a function. This function has the following axiomatic properties [@casella2002]

1.  $0 < P(A) < 1$
2.  $\sum_i^S P(s_i) = 1$ for all $s_i \in S$ where $S$ is the set of all possible outcomes (as above)
3.  All outcomes in $S$ must be disjoint.

## Counting

Since probabilities are all about finding all possible outcomes, counting is very relevant to this process. Most often, counting methods are used in order to construct probability assignments on finite sample spaces. A lot of the counting methods can be employed boils down to two features of the question at hand: a) Do we care about the order of the objects being counted?; b) Are we replacing objects back into the "bag" once we counted them (replacement). As such, we can construct the following 2x2 table.

Here, $n$ is the number of objects, $r$ is the size of the sample. For example if we're drawing 3 marbles out of a bag of 10, then $n = 10$ and $r = 3$

+------------+-----------------------+-------------------------------+
|            | Without replacement   | With replacement              |
+============+=======================+===============================+
| Ordered    | $$                    | $$                            |
|            | \frac{n!}{(n - r)!}   | n^r                           |
|            | $$                    | $$                            |
+------------+-----------------------+-------------------------------+
| Unordered  | $$                    | $$                            |
|            | n \choose r           |  n + r - 1  \choose r         |
|            | $$                    | $$                            |
+------------+-----------------------+-------------------------------+

## Conditional probabilities

The properties of probabilities we've defined prior only refer to one or two events that is defined with respect to the sample space $S$, that is to say the total number of possible unique outcomes is still the denominator of our probability calculation equation.

However, there are instances where we have to events that might not be disjointed, where we want to know the *conditional probability*, or the probability that an event occurred given the result of another event, e.g. $P(A \text{ given } B)$. Intuitively speaking, the frequency of occurrence formula that we have is:\
$$
P(A | B) = \frac{\text{# of events where A and B both occur}}{\text{# of events where B occur}}
$$ Essentially we've changed the denominator from all possible unique events in the sample space and only consider those where B has occurred because that is the *context* in which we're operating with a conditional probability.

As such, we have: $$
P(A | B) = \frac{P(A \cap B)}{P(B)}
$$

## Properties of probabilities

After using counting methods to figure out the frequency of outcomes and constructing probabilities of events within a set of all possible events, we can then think of how to combine our knowledge of set theory to construct new probabilities without having to count everything again.

### Addition rules

For disjoint sets of events $A$ and $B$, then we can define the probability of $A$ or $B$ occurring, e.g. $P(A \cup B)$ as $P(A) + P(B)$. However, if $A$ and $B$ are not disjoint (a.k.a $A$ and $B$ can occur at the same time), then we have the generalized additional formula as $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

### Multiplication rules

For disjoint sets of events $A$ and $B$ we can define the probability of $A$ and $B$ occuring, e.g. $P(A \cap B)$ as $P(A)P(B)$. If $A$ and $B$ are not disjoint and therefore not independent, then the generalized formula is $P(A \cap B) = P(A|B)P(B)$

## Bayes rule

Bayes rule provide a very convenient way to calculate the "switching" of the conditional probabilities:

::: {.theorem name="Bayes rule"}
For events $A$ and $B$, we can calculate the conditional probability $P(A | B)$ as:\
$$
P(A|B) = \frac{P(B|A)P(A)}{P(B)}
$$ 

Where $P(A)$ is the prior probability of event A occurring and $P(B)$ is the marginal distribution of events where $B$ occurred (similar to our frequency of occurrence definition for conditional probabilities above)
:::


