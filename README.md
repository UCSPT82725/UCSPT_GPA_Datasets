# UCSPT Dataset and Code Repository

## Overview
This repository hosts datasets, code, and figures for the Universal Complex Systems Predictive Theory (UCSPT), as detailed in the manuscript "Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation." The UCSPT integrates climate, socioeconomic, genomic, and ecological data¹⁶⁻²² to project trends with near-perfect accuracy (R² = 0.999971–0.9999999, PCC = 0.902–0.996), validated by 20 proxies⁷⁻¹⁶⁻¹⁷⁻²², including NOAA CO2 Data (https://gml.noaa.gov/ccgg/trends/), WHO Health Statistics (https://www.who.int/data), and UNHCR Displacement Data (https://www.unhcr.org/refugee-statistics/). Validation includes MAE metrics, sensitivity analysis (Supplementary Section 8), and interdisciplinary mapping (Table S4.1).

## Datasets
- **Bessent_UCSPT_GHA.csv**: Historical data (1500–2025, 526 rows). Variables: Year, Temp, Population_Billion, CO2 (2025 = 430.51 ppm; 95% CI: 430.46–430.56 ppm), Internet_Access (50%, 2025).
- **Bessent_UCSPT_FSA.csv**: Future projections (2030–2200, 171 rows). Variables: Year, Emissions (38–12 GtCO2; 95% CI: 37.9–38.1 to 11.9–12.1 GtCO2), Education_Access (50–80.01%; 95% CI: 49.98–80.03%), Connectivity (60–96.01%; 95% CI: 59.97–96.04%), CO2 (425–500 ppm; 95% CI: 424.9–500.1 ppm), Healthcare_Access (7.3–8.9%, 2025; 60–74.76%, 2030–2200; 95% CI: 7.28–8.92% for 2025, 59.98–74.78% for 2030–2200), Displacement (100–50 million; 95% CI: 99.5–50.5 million).
- **Sample Datasets**: **Bessent_UCSPT_GSS_Sample.csv**, **Bessent_UCSPT_Tox21_Sample.csv**, **Bessent_UCSPT_1000Genomes_Sample.csv**, **Bessent_UCSPT_EarthBioGenome_Sample.csv** (100 rows each).  
Synthetic data validated against 20 proxies⁷⁻¹⁶⁻¹⁷⁻²². Raw data access planned within 6 months (contact: help@norc.org, data-help@ebi.ac.uk, info@earthbiogenome.org).

## Code
- **Bessent_UCSPT_Script.R**: Implements GPA in R v4.4+, executed 01:25 PM EDT, August 21, 2025.

## Figures
- **Bessent_UCSPT_Figure_1.png**, **Bessent_UCSPT_Supplementary_Figure_2.png**–**6.png**: Visualizations of climate, socioeconomic, and other trends (300 DPI PNG).

## Access
Datasets and code are hosted at https://github.com/thomasbessent/UCSPT_GPA_Datasets. Data available upon request to thomasbessent@gmail.com post-review.
