-- Create table for House_Data
CREATE TABLE House_Data (
    id_no int NOT NULL,
    sold_date date NOT NULL,
    price decimal(10,2) NOT NULL,
    bedrooms int NOT NULL,
    bathrooms float NOT NULL,
    sqft_living int NOT NULL,
    sqft_lot int NOT NULL,
    floors float NOT NULL,
    waterfront int,
    view int,
    condition int,
    grade int,
    sqft_above int,
    sqft_basement int,
    yr_built int NOT NULL,
    yr_renovated int,
    sqft_living15 int,
    sqft_lot15 int,
    PRIMARY KEY (id_no)
);

-- Create table for House_Location
CREATE TABLE House_Location (
    id_no int NOT NULL,
    zipcode char(5) NOT NULL,
    lat decimal(6,4),
    long decimal(6,3),
    FOREIGN KEY (id_no) REFERENCES House_Data (id_no),
    PRIMARY KEY (id_no)
);