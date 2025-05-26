# Blinkit Sales Analytics 
## Project Objective 
To conduct a comprehensive analysis of Blinkit's sales performance, customer satisfaction, and inventory distribution by leveraging various KPIs and interactive visualizations in Power BI. The goal is to uncover key insights and identify opportunities for business optimization and strategic decision-making.
## Technologies Used 
SQL – Used for data cleaning, preprocessing, and exploratory data analysis (EDA) to ensure data accuracy and readiness.

SQL Server Database – Cleaned data was stored in a relational database for easy integration and access.

Power Query (Power BI) – Performed minor data transformations and shaping before visualization.

Power BI – Developed interactive dashboards and visualizations to present key business insights and performance metrics.
## Project Workflow 
### Data Collection 
 Raw data was initially available in Excel format.
 
 The Excel data was imported into a SQL Server database for structured processing.

### Data Cleaning 
All data cleaning operations were performed using SQL queries within SQL Server to prepare the dataset for analysis. Key steps included:

Standardizing inconsistent categorical values for uniform representation.

Handling null and missing values in essential columns to ensure data completeness.

Removing duplicate records based on appropriate identifiers.

Correcting formatting issues such as inconsistent casing and extra spaces.

### Exploratory Data Analysis
Performed EDA using SQL queries on the cleaned dataset to uncover patterns, trends, and relationships within the data. The analysis focused on:

Understanding sales distribution across different item types and outlet types.

Identifying high-performing product categories and outlet locations.

Analyzing customer rating trends to evaluate satisfaction levels.

Examining item visibility and pricing patterns to detect anomalies.

Segmenting data based on fat content, location type, and item type to derive actionable insights.

Studying the relationship between sales volume and outlet characteristics.
### Data Transformation 
After importing the cleaned SQL Server data into Power BI, the following transformations and enhancements were applied to prepare the dataset for reporting
#### Power Query (Pre-Visualization)
Renamed and formatted columns for clarity and consistency.

Changed data types to support correct visual interpretation.

Filtered unnecessary rows and columns.

Applied basic transformations such as sorting, grouping, and splitting columns.

Merged and appended queries to combine related datasets where needed.
#### DAX Measures & Metrics
Created calculated measures using DAX (Data Analysis Expressions) to support dynamic visualizations and KPIs, including:

Total Sales

Average Sales per Item

Total Items Sold

Average Customer Rating

Sales by Category

Sales by Outlet Type

Performance by Location Type

### Data Visualization 
Developed an interactive and user-friendly dashboard in Power BI Desktop to present key insights derived from the cleaned and transformed data. The visualization phase focused on delivering business value through clear and actionable graphics.

Key components of the dashboard include:

KPI Cards displaying Total Sales, Average Sales, Items Sold, and Customer Ratings.

Donut Charts to show category-wise sales distribution.

Bar and Column Charts for comparing outlet performance and item type contributions.

Line Charts for sales trends over time (if date data is available).

Matrix/Table Visuals with conditional formatting for detailed comparisons.

Slicers and Filters enabling dynamic drill-down by outlet type, item category, location type, and fat content.
Design Note:

Utilized a color scheme aligned with Blinkit’s branding (green, yellow, and black tones) to create a visually appealing and brand-consistent experience

### Key Insights
From the analysis and visualizations, the following business insights were identified:

Top-Selling Categories: Certain item categories consistently contributed the highest sales, indicating strong customer demand.

Outlet Performance Variation: Some outlet types and locations significantly outperformed others, suggesting opportunities for expansion or optimization.

Customer Preferences: Items labeled with “Low Fat” and specific product types showed higher sales and better ratings, indicating customer health-conscious behavior.

Sales Distribution Gaps: A notable imbalance in sales across different location tiers and item types highlighted areas for targeted marketing.

Rating Trends: Outlets with higher average ratings tended to have better sales performance, reinforcing the link between customer satisfaction and revenue.

Inventory Opportunities: Some products had high availability but low sales, suggesting a need for inventory realignment or promotional offers.

![Screenshot 2025-05-26 174211](https://github.com/user-attachments/assets/473c8fd1-c710-420a-aa65-ac2c8c4dd115)


