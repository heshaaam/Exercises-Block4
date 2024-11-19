from datetime import datetime

def calculate_lived_seconds(day, month, year):
    # Get the current date and time
    current_time = datetime.now()
    
    # Create a datetime object for the birth date
    try:
        birth_date = datetime(year, month, day)
    except ValueError:
        print("Invalid date. Please check the day, month, and year.")
        return
    
    # Calculate the difference between current time and birth date
    time_difference = current_time - birth_date
    
    # Get the total number of seconds
    lived_seconds = time_difference.total_seconds()
    
    return int(lived_seconds)

# Main function to take input and calculate seconds
if __name__ == "__main__":
    # Ask for user input
    try:
        day = int(input("Enter your birth day (DD): "))
        month = int(input("Enter your birth month (MM): "))
        year = int(input("Enter your birth year (YYYY): "))
    except ValueError:
        print("Please enter valid numbers for day, month, and year.")
    else:
        # Calculate lived seconds
        seconds = calculate_lived_seconds(day, month, year)
        
        if seconds is not None:
            print(f"You have lived approximately {seconds:,} seconds.")