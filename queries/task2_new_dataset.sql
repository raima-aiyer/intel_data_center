-- Task 2A: Calculate the renewable energy generated for each record
-- Renewable sources include hydropower, wind, and solar
SELECT
    date,
    region,
    (hydropower_and_pumped_storage + wind + solar) AS energy_generated_mw
FROM intel.energy_data;

-- Task 2B: Calculate the renewable energy generated and label the energy type
-- Add a static column 'renewable_energy' to classify the records
SELECT
    date,
    region,
    (hydropower_and_pumped_storage + wind + solar) AS energy_generated_mw,
    'renewable_energy' AS energy_type
FROM intel.energy_data;

-- Task 2C: Calculate the fossil fuel energy generated for each record
-- Fossil fuel sources include petroleum, coal, natural gas, nuclear, and other fuel sources
SELECT
    date,
    region,
    (all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw
FROM intel.energy_data;

-- Task 2D: Calculate the fossil fuel energy generated and label the energy type
-- Add a static column 'fossil fuel' to classify the records
SELECT
    date,
    region,
    (all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw,
    'fossil fuel' AS energy_type
FROM intel.energy_data;

-- Task 2E: Combine renewable and fossil fuel datasets into a single result
-- Use UNION ALL to stack the two queries together
SELECT
    date,
    region,
    (hydropower_and_pumped_storage + wind + solar) AS energy_generated_mw,
    'renewable_energy' AS energy_type
FROM intel.energy_data

UNION ALL

SELECT
    date,
    region,
    (all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw,
    'fossil fuel' AS energy_type
FROM intel.energy_data;