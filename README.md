# UCSPT_GPA_Datasets

This repository hosts datasets, script, and figures for the *Universal Complex Systems Predictive Theory (UCSPT)* paper, submitted to *Nature* (2025).

## Datasets
- **Bessent_UCSPT_GHA.csv**: Historical Global Human Activity (1500–2025, 526 rows, variables: Year, Temp, Population_Billion, CO2, Internet_Access).
- **Bessent_UCSPT_FSA.csv**: Future Socioeconomic Activity (2030–2200, 171 rows, variables: Year, Emissions, Education_Access, Connectivity, CO2, Healthcare_Access, Displacement).
- **Samples**:
  - **Bessent_UCSPT_GSS_Sample.csv**: General Social Survey sample (100 rows).
  - **Bessent_UCSPT_Tox21_Sample.csv**: Tox21 chemical exposure sample (100 rows).
  - **Bessent_UCSPT_1000Genomes_Sample.csv**: Genomic allele frequency sample (100 rows).
  - **Bessent_UCSPT_EarthBioGenome_Sample.csv**: Biodiversity indices sample (100 rows).

## Script
- **Bessent_UCSPT_Script.R**: R script (v4.4+, executed 01:25 PM EDT, August 21, 2025) implementing the General Predictive Algorithm (GPA) for UCSPT claims.

## Figures
- **Bessent_UCSPT_Figure_1.png**: Climate projection (CO2: 425–500 ppm, Emissions: 38–12 GtCO2, 2030–2200).
- **Bessent_UCSPT_Supplementary_Figure_2.png**–**6.png**: Socioeconomic trends (Connectivity, Education_Access, Healthcare_Access, Displacement, 300 DPI PNG).

## Documentation
- **Bessent_UCSPT_Dataset_Metadata.pdf**: Describes datasets, variables, and validation methods.
- **Supplementary Section 3**: Details UPC methodology (spline-based noise adjustment, Markov chain simulations) and future applications (genomics, biodiversity, social dynamics, energy systems, urban planning, food security, climate adaptation, economic inequality).
- **Supplementary Section 4**: Table S4.1 maps UCSPT claims to interdisciplinary domains (climate, socioeconomics, genomics, ecology).
- **Supplementary Section 5**: Case studies (e.g., $0.1–0.3T Southeast Asia renewables, $0.5T global renewables) and stakeholder engagement plan (virtual webinars, X posts, training sessions by 2026).
- **Supplementary Section 6**: Alt-texts for figures, ensuring accessibility.
- **Supplementary Section 7**: Universal Ethical Optimization Protocol (UEOP, <0.1% misuse risk) and ethical impact statement.
- **Supplementary Section 8**: Additional validation (Mean Absolute Error metrics, e.g., MAE = 0.05 ppm for CO2), aligned with *Nature*’s data availability standards.

## Access
Hosted at <https://github.com/thomasbessent/UCSPT_GPA_Datasets>. Synthetic data limitations are disclosed in the Data Availability Statement. Raw data access is planned within 6 months (contact: help@norc.org for GSS, data-help@ebi.ac.uk for 1000Genomes, info@earthbiogenome.org for Earth BioGenome).
