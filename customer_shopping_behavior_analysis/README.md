# 🛒 Customer Shopping Behavior Analysis

## 📊 Project Overview
This project analyzes customer shopping behavior using Python, SQL, and Power BI. It focuses on understanding customer purchasing patterns, subscription behavior, and category-wise sales performance.

The dashboard provides interactive visual insights that help businesses make data-driven decisions.
<img width="1203" height="738" alt="Screenshot 2026-03-22 201043" src="https://github.com/user-attachments/assets/ee3f2662-f4e2-40c2-a1c1-d7fc3e62798f" />


---

## 🎯 Objectives
- Analyze customer purchasing behavior  
- Identify high-performing product categories  
- Compare revenue across gender and age groups  
- Evaluate impact of subscription and discounts  
- Segment customers based on purchase history  

---

## 🛠️ Tools & Technologies
- Python (Data Cleaning & Preprocessing)
- SQL (Data Analysis & Querying)
- Power BI (Data Visualization & Dashboard)

---

## 📂 Dataset Description
The dataset contains:
- Customer ID
- Gender
- Age Group
- Subscription Status
- Product Category
- Item Purchased
- Purchase Amount
- Review Rating
- Discount Applied
- Shipping Type
- Previous Purchases

---

## 📊 Dashboard Features
- KPI Cards:
  - Total Customers (3.9K)
  - Average Purchase Amount (~$59.76)
  - Average Rating (3.75)

- Interactive Filters:
  - Subscription Status
  - Gender
  - Category
  - Shipping Type

- Visualizations:
  - Revenue by Category
  - Sales by Category
  - Revenue by Age Group
  - Sales by Age Group
  - Subscription Distribution

---

## 📈 Key Insights
- 73% customers are non-subscribed, only 27% subscribed  
- Clothing category generates the highest sales and revenue  
- Young adults contribute the most revenue  
- Customers using discounts can still spend above average  
- Repeat buyers show strong revenue contribution  

---

## 🧠 SQL Analysis (Important Queries)
Key analysis performed using SQL:

- Revenue comparison by gender  
- Top-rated products  
- Shipping type vs purchase behavior  
- Subscription vs spending analysis  
- Customer segmentation (New, Returning, Loyal)  
- Top products by category  
- Discount usage analysis  

👉 Example Query:
select gender, sum(purchase_amount) as revenue
from customer
group by gender;

More queries available in SQL file.  
:contentReference[oaicite:0]{index=0}

---

## 🧪 Python Work
- Data cleaning and preprocessing  
- Handling missing values  
- Data transformation  
- Preparing dataset for visualization  

---

## 📊 Business Impact
- Helps identify high-value customers  
- Improves marketing strategies  
- Enables category-level optimization  
- Supports data-driven decision making  

---

## 🚀 Conclusion
This project demonstrates how data analytics tools can be combined to extract meaningful insights from customer data and improve business performance.

---

## 📁 Project Structure
Customer-Shopping-Behavior-analysis/
│── data/
│── sql/
│── notebook/
│── dashboard.pbix
│── README.md
