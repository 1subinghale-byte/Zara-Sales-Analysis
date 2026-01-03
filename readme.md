# Zara Commercial Sales Analysis (SQL Server + Power BI)

## Overview
This project analyses the commercial sales performance of a retail company (Zara) using a Kaggle-sourced dataset.  
The objective is to understand **what drives sales performance** across pricing, promotions, product visibility, seasonality, and product attributes, and to demonstrate an end-to-end analytics workflow using SQL Server and Power BI.

The analysis answers the following business questions:
1. What factors drive overall sales performance?
2. Why are sales values highest during autumn?
3. What is the relationship between pricing and sales volume?
4. Are promotions associated with higher sales?
5. How does product shelf location / visibility affect performance?
6. Which product attributes are most strongly linked to performance?

---

## Dataset
- **Source:** Kaggle (CSV format)
- **Notes:**
  - The dataset does not contain a date/time dimension.
  - Data is aggregated at product and commercial attribute level.
  - Raw CSV files are not included in this repository.  
    Please download the dataset directly from Kaggle.

---

## Tools & Technologies
- **SQL Server**
  - Data ingestion
  - Data transformation
  - Analytical views
- **Power BI (Import Mode)**
  - Data modeling
  - Measures and calculations
  - Interactive dashboards

---

## Data Processing & Modeling Approach

### 1. Data Ingestion
- The raw CSV dataset was first loaded into SQL Server as a staging table.
- Minimal transformations were applied at this stage to preserve raw data integrity.

### 2. Data Enrichment & Transformation
- An enriched SQL view was created to:
  - Standardise fields
  - Derive analytical attributes
  - Prepare the dataset for downstream analysis

### 3. Dimensional Modeling (Star Schema)
Although the source data was already aggregated, it was deliberately split into a **fact table and dimension tables** to:
- Improve clarity of analysis
- Follow best practices in analytical modeling
- Future-proof the solution in case finer-grained data or schema changes are introduced later

The resulting structure includes:
- **raw data**
  - raw.Sales

- **Fact Table (view)**
  - `dbo.FSales` – sales values, volumes, and commercial metrics
- **Dimension tables (view)**
  - `dim.vProducts`
  - `dim.vSeason`
  - `dim.vPromotion`

---

## Power BI Analysis
- The SQL views were imported into Power BI using **Import Mode**.
- A relational data model was created based on the star schema.
- Measures were created to support:
  - Sales value and volume analysis
  - Promotion vs non-promotion comparisons
  - Product visibility and shelf location performance
  - Attribute-based performance analysis

---

## Key Insights

**1. Overall Sales Performance Is Driven by Product Mix and Seasonality**

![Overall Performance](powerbi/screenshots/1.%20Home.PNG)

Total sales value reached $884.6M, generated from 22M units sold.

The Women’s section contributes the majority of revenue (67.7%), compared to 32.3% from Menswear.

This suggests that assortment depth and customer demand are structurally higher in the Women’s category, making it the primary revenue driver.

**2. Why Sales Peak in Autumn**

Autumn accounts for the highest total sales value (~$0.31bn), outperforming Winter, Spring, and Summer.

Two key drivers explain this:

Largest assortment size: Autumn represents 37.85% of total product assortment, significantly higher than other seasons.

Higher-value categories dominate Autumn sales:

Jackets alone contribute over 56% of Autumn sales value.

Cold-weather categories (jackets, sweaters, jeans) consistently outperform lighter summer items.

Conclusion: Autumn sales strength is driven by both volume (assortment breadth) and higher average item value, rather than seasonality alone.

**3. Pricing Has a Weak Correlation with Sales Volume**

The scatter analysis of price vs sales volume shows no strong linear relationship.

Average sales volume per product remains relatively stable across price bands:

Low price: ~1,161 units

Medium price: ~999 units

High price: ~992 units

This indicates that Zara’s customers are relatively price-insensitive within the observed range, likely due to:

Strong brand positioning

Fast-fashion purchase behaviour

Implication: Price optimisation alone is unlikely to significantly increase volume without merchandising or promotional support.

**4. Promotions Increase Sales Efficiency, Not Total Revenue Share**

Promotional sales account for 49.8% of total sales value, nearly identical to non-promoted sales.

However, promotions dramatically improve per-product performance:

Avg sales value per promoted product: ~$52K

Avg sales value per non-promoted product: ~$38K

Avg sales volume uplift: ~62% higher for promoted products

Promo Lift Index by product type ranges from 1.33 to 1.42, with:

Strongest lift in t-shirts, jackets, and sweaters

Conclusion: Promotions do not cannibalise revenue, but instead increase sales concentration on promoted items, making them a powerful tactical lever.

**5. Product Visibility Has a Measurable but Secondary Impact**

Products placed Front of Store generate the highest average sales volume per product (~1,103 units).

End-caps and aisles perform slightly lower but remain close in absolute terms.

Sales value per product remains relatively similar across locations (~$43K–$44K).

Interpretation:

Visibility boosts volume modestly, but does not radically change revenue per product.

Product quality, pricing, and category matter more than location alone.

**6. Product Attributes Linked to Higher Performance**

Gender

Women’s products generate higher average sales value per product (~$45K) compared to men (~$41K).

Material

Premium materials outperform:

Linen, Wool, and Silk products achieve the highest average sales values (~$45K).

Synthetic materials (e.g., Polyester, Acrylic) underperform comparatively.

Women’s products outperform men’s across nearly all materials, reinforcing category demand differences.

Origin

Products sourced from Morocco, India, Turkey, Spain, and Portugal perform consistently well.

Differences between origins are relatively small, suggesting manufacturing origin is less influential than material and product type.

Business Takeaways

Sales performance is primarily driven by assortment strategy, seasonality, and category mix, not pricing alone.

Autumn is the most commercially critical season, due to both product breadth and higher-value items.

Promotions are effective when used selectively, especially for core categories.

Merchandising and visibility help, but product fundamentals matter more.

Women’s categories and premium materials represent the strongest commercial opportunities.

--

## How to Reproduce
1. Download the dataset from Kaggle
2. Load the CSV into SQL Server
3. Run SQL scripts in the `/sql` folder in sequence
4. Open the Power BI file located in `/powerbi`
5. Refresh the model to view the analysis

---

## Notes
This project is designed as a **portfolio case study**, focusing on:
- Commercial reasoning
- Data modeling best practices
- Clear analytical structure
- Business-driven insights rather than purely technical output

