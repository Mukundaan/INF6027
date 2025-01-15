# INF6027
# Spotify Tracks Analysis

## Project Overview
This repository contains the Spotify Tracks analysis project, conducted as part of the INF6027 module. The aim was to explore how valence, energy, and danceability influence the popularity of tracks and to examine their relationships across popularity levels.

## Research Questions
1. How do valence, energy, and danceability differ across popularity levels in Spotify tracks?
2. What is the relationship between energy and danceability across popularity groups, and how does this vary for highly popular songs compared to less popular ones?

## Methodology

### Data Preprocessing
- **Duplicate Removal**: Identified and removed duplicate records to ensure data consistency.
- **Categorization**: Divided tracks into Highly Popular, Moderately Popular, and Less Popular groups based on popularity percentiles.
- **Missing Data Handling**: Addressed missing values to preserve dataset quality.
- **Outliers Retention**: Retained outliers to capture meaningful insights about extreme cases.

### Analysis
- **Descriptive Statistics**: Calculated measures of central tendency and variability for valence, energy, and danceability.
- **ANOVA Tests**: Conducted tests to identify significant differences in audio features across popularity groups.
- **Post-Hoc Analysis**: Used Tukey tests to analyze pairwise differences between popularity levels.
- **Correlation Analysis**: Examined the relationship between energy and danceability across groups.

## Key Findings
- **Energy and Danceability**: Higher values were observed in Highly Popular tracks compared to others.
- **Valence Trends**: Showed minimal variation across popularity groups.
- **Feature Correlation**: Strong positive correlation between energy and danceability, particularly in Highly Popular tracks.
- **Popularity Indicators**: Energy and danceability were identified as critical factors influencing popularity.

## Project Structure
- `data`: Contains the cleaned dataset used for analysis.
- `scripts`: Includes R scripts for:
  - `data_cleaning.R`: Preprocessing and cleaning the dataset.
  - `EDA.R`: Performing exploratory data analysis.
  - `visualizations.R`: Generating plots for the research questions.
- `results`: Stores generated visualizations and summary tables.

### Prerequisites
- Install R and RStudio.
- Install the following R packages: `dplyr`, `stringr`, `ggplot2`, and `tidyr`.

### Instructions to run the code

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/Mukundaan/YourRepository.git
    cd YourRepository
    ```

2. **Install Required R Packages:** Open RStudio and run:
    ```R
    install.packages(c("dplyr", "stringr", "ggplot2", "tidyr"))
    ```

3. **Run the Preprocessing Script:**
    - Open `data_cleaning.R` in RStudio.
    - Run the script to clean the dataset and save the output as `Cleaned_Dataset.csv`.

4. **Run the Analysis and Visualization Scripts:**
    - Open `EDA.R` in RStudio and run it to calculate summary statistics and perform ANOVA tests.
    - Open `visualizations.R` to generate boxplots, scatter plots, and the correlation heatmap.

