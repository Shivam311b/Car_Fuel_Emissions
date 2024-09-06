COPY car_fuel
FROM 'C:\Users\shiva\Desktop\Car_Fuel_Emissions\csv files\car_fuel.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
