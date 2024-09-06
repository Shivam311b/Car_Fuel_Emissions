/*
Title: Trend Analysis of Fuel Efficiency Over Time by Engine Type
*/

SELECT 
    year, 
    fuel_type, 
    ROUND(AVG(combined_metric)) AS avg_combined_metric,
    ROUND(AVG(combined_imperial)) AS avg_combined_imperial
FROM
    car_fuel
GROUP BY 
    year, fuel_type
ORDER BY 
    year, fuel_type;

-- Python Code to Visually Represent this data on Line Chart

/*
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Complete dataset
data = [
    {"year": 2000, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 43},
    {"year": 2000, "fuel_type": "LPG", "avg_combined_metric": 12, "avg_combined_imperial": 24},
    {"year": 2000, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 32},
    {"year": 2001, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 44},
    {"year": 2001, "fuel_type": "LPG", "avg_combined_metric": 10, "avg_combined_imperial": 27},
    {"year": 2001, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 32},
    {"year": 2002, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 29},
    {"year": 2002, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 43},
    {"year": 2002, "fuel_type": "LPG", "avg_combined_metric": 12, "avg_combined_imperial": 24},
    {"year": 2002, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 32},
    {"year": 2002, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 5, "avg_combined_imperial": 55},
    {"year": 2003, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 29},
    {"year": 2003, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 44},
    {"year": 2003, "fuel_type": "LPG", "avg_combined_metric": 12, "avg_combined_imperial": 25},
    {"year": 2003, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 33},
    {"year": 2003, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 5, "avg_combined_imperial": 62},
    {"year": 2004, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 29},
    {"year": 2004, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 44},
    {"year": 2004, "fuel_type": "LPG", "avg_combined_metric": 11, "avg_combined_imperial": 26},
    {"year": 2004, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 33},
    {"year": 2004, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 5, "avg_combined_imperial": 56},
    {"year": 2005, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 29},
    {"year": 2005, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 46},
    {"year": 2005, "fuel_type": "LPG", "avg_combined_metric": 11, "avg_combined_imperial": 27},
    {"year": 2005, "fuel_type": "LPG / Petrol", "avg_combined_metric": 10, "avg_combined_imperial": 28},
    {"year": 2005, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 34},
    {"year": 2005, "fuel_type": "Petrol Electric", "avg_combined_metric": 4, "avg_combined_imperial": 70},
    {"year": 2005, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 6, "avg_combined_imperial": 50},
    {"year": 2006, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 30},
    {"year": 2006, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 45},
    {"year": 2006, "fuel_type": "LPG", "avg_combined_metric": 12, "avg_combined_imperial": 23},
    {"year": 2006, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 34},
    {"year": 2006, "fuel_type": "Petrol Electric", "avg_combined_metric": 5, "avg_combined_imperial": 61},
    {"year": 2006, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 7, "avg_combined_imperial": 45},
    {"year": 2007, "fuel_type": "CNG", "avg_combined_metric": 10, "avg_combined_imperial": 30},
    {"year": 2007, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 44},
    {"year": 2007, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 33},
    {"year": 2007, "fuel_type": "Petrol Electric", "avg_combined_metric": 5, "avg_combined_imperial": 61},
    {"year": 2007, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 7, "avg_combined_imperial": 45},
    {"year": 2008, "fuel_type": "Diesel", "avg_combined_metric": 7, "avg_combined_imperial": 45},
    {"year": 2008, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 34},
    {"year": 2008, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_combined_metric": 9, "avg_combined_imperial": 32},
    {"year": 2008, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 8, "avg_combined_imperial": 41},
    {"year": 2009, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 46},
    {"year": 2009, "fuel_type": "Petrol", "avg_combined_metric": 9, "avg_combined_imperial": 35},
    {"year": 2009, "fuel_type": "Petrol / E85", "avg_combined_metric": 9, "avg_combined_imperial": 33},
    {"year": 2010, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 47},
    {"year": 2010, "fuel_type": "Petrol", "avg_combined_metric": 8, "avg_combined_imperial": 36},
    {"year": 2010, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_combined_metric": 9, "avg_combined_imperial": 34},
    {"year": 2010, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 6, "avg_combined_imperial": 56},
    {"year": 2011, "fuel_type": "CNG", "avg_combined_metric": 9, "avg_combined_imperial": 32},
    {"year": 2011, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 51},
    {"year": 2011, "fuel_type": "Petrol", "avg_combined_metric": 8, "avg_combined_imperial": 37},
    {"year": 2011, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 6, "avg_combined_imperial": 56},
    {"year": 2012, "fuel_type": "CNG", "avg_combined_metric": 9, "avg_combined_imperial": 33},
    {"year": 2012, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 52},
    {"year": 2012, "fuel_type": "Petrol", "avg_combined_metric": 8, "avg_combined_imperial": 38},
    {"year": 2012, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 6, "avg_combined_imperial": 57},
    {"year": 2013, "fuel_type": "CNG", "avg_combined_metric": 9, "avg_combined_imperial": 34},
    {"year": 2013, "fuel_type": "Diesel", "avg_combined_metric": 6, "avg_combined_imperial": 53},
    {"year": 2013, "fuel_type": "Petrol", "avg_combined_metric": 8, "avg_combined_imperial": 39},
    {"year": 2013, "fuel_type": "Petrol Hybrid", "avg_combined_metric": 5, "avg_combined_imperial": 60}
]

# Converting data to DataFrame
df = pd.DataFrame(data)

# Extracting unique fuel types and years
fuel_types = df['fuel_type'].unique()
years = sorted(df['year'].unique())

# Setting up the figure
plt.figure(figsize=(18, 12))

# Defining line styles and markers for different fuel types
line_styles = ['-', '--', '-.', ':']
markers = ['o', 's', '^', 'D', 'v']

# Plotting average combined metric (L/100 km) with line charts
plt.subplot(2, 1, 1)
for i, fuel in enumerate(fuel_types):
    subset = df[df['fuel_type'] == fuel]
    plt.plot(subset['year'], subset['avg_combined_metric'], 
             linestyle=line_styles[i % len(line_styles)],
             marker=markers[i % len(markers)],
             label=fuel, 
             linewidth=2, 
             markersize=8)

plt.title('Average Combined Metric (L/100 km) Over Years by Fuel Type')
plt.xlabel('Year')
plt.ylabel('Fuel Efficiency (L/100 km)')
plt.grid(True)
plt.legend(title="Fuel Types", loc='upper left', bbox_to_anchor=(1, 1))
plt.xticks(years, rotation=45)

# Plotting average combined imperial (MPG) with line charts
plt.subplot(2, 1, 2)
for i, fuel in enumerate(fuel_types):
    subset = df[df['fuel_type'] == fuel]
    plt.plot(subset['year'], subset['avg_combined_imperial'], 
             linestyle=line_styles[i % len(line_styles)],
             marker=markers[i % len(markers)],
             label=fuel, 
             linewidth=2, 
             markersize=8)

plt.title('Average Combined Imperial (MPG) Over Years by Fuel Type')
plt.xlabel('Year')
plt.ylabel('Fuel Efficiency (MPG)')
plt.grid(True)
plt.legend(title="Fuel Types", loc='upper left', bbox_to_anchor=(1, 1))
plt.xticks(years, rotation=45)

plt.tight_layout(rect=[0, 0, 0.8, 1])  # Make room for the legend outside
plt.show()
*/