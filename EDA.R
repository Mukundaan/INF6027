# Load all the necessary libraries
library(dplyr)

# Load the cleaned dataset
data <- read.csv("path/to/cleaned_spotify_dataset.csv")

# To group the tracks by popularity categories
data <- data %>%
  mutate(popularity_group = case_when(
    popularity > quantile(popularity, 0.75) ~ "Highly Popular",
    popularity > quantile(popularity, 0.25) & popularity <= quantile(popularity, 0.75) ~ "Moderately Popular",
    TRUE ~ "Less Popular"
  ))

# Generate the Summary Statistics
summary_table <- data %>%
  group_by(popularity_group) %>%
  summarise(
    mean_valence = mean(valence, na.rm = TRUE),
    mean_energy = mean(energy, na.rm = TRUE),
    mean_danceability = mean(danceability, na.rm = TRUE)
  )

# Print the summary table
print(summary_table)
