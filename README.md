# Silent Failure in R Subsetting with Character Vector
This repository demonstrates a subtle bug in R's data frame subsetting using character vectors.  When attempting to subset columns by name, if a specified column doesn't exist, the operation fails silently, potentially leading to unexpected results and hard-to-debug errors. The provided code examples showcase this issue and its solution.

## Bug Description
The bug occurs when using a character vector to specify columns for subsetting a data frame. If any element of the character vector is not a valid column name, the operation proceeds without error, but the resulting subset might be smaller than expected or contain unexpected `NA` values. R doesn't throw any error or warning to indicate that some columns are missing.

## How to Reproduce
Run the code in `bug.R` to reproduce the issue.

## Solution
The `bugSolution.R` file demonstrates how to use error handling to catch such cases. Instead of silently failing, the code now checks for missing columns before subsetting and displays an informative message or stops execution, preventing potential unintended consequences.