# Generate and print each row
for (i in 1:12) {
  
  # Print the row label (multiplicand)
  cat(sprintf("%2d |", i))  # Left-align the row label
  
  # Generate and print the multiplication results
  for (j in 1:12) {
    cat(sprintf("%4d", i * j))  # Format and align the results
  }
  
  cat("\n")  # Newline after each row
}

# R: Uses sprintf() to format strings, 
# where %d is used for integers and the width is 
# specified using the width modifier (e.g., %4d).
