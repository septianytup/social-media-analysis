# 🗄️ SQL – Social Media Usage, Engagement & Behavioral Analysis

## Project Overview

Social media has become a central part of modern digital life, shaping how people communicate, consume content, and allocate their time. This project uses MySQL to analyze the *Social Media Menace* dataset in order to identify patterns across user demographics, content consumption, engagement behavior, addiction indicators, and platform preferences.

The analysis aims to provide a clearer picture of how social media usage relates to productivity, self-control, and overall digital habits. The insights generated are intended to support data-driven discussions around user behavior, platform strategy, and digital well-being.

---

## Dataset

**Source:**  
- Kaggle – Social Media Menace Dataset  
  https://www.kaggle.com/datasets/zeesolver/dark-web  

**Size:**  
- 1,000 records  
- 31 variables  

---

## Tools & Technologies

- MySQL  
- SQL (DDL, data transformation, analytical queries)  
- GitHub for version control and project documentation  

---

## Database Setup & Design

A structured database environment was created to ensure the analysis could be reproduced and maintained consistently. This included:

- Creating and configuring the database  
- Defining tables based on the dataset schema  
- Assigning appropriate data types and basic constraints  

📂 **DDL Scripts:**  
https://github.com/septianytup/social-media-analysis/blob/main/Data%20Definition%20Language%20(DDL).sql  

---

## Exploratory Data Analysis (EDA)

Exploratory analysis was conducted to validate the dataset and understand high-level patterns before deeper analysis:

- Reviewing sample records  
- Verifying column data types  
- Confirming total record counts  
- Exploring age distribution  
- Reviewing time-spent distribution  
- Analyzing gender composition  
- Assessing platform usage duration  

📂 **EDA Scripts:**  
https://github.com/septianytup/social-media-analysis/blob/main/Exploratory%20Data%20Analysis%20(EDA).sql  

---

## Data Cleaning & Feature Engineering

Several cleaning and transformation steps were applied to improve data quality and analytical value:

- Validating NULL values across all fields  
- Checking for duplicate UserID values  
- Standardizing categorical fields (*Debt*, *Owns_Property*)  
- Correcting the data type of the *Income* field  
- Creating derived analytical features:  
  - **Income_Group**  
  - **Age_Group**  
  - **Time_Period**  
- Managing safe update mode during controlled transformations  

📂 **Data Cleaning Scripts:**  
https://github.com/septianytup/social-media-analysis/blob/main/Data%20Cleaning.sql  

---

## Analytical Focus Areas

The analysis was organized into five key behavioral and business dimensions:

### 1. Demographics & User Profile
- Distribution of age and gender  
- Income segmentation and property ownership  
- Prevalence of user debt  

### 2. Media Consumption Behavior
- Total time spent per user  
- Most frequently viewed video categories  
- Average viewing duration by category  
- Peak content consumption periods  

### 3. Engagement Patterns
- Categories generating the highest engagement  
- Relationship between viewing time and engagement  

### 4. Addiction & Productivity Impact
- Association between time spent and addiction level  
- Influence of self-control on addiction  
- Relationship between addiction and productivity loss  

### 5. Device & Platform Usage
- Platform popularity  
- Device preference patterns  
- Operating system distribution  

📂 **Analysis Scripts:**  
https://github.com/septianytup/social-media-analysis/blob/main/Data%20Analysis.sql  

---

## Key Insights

### User Demographics
- The largest age groups are 45–54 (23.7%) and 35–44 (21.7%).  
- Male users make up the largest share of the user base (51.4%).  
- More than half of middle- and high-income users own property.  
- Nearly 60% of users carry some level of debt.  

### Media Consumption & Engagement
- The most active users spend close to five hours on media consumption.  
- Jokes/Memes and Life Hacks attract the highest number of views.  
- Pranks and Vlogs show the longest average viewing duration.  
- Afternoon and evening represent peak usage periods.  
- Trends, Life Hacks, and Vlogs generate the strongest engagement levels.  
- Higher viewing time is closely associated with increased engagement.  

### Addiction & Productivity
- Higher addiction scores are linked to longer screen time.  
- Lower self-control is associated with higher addiction levels.  
- Increased addiction corresponds with greater productivity loss, highlighting a negative performance impact.  

### Platform & Device Trends
- TikTok, Instagram, and YouTube dominate user activity.  
- Smartphones are the primary access device, confirming mobile-first behavior.  
- Android is the most commonly used operating system, followed by iOS.  

---

## Business & Behavioral Implications

- Users aged 35–54 represent a highly active and valuable segment.  
- Content and campaign strategies should be aligned with afternoon and evening engagement peaks.  
- Mobile and Android platforms should remain a priority for optimization and development.  
- Digital well-being and usage management features are increasingly important given the clear link between addiction and productivity loss.  

---

## How to Reproduce

1. Install and configure MySQL locally.  
2. Run the DDL scripts to create the database and tables.  
3. Execute EDA queries to validate and explore the dataset.  
4. Apply data cleaning and feature engineering scripts.  
5. Run the analytical queries to reproduce key findings.  

---

## Contact

For questions, feedback, or collaboration:

- Email: tupseptiany@gmail.com  
- LinkedIn: https://linkedin.com/in/septianytup  
