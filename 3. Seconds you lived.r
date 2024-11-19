# Function to calculate seconds lived
calculate_lived_seconds <- function(day, month, year) {
  
  # Get the current date and time
  current_time <- Sys.time()
  
  # Create a date-time object for the birth date
  birth_date <- tryCatch(
    as.POSIXct(paste(year, month, day, sep = "-"), format = "%Y-%m-%d"),
    error = function(e) NA  # Return NA if the date is invalid
  )
  
  # Check if birth_date is valid
  if (is.na(birth_date)) {
    cat("Invalid date. Please check the day, month, and year.\n")
    return(NULL)
  }
  
  # Calculate the time difference in seconds
  time_difference <- difftime(current_time, birth_date, units = "secs")
  lived_seconds <- as.numeric(time_difference)
  
  return(lived_seconds)
}

# Main function to take input and calculate seconds
day <- as.integer(readline(prompt = "Enter your birth day (DD): "))
month <- as.integer(readline(prompt = "Enter your birth month (MM): "))
year <- as.integer(readline(prompt = "Enter your birth year (YYYY): "))

# Calculate lived seconds
seconds <- calculate_lived_seconds(day, month, year)

# Output the result if the date was valid
if (!is.null(seconds)) {
  cat(sprintf("You have lived approximately %s seconds.\n", format(seconds, big.mark = ",")))
}