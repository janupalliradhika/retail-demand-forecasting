# M5 Retail Demand Forecasting - Warehouse Schema

## Dimension Tables

### dim_date
- date
- day
- month
- year
- week
- event_name
- event_type
- snap_CA
- snap_TX
- snap_WI

### dim_product
- item_id
- dept_id
- cat_id

### dim_store
- store_id
- state_id

## Fact Tables

### fact_sales
- date
- item_id
- store_id
- sales

### fact_prices
- store_id
- item_id
- wm_yr_wk
- sell_price

## Relationships

dim_date
    |
    | date
    ↓
fact_sales

dim_product
    |
    | item_id
    ↓
fact_sales

dim_store
    |
    | store_id
    ↓
fact_sales

dim_product
    |
    | item_id
    ↓
fact_prices

dim_store
    |
    | store_id
    ↓
fact_prices


## Table Types

### Dimension Tables
Dimension tables contain descriptive information used to understand the sales data.

- dim_date
- dim_product
- dim_store

### Fact Tables
Fact tables contain measurable business information.

- fact_sales
- fact_prices


## ETL Flow

Raw M5 CSV Files
        ↓
Data Validation
        ↓
Data Cleaning
        ↓
Data Transformation
        ↓
Dimension Tables
        +
Fact Tables
        ↓
Data Warehouse
        ↓
Forecasting & Dashboard