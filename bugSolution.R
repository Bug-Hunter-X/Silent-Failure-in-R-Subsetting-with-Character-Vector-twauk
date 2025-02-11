```R
# This improved code checks if all columns exist before subsetting, providing error handling
df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols <- c("a", "d", "b")

if (!all(cols %in% names(df))) {
  stop("Error: Not all specified columns exist in the data frame.")
}

subset <- df[, cols]
```