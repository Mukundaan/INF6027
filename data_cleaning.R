# Load the necessary libraries
library(dplyr)

# Load the original data
data <- read.csv("path/to/raw_spotify_dataset.csv")
# Step 1:
# Check for the duplicate rows
duplicate_count <- data %>%
  duplicated() %>%
  sum()

# Print the number of duplicate rows
cat("Number of duplicate rows before cleaning:", duplicate_count, "\\n")

# Remove the duplicate rows
data <- data %>%
  distinct()

# Verify if all the duplicates are removed
new_duplicate_count <- data %>%
  duplicated() %>%
  sum()

# Print the number of duplicate rows after cleaning
cat("Number of duplicate rows after cleaning:", new_duplicate_count, "\\n")

# Step 2:
# Check the count of missing values for each column
missing_values <- colSums(is.na(data))
cat("Missing values per column:\\n")
print(missing_values)

# Remove rows with missing values
data <- data %>%
  na.omit()

# Verify if missing values are removed
missing_values_after <- colSums(is.na(data))
cat("Missing values after cleaning:\\n")
print(missing_values_after)
# Step 3:
# Save the cleaned dataset
write.csv(data, "path/to/cleaned_spotify_dataset.csv", row.names = FALSE)
summary(cleaned_spotify_dataset)
