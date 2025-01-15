# Load all the necessary libraries
library(ggplot2)
library(ggcorrplot)
library(dplyr)

# Load the cleaned dataset
data <- read.csv("path/to/cleaned_spotify_dataset.csv")

# Create the boxplot for valence
ggplot(data, aes(x = popularity_group, y = valence, fill = popularity_group)) +
  geom_boxplot() +
  labs(
    title = "Distribution of Valence Across Popularity Groups",
    x = "Popularity Group",
    y = "Valence"
  ) +
  theme_minimal() +
  ggsave("path/to/valence_boxplot.png")

# Create the boxplot for Danceability 
ggplot(data, aes(x = popularity_group, y = danceability, fill = popularity_group)) +
  geom_boxplot() +
  labs(
    title = "Distribution of Danceability Across Popularity Groups",
    x = "Popularity Group",
    y = "Danceability"
  ) +
  theme_minimal() +
  ggsave("path/to/danceability_boxplot.png")

# Create the boxplot for Energy
ggplot(data, aes(x = popularity_group, y = energy, fill = popularity_group)) +
  geom_boxplot() +
  labs(
    title = "Distribution of Energy Across Popularity Groups",
    x = "Popularity Group",
    y = "Energy"
  ) +
  theme_minimal() +
  ggsave("path/to/energy_boxplot.png")

# Create the Correlation Plot among the the three
cor_matrix <- cor(data[, c("valence", "energy", "danceability")])
ggcorrplot(
  cor_matrix,
  method = "circle",
  type = "lower",
  lab = TRUE,
  lab_size = 4,
  title = "Correlation Plot of Audio Features",
  colors = c("red", "white", "blue"),
  legend.title = "Correlation"
) +
  ggsave("path/to/correlation_plot.png")

# Scatter Plot for Energy vs Danceability
ggplot(data, aes(x = energy, y = danceability, color = popularity_group)) +
  geom_point(alpha = 0.5) +
  labs(
    title = "Danceability vs Energy by Popularity Group",
    x = "Energy",
    y = "Danceability",
    color = "Popularity Group"
  ) +
  theme_minimal() +
  ggsave("path/to/energy_danceability_scatter.png")

