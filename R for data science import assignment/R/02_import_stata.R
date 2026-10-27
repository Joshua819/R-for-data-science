# Load the haven package
library(haven)

# Create sample data
students <- data.frame(
  Student_ID = c(1, 2, 3, 4, 5),
  Name = c("Alice", "Bob", "Claudine", "David", "Eric"),
  Age = c(21, 23, 22, 24, 20),
  Score = c(85, 78, 92, 88, 75)
)

# Export the data to Stata format
write_dta(students, "students.dta")

# Import the Stata dataset into R
stata_data <- read_dta("students.dta")

# Display the imported data
print(stata_data)

# Display the structure
str(stata_data)

# Display the number of rows and columns
dim(stata_data)

#display summary
summary(stata_data)

#view data 
View(stata_data)
