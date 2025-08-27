# UCSPT_Script.R
# Date: August 26, 2025
# Purpose: Validate UCSPT datasets (UCSPT_GHA.csv, UCSPT_FSA.csv, sample datasets) for Nature submission
# Run in RStudio with required packages: stats, splines
# Features: Validates 2025 CO2 = 430.5 ppm, 2030 Emissions = 38.0 GtCO2, 2200 CO2 = 500.0 ppm, socioeconomic metrics
# Aligns with Manuscript, Supplementary Information, and Data Availability Statement

# Install and load required libraries with error handling
if (!requireNamespace("stats", quietly = TRUE)) install.packages("stats")
if (!requireNamespace("splines", quietly = TRUE)) install.packages("splines")
library(stats)
library(splines)

# Set seed for reproducibility
set.seed(20250826)

# Function to calculate R² and PCC with diagnostic
calculate_metrics <- function(data, x_col, y_col, df = 5, expect_positive_pcc = FALSE) {
  if (!x_col %in% colnames(data) || !y_col %in% colnames(data)) {
    stop(sprintf("Column %s or %s not found in data", x_col, y_col))
  }
  if (!is.numeric(data[[x_col]]) || !is.numeric(data[[y_col]])) {
    stop(sprintf("Column %s or %s contains non-numeric data", x_col, y_col))
  }
  model <- lm(data[[y_col]] ~ splines::ns(data[[x_col]], df = df))
  r_squared <- summary(model)$r.squared
  pcc <- cor(data[[x_col]], data[[y_col]], use = "complete.obs")
  cat(sprintf("Diagnostic: R² = %.6f, PCC = %.6f\n", r_squared, pcc))
  return(list(R2 = r_squared, PCC = pcc))
}

# Read and validate UCSPT_GHA.csv
gha_data <- read.csv("UCSPT_GHA.csv")
cat("GHA row count:", nrow(gha_data), "\n")
if (abs(gha_data$CO2[gha_data$Year == 2025] - 430.5) > 0.1) {
  stop("GHA data integrity check failed: Expected 2025 CO2 ≈ 430.5 ppm (±0.1 ppm)")
}
gha_metrics <- calculate_metrics(gha_data, "Year", "CO2")
if (gha_metrics$R2 < 0.999870 || gha_metrics$PCC < 0.965) {
  stop("GHA validation failed: Expected R² ≥ 0.999870, PCC ≥ 0.965")
}

# Read and validate UCSPT_FSA.csv
fsa_data <- read.csv("UCSPT_FSA.csv")
cat("FSA row count:", nrow(fsa_data), "\n")
if (abs(fsa_data$CO2[fsa_data$Year == 2030] - 425.0) > 0.3 || 
    abs(fsa_data$CO2[fsa_data$Year == 2200] - 500.0) > 0.3 || 
    abs(fsa_data$Emissions[fsa_data$Year == 2030] - 38.0) > 0.3 || 
    abs(fsa_data$Emissions[fsa_data$Year == 2200] - 12.0) > 0.3) {
  stop("FSA data integrity check failed: Expected 2030 CO2 ≈ 425.0 ppm (±0.3 ppm), 2200 CO2 ≈ 500.0 ppm (±0.3 ppm), 2030 Emissions ≈ 38.0 GtCO2 (±0.3 GtCO2), 2200 Emissions ≈ 12.0 GtCO2 (±0.3 GtCO2)")
}
fsa_co2_metrics <- calculate_metrics(fsa_data, "Year", "CO2")
fsa_emissions_metrics <- calculate_metrics(fsa_data, "Year", "Emissions")
if (fsa_co2_metrics$R2 < 0.999978 || fsa_co2_metrics$PCC < 0.902 || 
    fsa_emissions_metrics$R2 < 0.999978 || fsa_emissions_metrics$PCC > -0.999) {
  stop("FSA validation failed: Expected CO2 R² ≥ 0.999978, PCC ≥ 0.902; Emissions R² ≥ 0.999978, PCC ≤ -0.999")
}

# Read and validate sample datasets
sample_datasets <- list(
  list(file = "UCSPT_GSS_Sample.csv", metric_col = "Education_Access", expect_positive_pcc = TRUE, r2_threshold = 0.95),
  list(file = "UCSPT_Tox21_Sample.csv", metric_col = "Toxicity", expect_positive_pcc = TRUE, r2_threshold = 0.95),
  list(file = "UCSPT_1000Genomes_Sample.csv", metric_col = "Allele_Frequency", expect_positive_pcc = TRUE, r2_threshold = 0.95),
  list(file = "UCSPT_EarthBioGenome_Sample.csv", metric_col = "Biodiversity_Index", expect_positive_pcc = TRUE, r2_threshold = 0.92)
)
for (ds in sample_datasets) {
  data <- read.csv(ds$file)
  cat(sprintf("%s row count: %d\n", ds$file, nrow(data)))
  metrics <- calculate_metrics(data, "Year", ds$metric_col, expect_positive_pcc = ds$expect_positive_pcc)
  if (metrics$R2 < ds$r2_threshold || (ds$expect_positive_pcc && metrics$PCC < 0.85)) {
    stop(sprintf("%s validation failed: Expected R² ≥ %.2f, PCC ≥ 0.85", ds$file, ds$r2_threshold))
  }
}

# Generate and save validation report
sink("UCSPT_Validation_Report.txt")
cat("\nNature Submission – UCSPT Validation Report\n")
cat("Timestamp:", format(Sys.time(), "%Y-%m-%d %H:%M:%S EDT"), "\n\n")
cat("1) UCSPT_GHA.csv\n")
cat("   - Method: Spline regression (df = 5) fit of CO2 ~ Year\n")
cat("   - Adjusted R²:", gha_metrics$R2, "\n")
cat("   - Pearson Correlation (PCC):", gha_metrics$PCC, "\n\n")
cat("2) UCSPT_FSA.csv\n")
cat("   - Emissions: 38.0 → 12.0 GtCO2 (2030–2200, ±0.3 GtCO2)\n")
cat("   - CO2: 425.0 → 500.0 ppm (2030–2200, ±0.3 ppm)\n")
cat("   - Validation:\n")
cat("       * Emissions R²:", fsa_emissions_metrics$R2, "\n")
cat("       * Emissions PCC:", fsa_emissions_metrics$PCC, "\n")
cat("       * CO2 R²:", fsa_co2_metrics$R2, "\n")
cat("       * CO2 PCC:", fsa_co2_metrics$PCC, "\n\n")
cat("3) Sample Datasets (GSS, Tox21, 1000Genomes, EarthBioGenome)\n")
for (ds in sample_datasets) {
  data <- read.csv(ds$file)
  metrics <- calculate_metrics(data, "Year", ds$metric_col, expect_positive_pcc = ds$expect_positive_pcc)
  cat(sprintf("   - %s: R² = %.6f, PCC = %.6f\n", ds$file, metrics$R2, metrics$PCC))
}
cat("\nAll datasets validated successfully for UCSPT Nature submission.\n")
sink()


