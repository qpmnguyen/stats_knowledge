# Random variables and expectations

Random variables are summary variables that allows us to think about probability without having to deal with the original structure. For example, if we're polling individuals and answers are either "Yes" or "No", and the sample space is a string of "Yes" and "No" that is as long as the number of questions and the number of people. However, we can summarize this as the total number of "Yes" that is a natural number and therefore easier to work with.

A random variable therefore is a function that maps from the sample space $S$ into the real numbers.

## Distribution functions

With all distributions, we associate with every random variable $X$ a cumulative distribution function

::: {.definition name="Definition of cumulative distribution function"}
The cumulative distribution function or cdf of a random variable $X$ denoted by $F_X(x)$ is defined by

$$
F_X(x) = P_X(X\leq x)
$$
:::

We can define whether the random variable $X$ is a continuous based on the characteristics of the CDF. If the CDF is continuous, then $X$ is continuous, if the CDF is a step function, then $X$ is discrete.

::: {.definition name="Identically distributed variables"}
The following two statements are equivalent

1.  The random variables $X$ and $Y$ are identically distributed
2.  $F_X(x) = F_Y(x)$ for every $x$
:::

In addition to the cumulative distribution function is the probability density function or probability mass function. These are called "point probabilities"

::: {.definition name="Probability mass function"}
The probability mass function of a discrete random variable $X$ is given by

$$
f_X(x) = P(X = x) 
$$

The probability density function of a continuous random variable $X$ is the function that satisfies

$$
F_X(x) = \int_{-\infty}^{x} f_X(t)$$
:::
