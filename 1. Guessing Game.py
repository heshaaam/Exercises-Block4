from random import *

hidden_number = randint(1, 100)

while True:
    
    try:
        # Prompt user for a guess each time in the loop
        user_guess = int(input("Guess a number from 1 to 100: "))
        
        # Range check and feedback
        if user_guess > 100 or user_guess < 1:
            print("Your guess should be in the 1-100 range")
        elif user_guess > hidden_number:
            print("Your guess is too high")
        elif user_guess < hidden_number:
            print("Your guess is too low")
        else:
            print("Your guess is on point!")
            break  # Correct guess exits the loop
        
    except ValueError:
        print("Invalid input. Please enter a number.")