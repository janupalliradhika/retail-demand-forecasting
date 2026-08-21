CREATE TABLE dim_date (
    date DATE PRIMARY KEY,
    day VARCHAR(20),
    month INT,
    year INT,
    week INT,
    event_name VARCHAR(255),
    event_type VARCHAR(100),
    snap_CA BOOLEAN,
    snap_TX BOOLEAN,
    snap_WI BOOLEAN
);



CREATE TABLE dim_product (
    item_id VARCHAR(50) PRIMARY KEY,
    dept_id VARCHAR(50),
    cat_id VARCHAR(50)
);


CREATE TABLE dim_store (
    store_id VARCHAR(50) PRIMARY KEY,
    state_id VARCHAR(50)
);



CREATE TABLE fact_sales (
    date DATE,
    item_id VARCHAR(50),
    store_id VARCHAR(50),
    sales INT,
    PRIMARY KEY (date, item_id, store_id)
);




CREATE TABLE fact_prices (
    store_id VARCHAR(50),
    item_id VARCHAR(50),
    wm_yr_wk INT,
    sell_price DECIMAL(10,2),
    PRIMARY KEY (store_id, item_id, wm_yr_wk)
);


-- Dimension Tables:
-- dim_date: Calendar and event information
-- dim_product: Product hierarchy
-- dim_store: Store and state information

-- Fact Tables:
-- fact_sales: Historical daily sales
-- fact_prices: Historical selling prices