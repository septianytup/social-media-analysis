# SQL - Social Media Analysis
---

### 📌 Project Overview

Social media has become a major part of daily life, influencing user interactions, media consumption, and productivity. This project analyzes the Social Media Menace dataset using MySQL to explore various aspects of social media usage, including user demographics, engagement patterns, media consumption behaviors, addiction levels, and platform preferences. By understanding these factors, we aim to uncover insights into how social media affects users' time management and overall well-being.

---
### 📊 Dataset Information

#### Data Source
- **URL:** [Social Media Menace Dataset](https://www.kaggle.com/datasets/zeesolver/dark-web)

#### Structure
- **Number of Rows:** 1000
- **Number of Columns:** 31

---
### 🗄️ Database & Table Creation

To begin the analysis, the following steps were performed in MySQL:

- **Create Database** – Create a database to store the data.
- **Use Database** – Select the database for use.
- **Create Table** – Create tables with structures matching the dataset.

📂 **SQL Scripts:** [Data Definition Language (DDL)](https://github.com/septianytup/social-media-analysis/blob/main/Data%20Definition%20Language%20(DDL).sql)

---
### 🔍 Exploratory Data Analysis (EDA)
This analysis covers:
- Displaying Sample Data
- Checking Data Types
- Viewing Total Number of Rows
- Age Range of Users 
- Time Spent Range
- Gender Distribution of Users
- Age Distribution of Users 
- Time Spent on Platform Distribution

📂 **SQL Scripts:** [Exploratory Data Analysis (EDA)](https://github.com/septianytup/social-media-analysis/blob/main/Exploratory%20Data%20Analysis%20(EDA).sql)

---
### 🧹 Data Cleaning
Performed tasks include:
- Check the Number of NULL in Each Column
- Check for Duplicate UserID
- Verify Age Format 
- Verify Income Format
- Disable Safe Update Mode
- Standardize Data in the "Debt" and "Owns_Property" Columns
- Change Data Type of the "Income" Column 
- Add an Income_Group Column
- Add an Age_Group Column
- Add a Time_Period Column
- Re-enable Safe Update Mode

📂 **SQL Scripts:** [Data Cleaning](https://github.com/septianytup/social-media-analysis/blob/main/Data%20Cleaning.sql)

---
### 📈 Data Analysis
**1. Demographic Analysis and User Profile**
- Age & Gender Distribution
- Income Distribution & Property Ownership
- Proportion of Users with Debt

**2. Media Consumption Pattern Analysis**
- Total Time Spent per User
- Most Popular Video Categories
- Average Time Spent per Video
- Peak Hours for Watching Videos

**3. Highest Engagement Analysis**
- Video Categories with the Highest Engagement
- Relationship Between Time Spent and Engagement

**4. Addiction & Productivity Analysis**
- Correlation Between Time Spent and Addiction Level
- Impact of Self-Control on Addiction Level
- Relationship Between Productivity and Addiction Level

**5. Device & Platform Analysis**
- Most Popular Platforms
- Most Frequently Used Devices
- Most Used Operating Systems

📂 **SQL Scripts:** [Data Analysis](https://github.com/septianytup/social-media-analysis/blob/main/Data%20Analysis.sql)

---
### 🔍 Key Findings & Insights

**1. Demographic Analysis and User Profile**

✅ **Age & Gender Distribution**

- The majority of users are 45-54 years old (23.7%) and 35-44 years old (21.7%).
- Most users are male (51.4%), followed by female (39.6%) and other genders (16.4%).
  
✅ **Income Distribution & Property Ownership**

- 54% of users with high and middle income own property, indicating strong purchasing power.
  
✅ **Proportion of Users with Debt**

- 59.9% of users have debt, which may influence their consumption habits.
  
**2. Media Consumption Pattern Analysis**

✅ **Total Time Spent Per User**

- The top 10 users spend around 4.93 - 4.97 hours on media consumption.

✅ **Most Popular Video Categories**

- Jokes/Memes (179 views) and Life Hacks (162 views) dominate viewership.
- Gaming (119 views) and Vlogs (114 views) are also highly engaging.
  
✅ **Average Time Spent per Video**

- Pranks (16.4 min) and Vlogs (15.79 min) have the highest average watch time.
- Entertainment (15.17 min) and Life Hacks (14.80 min) also hold strong engagement.
  
✅ **Peak Hours for Watching Videos**

- Afternoon (504 views) is the busiest period for media consumption.
- Evening (390 views) follows closely, while mornings (106 views) have the lowest activity.

**3. Highest Engagement Analysis**

✅ **Video Categories with the Highest Engagement**

- Trends (5,407.70 avg. engagement) leads in audience interaction.
- Life Hacks (5,263.87) and Vlogs (5,252.80) also show high engagement.
- Pranks (5,144.09) and Jokes/Memes (4,958.04) drive strong user interactions.

✅ **Relationship Between Time Spent and Engagement**

- Users spending an average of 14.97 minutes per session generate 4,997.16 avg. engagement.
- Longer watch time correlates with higher engagement, highlighting the importance of keeping viewers engaged.

**4. Addiction & Productivity Analysis**

✅ **Correlation Between Time Spent and Addiction Level**

- Users with the highest addiction level (7) spend an average of 2.75 hours per session.
- Moderate addiction levels (3–5) show fluctuating screen time (~2.55 hours).
- Lower addiction levels (0–2) still maintain over 2.5 hours of usage, indicating habitual use.

✅ **Impact of Self-Control on Addiction Level**

- Higher self-control correlates with lower addiction levels (Self-Control 10 = Addiction Level 0).
- Users with low self-control (3) exhibit the highest addiction levels (7).

✅ **Relationship Between Productivity and Addiction Level**

- Higher addiction levels lead to greater productivity loss.
- Users with addiction level 7 experience a 1.00 average productivity loss, while those at level 0 lose 8.21.
- This suggests inverse productivity trends—more screen time, less productivity.

**5. Device & Platform Analysis**

✅ **Most Popular Platforms**

- TikTok (273 users) leads in engagement, followed closely by Instagram (256) and YouTube (250).
- Facebook (221) remains relevant but trails behind newer platforms.

✅ **Most Frequently Used Devices**

- Smartphones dominate (585 users), highlighting mobile-first consumption habits.
- Tablets (283) and Computers (132) have niche usage, likely for specific content types. 

✅ **Most Used Operating Systems**

- Android (500 users) leads the market, followed by iOS (261), reinforcing mobile dominance.
- Windows (123) and macOS (116) indicate limited desktop engagement.

---
### 💡 Recommendations

- Target marketing towards users aged 35-54, especially males.
- Optimize engagement in the afternoon & evening with interactive content.
- Promote self-control & time management features to encourage digital balance.
- Prioritize app development for Android & mobile devices.
  
---
### 🚀 How to Run This Project

- Install MySQL and set up the database.
- Download the SQL scripts from the repository.
- Run the provided SQL queries to explore and analyze the data.

---
### 📫 Contact Information

For further questions or discussions about this project, feel free to reach out:

- Email: tupseptiany@gmail.com
- LinkedIn: https://linkedin.com/in/septianytup

If you have suggestions, feedback, or want to collaborate, don't hesitate to contact me. 😊
