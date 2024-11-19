hidden_number <- sample(1:100, 1)

while (TRUE) {

  tryCatch({
    # Convert input to numeric inside tryCatch
    user_guess <- as.numeric(readline(prompt = "Guess a number from 1 to 100: "))
      # Check for NA in case of non-numeric input
      if (is.na(user_guess)) {
      print("Invalid input. Please enter a number.")
    } else if (user_guess > 100 | user_guess < 1) {
      print("Your guess should be in the 1-100 range")
    } else if (user_guess > hidden_number) {
      print("Your guess is too high")
    } else if (user_guess < hidden_number) {
      print("Your guess is too low")
    } else {
      print("Your guess is on point!")
      break
    }

  }, error = function(e) {
    print("Invalid input. Please enter a number.")
  })

}