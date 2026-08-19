# M5 Dataset ETL Mapping

## Raw Data

calendar.csv
sales_train_validation.csv
sell_prices.csv

        ↓

## Data Validation

Check:
- Missing values
- Duplicate records
- Data types
- Date format
- Sales values
- Price values

        ↓

## Data Transformation

- Format dates
- Connect sales with calendar information
- Connect sales with price information
- Prepare analytical data

        ↓

## Analytical Dataset

Store + Item + Date + Sales + Price +
Department + Category + State


## Key Relationships

### Sales ↔ Calendar

Key: `d`

### Sales ↔ Prices

Keys: `item_id`, `store_id`, `wm_yr_wk`

### Sales Identifiers

Sales contains:

- `item_id`
- `dept_id`
- `cat_id`
- `store_id`
- `state_id`

### Price Information

Prices contains:

- `item_id`
- `store_id`
- `wm_yr_wk`
- `sell_price`

### Calendar Information

Calendar contains:

- `date`
- `wm_yr_wk`
- `d`

**Important:** These columns should be verified against the actual M5 files before final ETL implementation.