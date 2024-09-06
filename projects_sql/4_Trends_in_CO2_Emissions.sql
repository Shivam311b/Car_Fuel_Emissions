/*
Title: Trends in CO2 Emissions Over the Years
*/

SELECT year, AVG(co2)
FROM car_fuel
GROUP BY year
ORDER BY year;


-- Python Code to Visually Represent this data on Bar Chart

/*
import matplotlib.pyplot as plt

# Data
years = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013]
averages = [216.08865860679333, 213.86033519553072, 214.5609756097561, 205.29086772830678, 
            207.12304749760918, 197.64281828073993, 200.7992596810934, 201.46379252273493, 
            196.40924293098206, 189.43166405842462, 182.10675675675677, 168.19983883964545, 
            159.2286039237987, 152.3252314814815]

# Creating bar chart
plt.figure(figsize=(10, 6))
plt.bar(years, averages, color='lightgreen')  # Using the same color palette

# Adding labels and title
plt.xlabel('Year')
plt.ylabel('Average (CO2)')
plt.title('Trends in CO2 Emission')
plt.xticks(years, rotation=45)  # Ensuring years are readable

# Adjusting layout for better fit
plt.tight_layout()

# Showing chart
plt.show()
*/