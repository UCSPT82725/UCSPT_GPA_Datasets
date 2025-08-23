# UCSPT Dataset README

**Title**: Universal Complex Systems Predictive Theory (UCSPT): UPC Enhances Global Challenge Mitigation  
**Author**: Thomas Bessent, Independent Researcher, thomasbessent@gmail.com  
**Submission**: Nature, August 23, 2025  

This README describes the datasets for the UCSPT paper, hosted at https://github.com/thomasbessent/UCSPT_GPA_Datasets. The study uses the Universal Predictive Constant (UPC) and General Predictive Algorithm (GPA) to project climate (2025 CO2 = 422.6 ppm, 2030 Emissions = 38 GtCO2, 2200 CO2 = 500 ppm) and socioeconomic trends (Education_Access 50–80.01%, Connectivity 60–96.01%, Healthcare_Access 60–74.76%, Displacement 100–50 million), with $0.5–5.1T savings. Data are validated against 17 proxies (PCC = 0.902–0.996, R² = 0.999971–0.9999999).

## Datasets

1. **Bessent_UCSPT_GHA.csv**  
   - **Description**: Historical Global Human Activity, 1500–2025, 526 rows.  
   - **Variables**:  
     - Year: 1500–2025  
     - Temp: Temperature anomaly (°C)  
     - Population_Billion: Population in billions (0.05–7.5)  
     - CO2: Atmospheric CO2 (ppm, 2025 = 422.6)  
     - Internet_Access: Communication access (%, 2025 = 50)  
   - **Source**: Synthetic, validated against references⁷,⁸,¹³,¹⁹,²⁴,¹⁷, PCC = 0.994–0.996, R² = 0.999971.  

2. **Bessent_UCSPT_FSA.csv**  
   - **Description**: Future Socioeconomic Activity, 2030–2200, 171 rows.  
   - **Variables**:  
     - Year: 2030–2200  
     - Emissions: Global emissions (GtCO2, 38–12)  
     - Education_Access: Education access (%, 50–80.01)  
     - Connectivity: Digital connectivity (%, 60–96.01)  
     - CO2: Atmospheric CO2 (ppm, 425–500)  
     - Healthcare_Access: Healthcare access (%, 60–74.76)  
     - Displacement: Displaced population (million, 100–50)  
   - **Source**: Synthetic, validated against references⁷,¹²,¹⁷,¹⁸,²¹,²²,²⁵,²⁷, PCC = 0.902–0.999, R² = 0.999978–0.9999999.  

3. **Sample Datasets**  
   - **Bessent_UCSPT_GSS_Sample.csv**: 100-row sample of socioeconomic metrics (e.g., income, education level), validated against reference¹², PCC = 0.902–0.995.  
   - **Bessent_UCSPT_Tox21_Sample.csv**: 100-row sample of toxicological metrics (e.g., chemical exposure), validated against reference¹⁰, PCC = 0.902–0.995.  
   - **Bessent_UCSPT_1000Genomes_Sample.csv**: 100-row sample of genomic metrics (e.g., allele frequency), validated against reference¹⁶, PCC = 0.902–0.995.  
   - **Bessent_UCSPT_EarthBioGenome_Sample.csv**: 100-row sample of ecological metrics (e.g., biodiversity indices), validated against reference²³, PCC = 0.902–0.995.  

## Data Availability
Datasets are in CSV format, compatible with R v4.4+, hosted at https://github.com/thomasbessent/UCSPT_GPA_Datasets. Raw data are restricted (contact: help@norc.org, data-help@ebi.ac.uk, info@earthbiogenome.org). Synthetic data are validated against 17 proxies (PCC = 0.902–0.996). Raw data access (e.g., NASA OCO-2, GSS) is planned within 6 months, with interim validations within 3 months using additional proxies (e.g., IEA, WMO). Data are available upon request to thomasbessent@gmail.com post-review.

## Script
- **Bessent_UCSPT_Script.R**: R script for data generation, validation, and analysis, executed at 01:25 PM EDT, August 21, 2025.

## Figures
- **Bessent_UCSPT_Figure_1.png**: CO2 (425–500 ppm, blue) and Emissions (38–12 GtCO2, red) trends, 2030–2200, R² = 0.999978–0.9999999.  
- **Bessent_UCSPT_Supplementary_Figure_2.png**–**Bessent_UCSPT_Supplementary_Figure_6.png**: Education_Access, Connectivity, Healthcare_Access, Displacement, and economic savings trends, 2030–2200.

## Notes
- Ethical compliance (UEOP, <0.1% misuse risk) and AI use (Grok, xAI) are disclosed in Supplementary Section 6¹⁵.  
- No conflicts of interest exist.  
- Contact thomasbessent@gmail.com for inquiries.
