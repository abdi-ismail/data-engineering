### Guide to Statistical Tests

This guide provides an overview of various statistical tests and explains when to use them. The tests are grouped into categories based on the type of data, assumptions about the underlying population, and the nature of the hypothesis being tested.

---

### 1. **Normality Tests**
These tests are used to determine whether a dataset follows a normal distribution. Normality is a key assumption in many statistical analyses, particularly parametric tests.

- **Shapiro-Wilk Test**  
  - **When to use**: When you want to test the normality of a small to moderate-sized sample (n < 50). It's one of the most powerful tests for normality.
  - **Hypothesis**:
    - Null: The data is normally distributed.
    - Alternative: The data is not normally distributed.

- **Kolmogorov-Smirnov Test**  
  - **When to use**: When you have larger sample sizes or want to compare the sample distribution to a known distribution, like the normal distribution. It’s less sensitive for smaller samples.
  - **Hypothesis**:
    - Null: The sample comes from the specified distribution (e.g., normal).
    - Alternative: The sample does not come from the specified distribution.

- **Anderson-Darling Test**  
  - **When to use**: This is another test for normality and is particularly sensitive in the tails of the distribution. It’s useful when the data shows deviations from normality in the extremes (outliers).
  - **Hypothesis**:
    - Null: The data is normally distributed.
    - Alternative: The data is not normally distributed.

---

### 2. **Parametric Tests**
These tests assume that the data comes from a population that follows a normal distribution. They are used for comparing means or variances between groups.

- **t-test (Student's t-test)**  
  - **When to use**: To compare the means of two groups when the data is normally distributed. It can be used for independent samples (two separate groups) or paired samples (same group measured twice).
  - **Hypothesis**:
    - Null: The means of the two groups are equal.
    - Alternative: The means of the two groups are not equal.

- **ANOVA (Analysis of Variance)**  
  - **When to use**: When comparing the means of three or more groups. It assumes that the data is normally distributed and the variances are equal across groups.
  - **Hypothesis**:
    - Null: All group means are equal.
    - Alternative: At least one group mean is different.

---

### 3. **Nonparametric Tests**
These tests do not assume a specific distribution and are used when data doesn’t meet the assumptions of parametric tests (e.g., normality or equal variances).

- **Mann-Whitney U Test**  
  - **When to use**: As a nonparametric alternative to the independent t-test when comparing the ranks of two independent groups. It’s used when data is not normally distributed.
  - **Hypothesis**:
    - Null: The distributions of both groups are equal.
    - Alternative: The distributions of the two groups are different.

- **Kruskal-Wallis Test**  
  - **When to use**: As a nonparametric alternative to one-way ANOVA for comparing three or more independent groups. It compares the ranks of data rather than the means.
  - **Hypothesis**:
    - Null: All groups come from the same distribution.
    - Alternative: At least one group comes from a different distribution.

---

### 4. **Correlation Tests**
Correlation tests measure the strength and direction of the relationship between two variables.

- **Pearson Correlation**  
  - **When to use**: When both variables are continuous and normally distributed. This test measures the linear relationship between two variables.
  - **Hypothesis**:
    - Null: There is no linear relationship between the variables.
    - Alternative: There is a linear relationship between the variables.

- **Spearman Rank Correlation**  
  - **When to use**: When one or both variables are ordinal or not normally distributed. It measures the monotonic relationship (whether the variables move in the same direction) between two variables.
  - **Hypothesis**:
    - Null: There is no monotonic relationship between the variables.
    - Alternative: There is a monotonic relationship between the variables.

- **Kendall’s Tau**  
  - **When to use**: Similar to Spearman's, but it is more robust to ties in the data. It measures the strength and direction of the association between two variables, and it's useful when the data has many tied ranks.
  - **Hypothesis**:
    - Null: There is no association between the variables.
    - Alternative: There is an association between the variables.

---

### Summary of When to Use Each Test:

| **Test**                     | **Use When**                                                                            |
|------------------------------|----------------------------------------------------------------------------------------|
| **Shapiro-Wilk Test**         | Small sample sizes (n < 50) for normality check.                                        |
| **Kolmogorov-Smirnov Test**   | Large sample sizes or comparison to a known distribution.                              |
| **Anderson-Darling Test**     | Sensitive to deviations in the tails of the distribution (outliers).                   |
| **t-test**                    | Comparing the means of two groups with normally distributed data.                      |
| **ANOVA**                     | Comparing the means of three or more groups with normally distributed data.            |
| **Mann-Whitney U Test**       | Nonparametric alternative to the independent t-test (for non-normal data).             |
| **Kruskal-Wallis Test**      | Nonparametric alternative to one-way ANOVA (for non-normal data and more than two groups).|
| **Pearson Correlation**       | Measuring linear relationship between two continuous, normally distributed variables.   |
| **Spearman Rank Correlation** | Measuring monotonic relationship between two variables (ordinal or non-normal data).   |
| **Kendall's Tau**             | Measuring association between two variables, especially when ties are present.         |

---

By understanding the nature of your data (normal or non-normal, continuous or ordinal) and the type of comparison you want to make (mean, distribution, or relationship), you can select the appropriate statistical test to ensure accurate and reliable results.