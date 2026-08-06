# 🍽️ Zomato Restaurant Data Analysis using SQL

## 📌 Project Overview

This project analyzes the Zomato Bangalore restaurant dataset using SQL to solve real-world business problems. The analysis focuses on restaurant performance, customer engagement, restaurant rankings, and value-for-money segmentation using SQL.

---

## 🎯 Objectives

- Identify the best-performing cuisines in Bangalore.
- Analyze customer engagement across restaurant types.
- Rank restaurants within each location.
- Identify restaurants that provide the best value for money.

---

## 📂 Dataset

- **Dataset:** Zomato Bangalore Restaurants Dataset
- **Database:** SQLite
- **Dataset Format:** CSV

> **Note:**  
> A reduced dataset (10,000 rows) was used for this project to ensure compatibility with SQLiteOnline. The original dataset is not included in this repository due to its large file size.

**Original Dataset:**
https://www.kaggle.com/datasets/himanshupoddar/zomato-bangalore-restaurants

---

## 🛠️ SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
- CASE WHEN
- Common Table Expressions (CTEs)
- Window Functions
  - RANK()
  - DENSE_RANK()
  - NTILE()

---

## 📊 Business Questions Solved

### 1️⃣ Which cuisine performs best in each Bangalore neighbourhood?

- Compared cuisines across different locations.
- Measured average ratings and customer engagement.
- Filtered cuisine groups with fewer than five restaurants.
  <img width="1522" height="762" alt="image" src="https://github.com/user-attachments/assets/67896aed-0d2e-42db-a2f4-14e7765267cc" />


---

### 2️⃣ Which restaurant types receive the most customer engagement?

- Compared restaurant categories.
- Measured customer engagement using average votes.
- Compared restaurants with and without online ordering.
- Analyzed customer satisfaction and average spending.
  <img width="1566" height="692" alt="image" src="https://github.com/user-attachments/assets/a6260d49-1829-4f9e-918b-4f01d9b8cd24" />


---

### 3️⃣ Which restaurants rank highest within each location?

- Ranked restaurants separately within every location.
- Used Window Functions (`RANK()` and `DENSE_RANK()`).
- Compared restaurant performance based on ratings.
  <img width="1582" height="808" alt="image" src="https://github.com/user-attachments/assets/6f9c654c-60db-41c4-ac03-415ea6492950" />


---

### 4️⃣ Which restaurants provide the best value for money?

- Compared restaurant ratings with pricing.
- Divided restaurants into cost and rating quartiles using `NTILE()`.
- Classified restaurants into:
  - ⭐ Best Value
  - 💎 Premium
  - ⚠️ Avoid
  - ✅ Standard
    <img width="1570" height="828" alt="image" src="https://github.com/user-attachments/assets/148ba04f-208e-46a7-af8d-1c64ebf12505" />
    
    <img width="1558" height="522" alt="image" src="https://github.com/user-attachments/assets/cab8337a-d778-4267-b838-7d8081c30f7b" />
    
    <img width="1494" height="576" alt="image" src="https://github.com/user-attachments/assets/c2353bef-c9d8-4f68-86bc-7e1b8adbe777" />
    
    <img width="1534" height="660" alt="image" src="https://github.com/user-attachments/assets/09a729b9-ef5b-40cf-a210-617961746e1d" />


---

## 📈 Key Insights

- Average ratings measure customer satisfaction.
- Customer votes indicate restaurant engagement and popularity.
- Average votes provide a fair comparison across restaurant categories.
- Window functions help identify top-performing restaurants within each location.
- Quartile segmentation helps identify value-for-money restaurants.

---

## 💡 Skills Demonstrated

- SQL Query Writing
- Business Problem Solving
- Data Aggregation
- Data Filtering
- Window Functions
- Common Table Expressions (CTEs)
- Customer Engagement Analysis
- Restaurant Performance Analysis
- Data Segmentation

---

## 🛠️ Tools Used

- SQLite
- SQLiteOnline
- GitHub

---

## 📁 Repository Structure

```text
📦 Zomato_SQL_Project
│
├── SQL_Queries.sql
├── README.md

```

---

## 🚀 Learning Outcomes

Through this project, I strengthened my understanding of SQL by applying aggregate functions, window functions, ranking techniques, CTEs, and business-driven data analysis to solve real-world restaurant analytics problems.

---


