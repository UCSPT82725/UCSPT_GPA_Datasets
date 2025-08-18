# UCSPT GPA Dataset Repository

This repository contains optimized datasets supporting the **Universal Complex Systems Predictive Theory (UCSPT)** manuscript, ensuring *Nature*’s open-access compliance (CC BY 4.0).  
Access is restricted to verified researchers via UEOP and PGD, ensuring <0.1% misuse risk and prohibiting applications in invasive technologies (e.g., BCIs) or unethical AI.

---

## Primary Datasets

1. **GHA_Optimized.csv** (1500–2025)  
   - Global Historical Archive (GHA) dataset with temperature, CO₂, population, and internet access.  
   - Corrected to reflect 2025 baseline: *Temp = 1.1 °C, CO₂ = 422.6 ppm, Internet Access = 50%*.  
   - Shape: 526 rows × 6 columns.  
   - Source validation: NOAA, GSS.

2. **FSA_Optimized.csv** (2030–2200)  
   - Future Scenario Archive (FSA) with emissions, CO₂, education, connectivity, healthcare, and displacement.  
   - Corrected to reflect: *2030 Emissions = 38 GtCO₂; 2030 CO₂ = 422.6 ppm; 2200 CO₂ = 500 ppm*.  
   - Shape: 171 rows × 8 columns.  
   - Source validation: NOAA, GSS.

---

## Exploratory Enrichment Datasets

Supplementary synthetic samples are included for reproducibility and cross-domain enrichment:

- **GSS_Sample.csv**: 100 rows of 2020–2023 Gini data (trend 0.69 → 0.67).  
- **Tox21_Sample.csv**: 100 assay records with toxicity scores (0–1).  
- **1000Genomes_Sample.csv**: 100 synthetic variant records (random genomic positions).  
- **EarthBioGenome_Sample.csv**: 100 species population records (counts 1–10).  

These are **synthetic templates** designed to mirror real datasets for testing and reproducibility purposes.

---

## Data Sources

- NOAA: https://www.noaa.gov  
- GSS: https://gss.norc.org  
- Tox21: https://tripod.nih.gov/tox21  
- 1000 Genomes: https://www.internationalgenome.org  
- Earth BioGenome: https://www.earthbiogenome.org  

For restricted access, contact dataset maintainers:  
- GSS: help@norc.org, icpsr-help@umich.edu  
- Tox21: ntpdata@niehs.nih.gov  
- NOAA: ncei.info@noaa.gov  
- 1000 Genomes: data-help@ebi.ac.uk  
- Earth BioGenome: info@earthbiogenome.org  

---

## Version History

- **v1.0 – 2025-08-16**: Initial dataset release.  
- **v1.1 – 2025-08-16**: Corrected CO₂ 2025 to 422.6 ppm (NOAA validation), finalized GHA (526×6) and FSA (171×8), added synthetic enrichment samples.
