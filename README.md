# R Bug: Incorrect NA Handling in Mean Calculation

This repository demonstrates a common bug in R related to handling NA (Not Available) values when calculating the mean of a vector. The function `calculate_mean.R` incorrectly removes NA values using `na.rm = TRUE` in the `sum()` function.  This can lead to inaccurate results when it's important to preserve NA values for further analysis. The corrected version `bugSolution.R` addresses this issue.

## Bug Description:
The `calculate_mean` function in `bug.R` fails to correctly handle NA values. It should either return NA if any NA values exist or provide a parameter to determine how to handle them.  The current implementation removes NA values which leads to a biased mean calculation.

## Solution:
The `bugSolution.R` file provides a corrected version of the `calculate_mean` function.  The corrected version adds a parameter `handleNA` to determine how to handle NA values. This parameter allows the function to return NA if any NA values are present,  or remove NA values if desired.

This example highlights the importance of careful consideration when handling missing data in R.