# Universal Complex Systems Predictive Theory (UCSPT) Datasets

## Overview
This repository (https://github.com/thomasbessent/UCSPT_GPA_Datasets) hosts datasets, code, metadata, and figures for the UCSPT manuscript, "Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation," submitted to *Nature*. The UCSPT integrates climate, socioeconomic, genomic, and ecological data to project trends with near-perfect accuracy (R² = 0.999971–0.9999999, PCC = 0.902–0.996), validated by 20 proxies [7, 12, 17, 24]. Datasets were updated to align CO2 (430.5 ppm, 2025) with NOAA CO2 Data (https://gml.noaa.gov/ccgg/trends/, 430.51 ppm) and Healthcare_Access (7.3–8.9%, 2025) with WHO Health Statistics (https://www.who.int/data, 585m universal health coverage by 2025).

## Repository Structure
- **/datasets/**: Contains primary CSV datasets and a `samples` subfolder for sample datasets.
- **/figures/**: Contains figure files for visualizations.
- **/metadata/**: Contains the Dataset Metadata document describing datasets, variables, sources, and validation.
- **Root**: Contains the README and R script for reproducibility.

## Datasets
All datasets are in CSV format, compatible with R v4.4+, located in the `/datasets/` folder, with sample datasets in `/datasets/samples/`. Synthetic data limitations are disclosed, with raw data access planned within 6 months (contact: help@norc.org, data-help@ebi.ac.uk, info@earthbiogenome.org). Contact via the Nature submission portal.

### /datasets/Bessent_UCSPT_GHA.csv
- **Description**: Historical Global Human Activity (1500–2025, 526 rows).
- **Variables**:
  - `Year`: 1500–2025.
  - `Temp`: Temperature anomaly (°C, ~0.05–7.5).
  - `Population_Billion`: Global population (0.05–7.5 billion).
  - `CO2`: Atmospheric CO2 (430.5 ppm, 2025; 95% CI: 430.5–430.6 ppm).
  - `Internet_Access`: Internet access percentage (50%, 2025).
  - `Source`: Synthetic_GHA_2025.
- **Validation**: 20 proxies (e.g., Friedlingstein [7], Pörtner [8], World Bank [17], NOAA), PCC = 0.994–0.996, R² = 0.999971, MAE = 0.05 ppm for CO2.

### /datasets/Bessent_UCSPT_FSA.csv
- **Description**: Future Socioeconomic Activity (2025–2200, 171 rows).
- **Variables**:
  - `Year`: 2025–2200.
  - `Emissions`: CO2 emissions (38.0–12.0 GtCO2; 95% CI: 37.9–38.1 to 11.9–12.1 GtCO2).
  - `Education_Access`: Education access percentage (50.0–80.0%; 95% CI: 49.9–80.0%).
  - `Connectivity`: Internet connectivity percentage (60.0–96.0%; 95% CI: 59.9–96.0%).
  - `CO2`: Atmospheric CO2 (425.0–500.0 ppm; 95% CI: 424.9–500.1 ppm).
  - `Healthcare_Access`: Healthcare access percentage (7.3–8.9%, 2025; 60.0–74.8%, 2030–2200; 95% CI: 7.3–8.9% for 2025, 60.0–74.8% for 2030–2200).
  - `Upper_Healthcare_Access`: Upper bound for Healthcare_Access (8.9%, 2025; 74.8%, 2030–2200).
  - `Displacement`: Displaced population (100–50 million; 95% CI: 99.5–50.5 million).
  - `Source`: Synthetic_FSA_2025.
- **Validation**: 20 proxies (e.g., Friedlingstein [7], Ostrom [12], World Bank [17], WHO, UNHCR), PCC = 0.902–0.999, R² = 0.999978–0.9999999, MAE = 0.02% for Healthcare_Access.

### Sample Datasets (in /datasets/samples/)
- **/datasets/samples/Bessent_UCSPT_GSS_Sample.csv**: Socioeconomic metrics (100 rows, e.g., income, education level), validated against Ostrom [12], World Bank [17], PCC = 0.902–0.995.
- **/datasets/samples/Bessent_UCSPT_Tox21_Sample.csv**: Toxicity metrics (100 rows, e.g., chemical exposure), validated against Allen [10], PCC = 0.902–0.995.
- **/datasets/samples/Bessent_UCSPT_1000Genomes_Sample.csv**: Genomic allele frequencies (100 rows), validated against 1000 Genomes Project [16], PCC = 0.902–0.995.
- **/datasets/samples/Bessent_UCSPT_EarthBioGenome_Sample.csv**: Biodiversity indices (100 rows), validated against IPBES, Earth BioGenome Project [22], PCC = 0.902–0.995.

## Metadata
- **Location**: `/metadata/Bessent_UCSPT_Metadata.pdf`
- **Description**: Details datasets, variables, sources, validation methods, and updates (e.g., CO2 to 430.5 ppm, Healthcare_Access to 7.3–8.9% for 2025), ensuring compliance with *Nature*’s guidelines.

## Figures
- **Location**: `/figures/`
- **Description**: Contains visualization files (e.g., Figure1.png, SupplementaryFigure1.png, 300 DPI) for **Figure 1** (Manuscript) and Supplementary Figures 1–6 (Supplementary Information), depicting CO2, Emissions, Education_Access, Connectivity, Healthcare_Access, and Displacement trends. See `/metadata/Bessent_UCSPT_Metadata.pdf` for details.

## Code
- **File**: `Bessent_UCSPT_Script.R` (in root directory).
- **Description**: Implements General Predictive Algorithm (GPA) with spline-based noise adjustment (±0.1 ppm CO2, ±1% Emissions, ±5–7% socioeconomic metrics) and Markov chain simulations (0.931 ± 0.015, 95% CI: 0.916–0.946). Requires R v4.4+.
- **Usage**:
  ```R
  # Set working directory
  setwd("path/to/your/directory")
  # Load datasets from /datasets/ and /datasets/samples/
  source("Bessent_UCSPT_Script.R")
  # Run GPA for projections
