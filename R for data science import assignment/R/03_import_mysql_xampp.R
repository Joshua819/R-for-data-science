library(DBI)
library(RMariaDB)

# Connect to the existing MySQL database
con <- dbConnect(
  RMariaDB::MariaDB(),
  host = "127.0.0.1",
  port = 3306,
  username = "root",
  password = "",
  dbname = "wpdbase"
)

# Check whether the connection is active
dbIsValid(con)

# Display all tables in wpdbase
tables <- dbListTables(con)

print(tables)

# Import the department table into R
dept_data <- dbReadTable(con, "department")

# Display the first six rows
head(dept_data)

# Display the dimensions
dim(dept_data)

# Open the table 
View(dept_data)

# Retrieve up to 10 records from the selected table
query_result <- dbGetQuery(
  con,
  "SELECT * FROM department LIMIT 5"
)

print(query_result)

dbDisconnect(con)
