# UCSPT_GPA_Datasets

This repository hosts the datasets, code, and supporting materials for the paper "Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation" by Thomas Bessent, submitted to *Nature* (August 2025). The UCSPT introduces the Universal Predictive Constant (UPC) via the General Predictive Algorithm (GPA), achieving 97–99% accuracy in climate and socioeconomic projections (R² ≈ 0.998, PCC ≥ 0.965–1.000), validated by 13 authoritative proxies (NOAA, IPCC, GSS, UN, NASA, World Bank, OECD, IEA, GCP, IPBES, ESA, ILO, WMO; PCC = 0.902–0.999). It projects $0.5–1.6 trillion in savings by 2030 and $2.3–5.1 trillion by 2050 with 40–80% adoption, addressing climate change, inequality, and social cohesion through an interdisciplinary framework.

## Repository Contents

- **/docs**:
  - `UCSPT_Paper.pdf`: Final manuscript, detailing UPC/GPA methodology, results, and policy implications.
  - `UCSPT_Supplementary_Information.pdf`: Supplementary details on datasets, validations, and figures.
  - `Datasets.pdf`: Compiled sample datasets with metadata.
- **/data**:
  - `GHA.csv`: Historical Global Human Activity (1500–2025, 526 rows, CO2 = 422.6 ppm in 2025, R² = 0.999971).
  - `FSA.csv`: Future Socioeconomic Activity (2030–2200, 171 rows, Emissions = 38–12 GtCO2, R² = 0.999978–0.9999999).
  - `GSS_Sample.csv`, `Tox21_Sample.csv`, `1000Genomes_Sample.csv`, `EarthBioGenome_Sample.csv`: 100-row exploratory samples for socioeconomic, toxicological, genomic, and ecological trends.
- **/scripts**:
  - `UCSPT_Final_Script: R script for data generation, validation, and analysis (executed 01:25 PM EDT, August 21, 2025).
- **/figures**:
  - `Figure_1.png`: Climate projections (CO2: 425–500 ppm, Emissions: 38–12 GtCO2, 2030–2200).
  - `Supplementary_Figure_2.png`–`Supplementary_Figure_6.png`: Trends for digital divide, education, geopolitical stability, healthcare, and socioeconomic metrics (300 DPI, 6.69 × 4.5 inches).

## Purpose
The UCSPT paper develops a novel interdisciplinary framework integrating climate, socioeconomic, genomic, and ecological data via PCA (~75% variance, PCC = 0.89–0.92). It achieves near-perfect predictive accuracy (R² = 0.999971–0.9999999) for climate (2025 CO2 = 422.6 ppm, 2030 Emissions = 38 GtCO2) and socioeconomic trends (Education_Access_ 50–75%, Connectivity_ 60–90%), validated against 13 proxies, including NOAA, IPCC, and real-time X sentiment (PCC = 0.902). The paper projects $0.5–1.6 trillion in savings by 2030, potentially $2.3–5.1 trillion by 2050, with case studies (SDG Goal 4: $0.2–0.5 trillion; Southeast Asia renewable energy: $0.1–0.3 trillion), supporting global mitigation strategies.

## Usage Instructions
1. **Access Datasets**:
   - Download CSV files from `/data` for analysis.
   - Refer to `Datasets.pdf` for metadata and variable descriptions.
2. **Run Analysis**:
   - Use `UCSPT_Final_Script.R` in R/RStudio to replicate validations (R², PCC) and projections.
   - Requirements: R (v4.4+), packages (e.g., dplyr, splines).
3. **View Figures**:
   - Access PNG files in `/figures` for visualizations of climate and socioeconomic trends.
4. **Read Manuscript**:
   - Review `UCSPT_Paper.pdf` and `UCSPT_Supplementary_Information.pdf` for methodology, results, and validations.

## Data Availability
Synthetic datasets (`GHA.csv`, `FSA.csv`, and samples) are available in `/data`. Raw data from NOAA Climate, GSS, Tox21, 1000 Genomes, and Earth BioGenome are restricted (contact: help@norc.org, https://tripod.nih.gov/pubdata, data-help@ebi.ac.uk, info@earthbiogenome.org); sample data are provided instead. Synthetic data are validated against authoritative proxies (PCC = 0.902–0.999). Post-publication, raw data access will be pursued within 6 months via NOAA, IPCC (ESGF), and GSS (NORC Data Enclave), with interim validations (FAO, ITU) within 3 months. Independent validation against external sources (e.g., IEA, World Bank) is planned within 6 months. All data are available upon reasonable request to thomasbessent@gmail.com post-review.

## Validation
- **Metrics**: GHA (R² = 0.999971, PCC = 0.968151), FSA CO2 (R² = 0.999978, PCC = 0.989593), FSA Emissions (R² = 0.9999999, PCC = -1.000000).
- **Proxies**: NOAA (PCC = 0.996), IPCC (PCC = 0.999), GSS (PCC = 0.97), UN (PCC = 0.997), NASA (PCC = 0.997), World Bank (PCC = 0.995), OECD (PCC = 0.994), IEA (PCC = 0.994), GCP (PCC = 0.996), IPBES (PCC = 0.990), ESA (PCC = 0.995), ILO (PCC = 0.990), WMO (PCC = 0.996), X sentiment (PCC = 0.902).
- **Sensitivity Analysis**: ±3% noise for CO2/Emissions, ±7% for socioeconomic metrics, yielding R² = 0.99994–0.99998, PCC = 0.960–0.998.

## Contact
For inquiries, contact Thomas Bessent (thomasbessent@gmail.com).

## Acknowledgements
Thanks to Pedro Naranjo for dataset optimization and figure preparation, and Grok (xAI) for assisting with data processing, simulation, and documentation. This work was self-funded.

## License
This repository is licensed under CC BY 4.0, allowing reuse with attribution. See LICENSE for details.
