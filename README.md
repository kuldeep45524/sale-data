# Sales Data Analysis Using R

## Overview
This project demonstrates sales data analysis using R. The project imports a small CSV dataset, checks and cleans the data, performs statistical analysis, and creates graphs.

## Objectives
- Import sales data into R
- Check and clean the data
- Calculate total, average, median, variance, and standard deviation
- Analyze sales by product and category
- Visualize sales results using plots

## Project Structure

```text
sales-data-analysis-r/
├── data/
│   └── sales_data.csv
├── docs/
│   └── project_documentation.md
├── output/
│   └── Generated PNG plots after running the R script
├── sales_data_analysis.R
├── README.md
├── requirements.txt
└── .gitignore
```

## Requirements
- R 4.0 or later
- No external R packages are required. The project uses base R.

## How to Run

Open a terminal in the project folder and run:

```bash
Rscript sales_data_analysis.R
```

The script reads `data/sales_data.csv` and creates the following files in `output/`:
- product_wise_sales.png
- category_wise_sales.png
- quantity_sold_by_product.png

## Dataset
The sample dataset contains 12 sales transactions with:
- Order_ID
- Product
- Category
- Quantity
- Unit_Price
- Sales_Amount

## Results from the supplied project
- Total sales: 2,429,500
- Average sales: 202,458.3
- Median sales: 232,500
- Product sales: Laptop 825,000; Mobile 775,000; Tablet 750,000; Headphones 79,500
- Category sales: Electronics 2,350,000; Accessories 79,500

## Academic Note
This is a small sample project for academic demonstration and learning purposes.
