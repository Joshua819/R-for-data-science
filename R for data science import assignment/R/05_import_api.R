# Import data from an API using R

library(httr2)
library(jsonlite)

# Define the API URL
api_url <- "https://jsonplaceholder.typicode.com/posts"

# Send a request to the API
response <- request(api_url) |>
  req_perform()

# Check the HTTP response status
resp_status(response)

# Convert the JSON response into an R data frame
api_data <- resp_body_json(
  response,
  simplifyVector = TRUE
)

# Display the first six records
head(api_data)

# Display the structure of the data
str(api_data)

# Display the number of rows and columns
dim(api_data)

# Open the imported data in RStudio
View(api_data)