/*
Title: Yearly Average Noise Level Trends for Different Fuel Types
*/

SELECT 
    year,
    fuel_type,
    AVG(noise_level) AS avg_noise_level
FROM 
    car_fuel
WHERE noise_level IS NOT NULL
GROUP BY
    year, fuel_type
ORDER BY 
    year, fuel_type;

-- Python Code to Visually Represent this data on Line Chart

/*
import pandas as pd
import matplotlib.pyplot as plt

data = [
    {"year": 2000, "fuel_type": "Diesel", "avg_noise_level": 72.8376},
    {"year": 2000, "fuel_type": "LPG", "avg_noise_level": 73.25},
    {"year": 2000, "fuel_type": "Petrol", "avg_noise_level": 72.2848},
    {"year": 2001, "fuel_type": "Diesel", "avg_noise_level": 72.6961},
    {"year": 2001, "fuel_type": "LPG", "avg_noise_level": 73},
    {"year": 2001, "fuel_type": "Petrol", "avg_noise_level": 72.1875},
    {"year": 2002, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2002, "fuel_type": "Diesel", "avg_noise_level": 72.6218},
    {"year": 2002, "fuel_type": "LPG", "avg_noise_level": 73.75},
    {"year": 2002, "fuel_type": "Petrol", "avg_noise_level": 72.2055},
    {"year": 2002, "fuel_type": "Petrol Hybrid", "avg_noise_level": 71},
    {"year": 2003, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2003, "fuel_type": "Diesel", "avg_noise_level": 72.3878},
    {"year": 2003, "fuel_type": "LPG", "avg_noise_level": 73.3793},
    {"year": 2003, "fuel_type": "Petrol", "avg_noise_level": 72.2428},
    {"year": 2003, "fuel_type": "Petrol Hybrid", "avg_noise_level": 70.3},
    {"year": 2004, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2004, "fuel_type": "Diesel", "avg_noise_level": 72.4722},
    {"year": 2004, "fuel_type": "LPG", "avg_noise_level": 72.6346},
    {"year": 2004, "fuel_type": "Petrol", "avg_noise_level": 72.2539},
    {"year": 2004, "fuel_type": "Petrol Hybrid", "avg_noise_level": 71.3},
    {"year": 2005, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2005, "fuel_type": "Diesel", "avg_noise_level": 72.2055},
    {"year": 2005, "fuel_type": "LPG", "avg_noise_level": 71.6267},
    {"year": 2005, "fuel_type": "LPG / Petrol", "avg_noise_level": 72.2308},
    {"year": 2005, "fuel_type": "Petrol", "avg_noise_level": 72.3078},
    {"year": 2005, "fuel_type": "Petrol Electric", "avg_noise_level": 70.3},
    {"year": 2005, "fuel_type": "Petrol Hybrid", "avg_noise_level": 69.75},
    {"year": 2006, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2006, "fuel_type": "Diesel", "avg_noise_level": 72.3321},
    {"year": 2006, "fuel_type": "LPG", "avg_noise_level": 70.5},
    {"year": 2006, "fuel_type": "Petrol", "avg_noise_level": 72.2812},
    {"year": 2006, "fuel_type": "Petrol Electric", "avg_noise_level": 68},
    {"year": 2006, "fuel_type": "Petrol Hybrid", "avg_noise_level": 70.9667},
    {"year": 2007, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2007, "fuel_type": "Diesel", "avg_noise_level": 72.3423},
    {"year": 2007, "fuel_type": "Petrol", "avg_noise_level": 72.2154},
    {"year": 2007, "fuel_type": "Petrol Electric", "avg_noise_level": 68},
    {"year": 2007, "fuel_type": "Petrol Hybrid", "avg_noise_level": 70.9667},
    {"year": 2008, "fuel_type": "Diesel", "avg_noise_level": 72.3049},
    {"year": 2008, "fuel_type": "Petrol", "avg_noise_level": 72.3498},
    {"year": 2008, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_noise_level": 71.8444},
    {"year": 2008, "fuel_type": "Petrol Hybrid", "avg_noise_level": 71.24},
    {"year": 2009, "fuel_type": "Diesel", "avg_noise_level": 72.1534},
    {"year": 2009, "fuel_type": "Petrol", "avg_noise_level": 72.2280},
    {"year": 2009, "fuel_type": "Petrol / E85", "avg_noise_level": 72.1361},
    {"year": 2010, "fuel_type": "Diesel", "avg_noise_level": 71.9607},
    {"year": 2010, "fuel_type": "Petrol", "avg_noise_level": 72.2270},
    {"year": 2010, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_noise_level": 72.2902},
    {"year": 2010, "fuel_type": "Petrol Hybrid", "avg_noise_level": 69.115},
    {"year": 2011, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2011, "fuel_type": "Diesel", "avg_noise_level": 71.5900},
    {"year": 2011, "fuel_type": "Petrol", "avg_noise_level": 71.9667},
    {"year": 2011, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_noise_level": 72.0417},
    {"year": 2011, "fuel_type": "Petrol Hybrid", "avg_noise_level": 69.7742},
    {"year": 2012, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2012, "fuel_type": "Diesel", "avg_noise_level": 71.5541},
    {"year": 2012, "fuel_type": "Diesel Electric", "avg_noise_level": 73.5833},
    {"year": 2012, "fuel_type": "Petrol", "avg_noise_level": 71.9662},
    {"year": 2012, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_noise_level": 72.25},
    {"year": 2012, "fuel_type": "Petrol Electric", "avg_noise_level": 68},
    {"year": 2012, "fuel_type": "Petrol Hybrid", "avg_noise_level": 70.1414},
    {"year": 2013, "fuel_type": "CNG", "avg_noise_level": 74},
    {"year": 2013, "fuel_type": "Diesel", "avg_noise_level": 71.6565},
    {"year": 2013, "fuel_type": "Diesel Electric", "avg_noise_level": 72.5188},
    {"year": 2013, "fuel_type": "Electricity", "avg_noise_level": 68.1714},
    {"year": 2013, "fuel_type": "Electricity/Diesel", "avg_noise_level": 75},
    {"year": 2013, "fuel_type": "Electricity/Petrol", "avg_noise_level": 69},
    {"year": 2013, "fuel_type": "Petrol", "avg_noise_level": 72.0510},
    {"year": 2013, "fuel_type": "Petrol / E85 (Flex Fuel)", "avg_noise_level": 72.75},
    {"year": 2013, "fuel_type": "Petrol Electric", "avg_noise_level": 68.4444},
    {"year": 2013, "fuel_type": "Petrol Hybrid", "avg_noise_level": 70.0970}
]

df = pd.DataFrame(data)

pivot_df = df.pivot_table(index='year', columns='fuel_type', values='avg_noise_level', fill_value=0)

plt.figure(figsize=(18, 12))  # Increased figure size for better visibility
ax = pivot_df.plot(kind='area', stacked=True, alpha=0.7)

ax.set_xticks(pivot_df.index)
ax.set_xticklabels(pivot_df.index, rotation=45)

ax.set_xlim(left=pivot_df.index.min() - 0.5, right=pivot_df.index.max() + 0.5)
ax.xaxis.set_major_locator(plt.FixedLocator([i for i in pivot_df.index]))

ax.legend(title='Fuel Type', bbox_to_anchor=(1.05, 0.5), loc='center left')

plt.title('Average Noise Level by Fuel Type Over Years')
plt.xlabel('Year')
plt.ylabel('Average Noise Level (dB)')
plt.tight_layout()

plt.show()
*/