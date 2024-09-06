CREATE TABLE public.car_fuel
(
    cars_id INT PRIMARY KEY,
    year FLOAT,
    manufacturer TEXT,
    model TEXT,
    descriptions TEXT,
    euro_standard TEXT,
    tax_band TEXT,
    transmission TEXT,
    transmission_type TEXT,
    engine_capacity FLOAT,
    fuel_type TEXT,
    urban_metric FLOAT,
    extra_urban_metric FLOAT,
    combined_metric FLOAT,
    urban_imperial FLOAT,
    extra_urban_imperial FLOAT,
    combined_imperial FLOAT,
    noise_level FLOAT,
    co2 FLOAT,
    thc_emissions FLOAT,
    co_emissions FLOAT,
    nox_emissions FLOAT,
    thc_nox_emissions FLOAT,
    particulates_emissions FLOAT,
    fuel_cost_12000_miles FLOAT,
    fuel_cost_6000_miles FLOAT
);

-- Set ownership of the table to the postgres user
ALTER TABLE public.car_fuel OWNER to postgres;