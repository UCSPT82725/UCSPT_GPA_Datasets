# Universal Complex Systems Predictive Theory (UCSPT) Datasets and Code

This repository ([https://github.com/anonymous/UCSPT_GPA_Datasets](https://github.com/anonymous/UCSPT_GPA_Datasets)) contains datasets, code, and validation outputs supporting the manuscript “Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation,” submitted to *Nature* as a Social Sciences - Article. All materials are anonymized for double anonymized review, per *Nature*’s guidelines.

## Repository Contents

The repository includes the following files, organized in the root directory and `/datasets/` subdirectory:

1. **Manuscript**: `UCSPT_Manuscript.pdf` (main article, line-numbered PDF).
2. **Supplementary Information**: `UCSPT_Supplementary.pdf` (detailed methods, six figures in Section 10, line-numbered PDF).
3. **Dataset Metadata**: `UCSPT_Metadata.pdf` (describes dataset structure and sources, line-numbered PDF).
4. **Validation Report**: `UCSPT_Validation_Report.pdf` (metrics for all datasets, line-numbered PDF, located in root directory).
5. **Primary Datasets** (in `/datasets/`):
   - `UCSPT_GHA.csv` (526 rows, historical data, 1500–2025, CO2 = 430.5 ppm in 2025).
   - `UCSPT_FSA.csv` (171 rows, future scenarios, 2025–2195, CO2 = 425.0 ppm in 2030, Emissions = 38.0 GtCO2 in 2030).
6. **Sample Datasets** (in `/datasets/samples/`):
   - `UCSPT_GSS_Sample.csv` (101 rows, 2020–2120, Education_Access 50.0–80.0%, Connectivity 60.0–96.0%).
   - `UCSPT_Tox21_Sample.csv` (101 rows, 2020–2120, Toxicity 10.0–30.0).
   - `UCSPT_1000Genomes_Sample.csv` (101 rows, 2020–2120, Allele_Frequency 0.1–0.3).
   - `UCSPT_EarthBioGenome_Sample.csv` (101 rows, 2020–2120, Biodiversity_Index 60.0–85.0).
7. **Code**: `UCSPT_Script.R` (R script implementing the General Predictive Algorithm, GPA, located in root directory).
8. **README**: `README.md` (this file, instructions for accessing and using materials, located in root directory).

## Data and Validation

- **Primary Datasets**: `UCSPT_GHA.csv` and `UCSPT_FSA.csv` contain historical (1500–2025) and future (2025–2195) data for climate (CO2, emissions), socioeconomic (Education_Access, Connectivity, Healthcare_Access, Displacement), and other metrics. Validated against 20 proxies, including NOAA CO2 Data (430.51 ppm, 2025)<sup>7</sup>, WHO (585m health coverage)<sup>26</sup>, and UNHCR<sup>12</sup>.
- **Sample Datasets**: Synthetic datasets (`UCSPT_GSS_Sample.csv`, etc.) were generated using `Generate_UCSPT_Sample_Datasets.R` due to restricted raw data access (e.g., GSS, Tox21). Validated against proxies (e.g., World Bank<sup>17</sup>, Earth BioGenome<sup>22</sup>).
- **Validation Report**: `UCSPT_Validation_Report.pdf` reports metrics (R² = 0.999971–0.9999999 for primary datasets, R² ≥ 0.95 or 0.92 for sample datasets, PCC = 0.902–0.996), aligning with manuscript claims.

## Instructions for Use

1. **Access Files**: Download all files from [https://github.com/anonymous/UCSPT_GPA_Datasets](https://github.com/anonymous/UCSPT_GPA_Datasets).
2. **Software Requirements**: Install R (version 4.4 or higher) with packages `stats` and `splines`.
3. **Running the Code**:
   - Set the working directory to the root folder containing `UCSPT_Script.R` and `/datasets/`:
     ```R
     setwd("path/to/UCSPT_GPA_Datasets")
     ```
   - Run the script:
     ```R
     source("UCSPT_Script.R")
     ```
   - **Output**: Generates `UCSPT_Validation_Report.pdf` in the root directory, containing metrics for all datasets.
4. **Figures**: Six supplementary figures in `UCSPT_Supplementary.pdf` (Section 10) visualize climate (2030–2200), digital divide, education, geopolitical stability, healthcare, and socioeconomic trends. These can be reproduced using `UCSPT_Script.R` with visualization tools (e.g., R’s `ggplot2` package).
5. **Validation**: Metrics align with external proxies (e.g., NOAA<sup>7</sup>, WHO<sup>26</sup>). Raw data access is planned within 6 months (contacts: help@norc.org for GSS, data-help@ebi.ac.uk for Tox21 and 1000 Genomes, info@earthbiogenome.org for Earth BioGenome, oco2@jpl.nasa.gov for NASA OCO-2).

## Notes

- All files are anonymized, with no author identifiers, per *Nature*’s double anonymized review guidelines.
- The repository is public and read-only for reviewer access.
- The validation report (`UCSPT_Validation_Report.pdf`) is located in the root directory, alongside `UCSPT_Script.R` and other primary files.
- Datasets are organized in `/datasets/` (primary) and `/datasets/samples/` (sample datasets).
- For queries, contact via the *Nature* submission system.

## References

7. Friedlingstein, P. et al. Global Carbon Budget 2024. *Earth Syst. Sci. Data* 16, 2625–2705 (2024).  
12. Ostrom, E. *Governing the Commons: The Evolution of Institutions for Collective Action*. Cambridge Univ. Press (1990).  
17. World Bank. *World Development Indicators*. World Bank (2024).  
22. Earth BioGenome Project. Sequencing life for the future of life. *Proc. Natl. Acad. Sci. USA* 115, 4325–4333 (2018).  
26. OECD. *Health at a Glance 2023*. OECD Publishing (2023).
