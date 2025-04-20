# Intel Data Center Project

## Introduction

Intel, a global leader in semiconductor manufacturing, is planning to build a new data center. Energy availability, cost, and sustainability are key factors in selecting the optimal location. This project was co-designed with Intel’s Sustainability Team to analyze energy production and consumption data across U.S. regions.  
Using SQL queries and Tableau visualizations, the project identifies regions best suited for the new data center based on surplus energy generation and renewable energy usage.

---

## Project Overview

- **Goal**: Recommend the best region and state for Intel’s new data center based on energy surplus and renewable energy production.
- **Skills Used**: SQL querying, data aggregation, data visualization with Tableau.
- **Datasets Queried**:
  - `intel.energy_data`
  - `intel.power_plants`
  - `intel.energy_by_plant`

---

## Tasks and Deliverables

### Task 1: Energy Generation Analysis
- Calculated total net energy production by region.
- Identified top regions by total renewable energy production and by renewable energy percentage.
- Key finding:  
  - **Mid-Atlantic** had the highest net energy surplus.
  - **Northwest** had the highest percentage of renewable energy production.

### Task 2: Generating a New Dataset
- Created a dataset distinguishing between renewable and fossil fuel energy production.
- Prepared data for further visualization in Tableau.

### Task 3: Power Plant Aggregation
- Joined power plant and energy production data.
- Aggregated the number of renewable energy plants by region.
- Analyzed power plants using "Solar Photovoltaic" technology.

### Task 4: Visualization in Tableau
- Created bar and line charts in Tableau to visualize:
  - Net production by region
  - Renewable energy percentage by region
  - Weekly energy trends by source (renewable vs fossil fuel)
  - Total energy production by state and energy type

**Tableau Link** (if available):  
*(You can insert your published Tableau link here if you want)*

### Task 5: Recommendation Summary
- **Mid-Atlantic Region (State: Pennsylvania)** is recommended based on highest overall energy surplus.
- **Northwest Region (State: Washington)** is recommended if prioritizing renewable energy usage.

---

## Final Recommendation

- If the priority is **maximum energy availability at lowest risk**, **Mid-Atlantic / Pennsylvania** is the best location.
- If the priority is **sustainability and renewable energy leadership**, **Northwest / Washington** is the best choice.

---

## Technologies Used

- SQL
- Tableau
- Data Analysis
- Energy Market Data Interpretation

---

## Notes

This project was completed as part of the ASU Global Career Accelerator (GCA) program in collaboration with Intel's Sustainability Team.  
All SQL queries, analysis, and visualizations were independently created as part of the project requirements.
