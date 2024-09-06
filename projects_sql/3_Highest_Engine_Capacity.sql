/*
Title: Top Car Models with Highest Engine Capacity (in cc)
*/

SELECT DISTINCT(manufacturer), model, engine_capacity, descriptions
FROM car_fuel
WHERE engine_capacity IS NOT NULL
ORDER BY engine_capacity DESC
LIMIT 10


-- Python Code to Visually Represent this data on Bar Chart

/*
import matplotlib.pyplot as plt
import pandas as pd

# Data for the top 10 car models with most engine capacity
data = [
    {"manufacturer": "Dodge", "model": "SRT10", "engine_capacity": 8285, "descriptions": "Cabriolet"},
    {"manufacturer": "Chrysler Jeep", "model": "Dodge SRT/10", "engine_capacity": 8285, "descriptions": "SRT/10"},
    {"manufacturer": "Chrysler Jeep", "model": "Chrysler Viper (99 Model Year)", "engine_capacity": 7990, "descriptions": "8.0L V10 GTS Coupé & RT/10 Roadster"},
    {"manufacturer": "Corvette", "model": "Corvette C6", "engine_capacity": 7011, "descriptions": "Z06 7.0 - V8"},
    {"manufacturer": "Corvette", "model": "Z06, Model Year 2012", "engine_capacity": 7011, "descriptions": "7.0L V8"},
    {"manufacturer": "Corvette", "model": "Corvette Z06, MY2007 2 Door Coupé", "engine_capacity": 7011, "descriptions": "7.0 V8"},
    {"manufacturer": "Corvette", "model": "Corvette Z06, 2 Door Coupé", "engine_capacity": 7011, "descriptions": "7.0 V8"},
    {"manufacturer": "Corvette", "model": "Corvette Z06, MY2008 2 Door Coupé", "engine_capacity": 7011, "descriptions": "7.0 V8"},
    {"manufacturer": "Corvette", "model": "Z06 Model Year 2012", "engine_capacity": 7011, "descriptions": "7.0L V8"},
    {"manufacturer": "Bentley Motors", "model": "Azure", "engine_capacity": 6761, "descriptions": "Azure T"}
]

# Creating a DataFrame from the data
df = pd.DataFrame(data)

# Sorting by engine capacity to get the top 10 models
top_10 = df.sort_values(by='engine_capacity', ascending=False).head(10)

# Plotting a horizontal bar chart
plt.figure(figsize=(12, 6))
plt.barh(top_10['model'], top_10['engine_capacity'], color='lightgreen')

# Adding titles and labels
plt.title('Top 10 Car Models with Most Engine Capacity')
plt.xlabel('Engine Capacity (cc)')
plt.ylabel('Car Model')
plt.gca().invert_yaxis()  # Invert y-axis to have the highest value on top

# Showing the chart
plt.show()
*/