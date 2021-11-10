-- Create table house_data_raw
CREATE TABLE house_data_raw (
    id bigint NOT NULL,
    date date NOT NULL,
    price decimal(10,2) NOT NULL,
    bedrooms int NOT NULL,
    bathrooms int NOT NULL,
    sqft_living int NOT NULL,
    sqft_lot int NOT NULL,
    floors float NOT NULL,
    waterfront int,
    view int NOT NULL,
    condition int NOT NULL,
    grade int NOT NULL,
    sqft_above int NOT NULL,
    sqft_basement int NOT NULL,
    yr_built int NOT NULL,
    yr_renovated int NOT NULL,
    zipcode char(5) NOT NULL,
    lat decimal(6,4),
    long decimal(6,3),
    sqft_living15 int NOT NULL,
    sqft_lot15 int NOT NULL,
    PRIMARY KEY (id)
);





-- Create table house_data 
CREATE TABLE house_data (
    id_no bigint NOT NULL,
    closing_date date NOT NULL,
    price decimal(10,2) NOT NULL,
    bedrooms int NOT NULL,
    bathrooms float NOT NULL,
    floors float NOT NULL,
    views int,
    condition int,
    grade int NOT NULL,
    year_blt int NOT NULL,
    yr_renovated int,
    PRIMARY KEY (id_no)
);

-- Create table house_dimensions_sqft 
CREATE TABLE house_dimensions_sqft (
    id_no bigint NOT NULL,
    home_size int NOT NULL,
    lot_size int NOT NULL,
    above_size int,
    basement_size int,
    FOREIGN KEY (id_no) REFERENCES house_data (id_no),
    PRIMARY KEY (id_no)
);

-- Create table house_location
CREATE TABLE house_location (
    id_no bigint NOT NULL,
    waterfront int,
    zipcode char(5) NOT NULL,
    lat decimal(6,4),
    long decimal(6,3),
    homereno_2015 int,
    lotreno_2015 int,
    FOREIGN KEY (id_no) REFERENCES house_data (id_no),
    FOREIGN KEY (id_no) REFERENCES house_dimensions_sqft (id_no),
    PRIMARY KEY (id_no)
);

-- Add constraint to waterfront column; limiting input to '0' or '1'
ALTER TABLE public.house_location.waterfront
    ADD CONSTRAINT waterfront_tf_check CHECK (waterfront = '0' OR waterfront = '1');