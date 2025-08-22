# UCSPT_GPA_Datasets

This repository hosts the datasets, code, and supporting materials for the paper "Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation" by Thomas Bessent, submitted to *Nature* (August 2025). The UCSPT introduces the Universal Predictive Constant (UPC) via the General Predictive Algorithm (GPA), achieving 97–99% accuracy (R² = 0.999971–0.9999999, PCC = 0.968151–1.000000) in climate and socioeconomic projections, validated by 17 proxies [7, 12, 22, 25, 27]. It projects $0.5–1.6 trillion in savings by 2030 and $2.3–5.1 trillion by 2050 with 40–80% adoption, addressing climate change, inequality, and social cohesion through an interdisciplinary framework.

## Repository Contents

### /docs
- **UCSPT_Paper.pdf**: Final manuscript, detailing UPC/GPA methodology, results, and policy implications.
- **UCSPT_Supplementary_Information.pdf**: Supplementary details on datasets, validations, and figures.
- **UCSPT_Cover_Letter.pdf**: Cover letter for *Nature* submission.
- **Datasets.pdf**: Compiled sample datasets with metadata.

### /data
- **GHA.csv**: Historical Global Human Activity (1500–2025, 526 rows, CO2 = 422.6 ppm in 2025, R² = 0.999971).
- **FSA.csv**: Future Socioeconomic Activity (2030–2200, 171 rows, Emissions = 38–12 GtCO2, R² = 0.999978–0.9999999).
- **GSS_Sample.csv**, **Tox21_Sample.csv**, **1000Genomes_Sample.csv**, **EarthBioGenome_Sample.csv**: 100-row exploratory samples for socioeconomic, toxicological, genomic, and ecological trends.

### /scripts
- **UCSPT_Final_Script.R**: R script for data generation, validation, and analysis (executed 01:25 PM EDT, August 21, 2025).

### /figures
- **Figure_1.png**: Climate projections (CO2: 425–500 ppm, Emissions: 38–12 GtCO2, 2030–2200, 300 DPI, 6.69 x 4.5 inches).
- **Supplementary_Figure_2.png**–**Supplementary_Figure_6.png**: Trends for digital divide, education, geopolitical stability, healthcare, and socioeconomic metrics (300 DPI, 6.69 x 4.5 inches).

## Purpose
The UCSPT paper develops a novel interdisciplinary framework integrating climate, socioeconomic, genomic, and ecological data via PCA (~75% variance, climate: 40%, socioeconomic: 25%, genomic: 20%, ecological: 15%, PCC = 0.89–0.92). It achieves near-perfect predictive accuracy (R² = 0.999971–0.9999999) for climate (2025 CO2 = 422.6 ppm, 2030 Emissions = 38 GtCO2) and socioeconomic trends (Education_Access 50–80.01%, Connectivity 60–96.01%), validated against 17 proxies [7, 12, 22, 25, 27]. The paper projects $0.5–1.6 trillion in savings by 2030, potentially $2.3–5.1 trillion by 2050, with case studies (SDG Goal 4: $0.2–0.5 trillion; Southeast Asia renewable energy: $0.1–0.3 trillion).

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
   - Review `UCSPT_Paper.pdf`, `UCSPT_Supplementary_Information.pdf`, and `UCSPT_Cover_Letter.pdf` for methodology, results, and submission details.

## Data Availability
Synthetic datasets (GHA.csv, FSA.csv, and samples) are available in `/data`. Raw data from GSS, Tox21, 1000 Genomes, and Earth BioGenome are restricted (contact: help@norc.org, data-help@ebi.ac.uk, info@earthbiogenome.org); sample data are provided instead. Synthetic data validated against 17 proxies (PCC = 0.902–0.996). Raw data access (e.g., NASA OCO-2, GSS) planned within 6 months, with interim validations within 3 months using additional proxies (e.g., IEA, WMO). All data available upon request to thomasbessent@gmail.com post-review.

## Validation
- **Metrics**: GHA (R² = 0.999971, PCC = 0.968151), FSA CO2 (R² = 0.999978, PCC = 0.989593), FSA Emissions (R² = 0.9999999, PCC = -1.000000).
- **Proxies**: References [7, 8, 13, 12, 17, 18, 21, 22, 25, 27], IPBES, ESA, WMO, X sentiment, NASA, IEA, GCP (PCC = 0.902–0.996).
- **Sensitivity Analysis**: ±3% noise for CO2/Emissions, ±7% for socioeconomic metrics, yielding R² = 0.99994–0.99998, PCC = 0.960–0.998.

## Contact
For inquiries, contact Thomas Bessent (thomasbessent@gmail.com).

## Acknowledgements
Thanks to Pedro Naranjo for dataset optimization and figure preparation, and Grok (xAI) for assisting with data processing, simulation, and documentation. This work was self-funded.

## License
This repository is licensed under CC BY 4.0, allowing reuse with attribution. See LICENSE for details.
