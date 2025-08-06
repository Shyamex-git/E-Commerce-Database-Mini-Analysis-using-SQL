# E-commerce Database Mini-Analysis using SQL

## Objective

This project is a rapid, hands-on analysis of a sample e-commerce database using SQL. The goal was to write targeted queries to extract actionable business insights related to customer distribution, operational performance, product revenue, and logistics.

---

## Database

The analysis was performed on a sample database that mimics a real-world e-commerce operation. The key tables used were `Customers`, `Orders`, `Products`, `OrderDetails`, `Employees`, and `Shippers`, representing a standard relational database schema for commerce.

---

## Business Questions & Insights

### 1. What is our global customer distribution?
**Business Insight:** The result of this query shows the total number of customers in each country, sorted from most to least. This is critical for strategic decisions. It identifies our primary markets where marketing efforts are likely effective, and also highlights emerging or underserved markets with fewer customers, representing potential growth opportunities.

### 2. How is the order workload distributed among employees?
**Business Insight:** This query ranks employees by the number of orders they have processed. From a business perspective, this can help identify top-performing employees for recognition or mentorship roles. It can also highlight potential workload imbalances, where some employees are handling significantly more orders than others, which might impact burnout rates and service quality.

### 3. What are our top revenue-generating products?
**Business Insight:** This query identifies the "cash cow" products that generate the most revenue. This is more powerful than just counting units sold, as it accounts for price. A business uses this information to make critical decisions about inventory management (e.g., stocking higher quantities of these products), marketing (e.g., featuring them in ad campaigns), and product placement on the website or app.

### 4. Which shipping partners handle the most orders?
**Business Insight:** This provides a clear breakdown of which shipping partners are being utilized the most. For a company like Meesho, which deals with pan-India logistics, understanding this distribution is crucial. It can inform contract negotiations with logistics providers, help in performance reviews of the shippers, and highlight potential risks, such as over-reliance on a single partner.
