# Generate and print each row
for i in range(1, 13):

  # Print the row label (multiplicand)
  print(f"{i:2} |", end="")  # Left-align the row label
  
  # Generate and print the multiplication results
  for j in range(1, 13):
    print(f"{i * j:4}", end="")  # Format and align the results
  
  print()  # Newline after each row