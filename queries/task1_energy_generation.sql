-- Task 1A: Calculate the total net energy production by region
-- Net energy = Net Generation - Demand
SELECT
    SUM(net_generation - demand) as total_energy,
    region
FROM intel.energy_data
GROUP BY 
    region
ORDER BY
    total_energy DESC;

-- Task 1B: Calculate the total renewable energy produced by region
-- Renewable sources include hydropower, wind, and solar
SELECT
    SUM(hydropower_and_pumped_storage + wind + solar) as total_renewable_energy, 
    region
FROM intel.energy_data
GROUP BY
    region
ORDER BY
    total_renewable_energy DESC;

-- Task 1C: Calculate the percentage of total energy generated from renewable sources
-- (Renewable energy / Total net generation) * 100
SELECT
    (SUM(hydropower_and_pumped_storage + wind + solar) / SUM(net_generation)) * 100 as percent_renewable_energy,
    region
FROM intel.energy_data
GROUP BY
    region
ORDER BY
    percent_renewable_energy DESC;
  