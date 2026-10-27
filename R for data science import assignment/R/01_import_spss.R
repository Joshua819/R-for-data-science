library(haven)
# Locate the sample SPSS file
file_path <- system.file(
  "examples", "iris.sav",
  package = "haven"
)

# Import the SPSS dataset into R
iris_data <- read_sav(file_path)

# Display the sample rows
head(iris_data)
print(head(iris_data, 10))

# Display the structure of the dataset
str(iris_data)

# Display the number of rows and columns
dim(iris_data)
# Display summary  
summary(iris_data)

