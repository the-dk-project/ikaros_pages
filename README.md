# ikaros_pages
2023-10-17
This project was created specifically for Ikaros application technical examination.

Instructions:
1. Run dbt seeds to load data to staging schema
2. Run dbt test to check uniqueness of dataset
3. Run dbt run to generate data

NOTE:
    - Output is divided into 2 schemas, ANALYTICS and STAGING.
    - STAGING contains the derived data which will be used in analysis
    - ANALYTICS contains counts as required

Author: Dk Victory