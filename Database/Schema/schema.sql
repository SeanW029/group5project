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


-- Create table house_data_clean
CREATE TABLE house_data_clean (
    id_no bigint NOT NULL,
    close_date date NOT NULL,
    price decimal(10,2) NOT NULL,
    bedrooms int NOT NULL,
    bathrooms float NOT NULL,
    floors float NOT NULL,
    views int,
    condition int,
    grade int NOT NULL,
    yr_built int NOT NULL,
    yr_renovated int,
    home_size int NOT NULL,
    lot_size int NOT NULL,
    above_size int,
    basement_size int,
    waterfront int,
    zipcode char(5) NOT NULL,
    lat decimal(6,4),
    long decimal(6,3),
    homereno_2015 int,
    lotreno_2015 int,
    PRIMARY KEY (id_no)
);

-- Add constraint to waterfront column; limiting input to '0' or '1'
ALTER TABLE public.house_data_clean
    ADD CONSTRAINT waterfront_tf_check CHECK (waterfront = '0' OR waterfront = '1');
COMMENT ON CONSTRAINT waterfront_tf_check ON public.house_data_clean
    IS 'Inputs limited to ''0'' (not true) and ''1'' (true)';

-- Create table predictions (from machine learning model)
CREATE TABLE predictions (
    id_no bigint NOT NULL,
    prediction decimal(10,2) NOT NULL,
    actual_price decimal(10,2) NOT NULL,
    FOREIGN KEY (id_no) REFERENCES house_data_clean (id_no),
    FOREIGN KEY (actual_price) REFERENCES house_data_clean (price),
    PRIMARY KEY (id_no)
);

-- Create table condition which will have set descriptions linked to database for reference purpose
CREATE TABLE condition (
    condition int,
    description varchar,
    PRIMARY KEY (condition)
);

