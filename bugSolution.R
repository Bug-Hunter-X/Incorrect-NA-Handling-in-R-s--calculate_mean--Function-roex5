```R
# This function correctly calculates the mean, handling NA values based on user input
calculate_mean <- function(x, handleNA = c("returnNA", "removeNA")) {
  handleNA <- match.arg(handleNA) 
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  if (handleNA == "returnNA" && any(is.na(x))) {
    return(NA) # Return NA if any NA values are present
  }
  sum_x <- sum(x, na.rm = (handleNA == "removeNA")) 
  mean_x <- sum_x / length(x)
  return(mean_x)
}

# Example Usage
my_vector <- c(1, 2, 3, NA, 5)
result <- calculate_mean(my_vector, handleNA = "returnNA") # Returns NA
print(result)
result2 <- calculate_mean(my_vector, handleNA = "removeNA") # Removes NAs, calculates mean
print(result2)
```