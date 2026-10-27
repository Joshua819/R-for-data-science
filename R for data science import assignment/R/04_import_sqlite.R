# Load the required packages
library(DBI)
library(RSQLite)

# Create a SQLite database file
con <- dbConnect(
  SQLite(),
  "banking_database.sqlite"
)

# Create sample customer data
customers <- data.frame(
  customer_id = c(1, 2, 3, 4),
  name = c("Alice", "Bob", "Claudine", "David"),
  age = c(25, 30, 28, 35),
  balance = c(1000, 1500, 20000, 1200)
)

# Write the data into a database table
dbWriteTable(
  con,
  "customers",
  customers,
  overwrite = TRUE
)

# Retrieve all records from the database
imported_data <- dbReadTable(con, "customers")

# Display the imported data
print(imported_data)

# Query customers whose balance is greater than 10000
query_result <- dbGetQuery(
  con,
  "SELECT name, balance
   FROM customers
   WHERE balance > 10000"
)

# Display the query result
print(query_result)

# Disconnect from the database
dbDisconnect(con)
