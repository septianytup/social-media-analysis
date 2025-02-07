--- Displaying Sample Data
SELECT * FROM social_media_data LIMIT 10;

--- Checking Data Types
DESCRIBE social_media_data;

--- Viewing Total Number of Rows
SELECT COUNT(*) AS Total_Rows FROM social_media_data;

--- Finding Missing or Null Values
SELECT 
    COUNT(*) AS Total_Records,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Missing_Age,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Missing_Gender,
    SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) AS Missing_Location,
    SUM(CASE WHEN Income IS NULL THEN 1 ELSE 0 END) AS Missing_Income,
    SUM(CASE WHEN Debt IS NULL THEN 1 ELSE 0 END) AS Missing_Debt,
    SUM(CASE WHEN Owns_Property IS NULL THEN 1 ELSE 0 END) AS Missing_Owns_Property,
    SUM(CASE WHEN Profession IS NULL THEN 1 ELSE 0 END) AS Missing_Profession,
    SUM(CASE WHEN Demographics IS NULL THEN 1 ELSE 0 END) AS Missing_Demographics,
    SUM(CASE WHEN Platform IS NULL THEN 1 ELSE 0 END) AS Missing_Platform,
    SUM(CASE WHEN Total_Time_Spent IS NULL THEN 1 ELSE 0 END) AS Missing_Total_Time_Spent,
    SUM(CASE WHEN Number_of_Sessions IS NULL THEN 1 ELSE 0 END) AS Missing_Number_of_Sessions,
    SUM(CASE WHEN Video_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Video_ID,
    SUM(CASE WHEN Video_Category IS NULL THEN 1 ELSE 0 END) AS Missing_Video_Category,
    SUM(CASE WHEN Video_Length IS NULL THEN 1 ELSE 0 END) AS Missing_Video_Length,
    SUM(CASE WHEN Engagement IS NULL THEN 1 ELSE 0 END) AS Missing_Engagement,
    SUM(CASE WHEN Importance_Score IS NULL THEN 1 ELSE 0 END) AS Missing_Importance_Score,
    SUM(CASE WHEN Time_Spent_On_Video IS NULL THEN 1 ELSE 0 END) AS Missing_Time_Spent_On_Video,
    SUM(CASE WHEN Number_of_Videos_Watched IS NULL THEN 1 ELSE 0 END) AS Missing_Number_of_Videos_Watched,
    SUM(CASE WHEN Scroll_Rate IS NULL THEN 1 ELSE 0 END) AS Missing_Scroll_Rate,
    SUM(CASE WHEN Frequency IS NULL THEN 1 ELSE 0 END) AS Missing_Frequency,
    SUM(CASE WHEN Productivity_Loss IS NULL THEN 1 ELSE 0 END) AS Missing_Productivity_Loss,
    SUM(CASE WHEN Satisfaction IS NULL THEN 1 ELSE 0 END) AS Missing_Satisfaction,
    SUM(CASE WHEN Watch_Reason IS NULL THEN 1 ELSE 0 END) AS Missing_Watch_Reason,
    SUM(CASE WHEN Device_Type IS NULL THEN 1 ELSE 0 END) AS Missing_Device_Type,
    SUM(CASE WHEN OS IS NULL THEN 1 ELSE 0 END) AS Missing_OS,
    SUM(CASE WHEN Watch_Time IS NULL THEN 1 ELSE 0 END) AS Missing_Watch_Time,
    SUM(CASE WHEN Self_Control IS NULL THEN 1 ELSE 0 END) AS Missing_Self_Control,
    SUM(CASE WHEN Addiction_Level IS NULL THEN 1 ELSE 0 END) AS Missing_Addiction_Level,
    SUM(CASE WHEN Current_Activity IS NULL THEN 1 ELSE 0 END) AS Missing_Current_Activity,
    SUM(CASE WHEN Connection_Type IS NULL THEN 1 ELSE 0 END) AS Missing_Connection_Type
FROM social_media_data;

--- Age Range of Users 
SELECT 
    MIN(Age) AS min_age, 
    MAX(Age) AS max_age, 
    AVG(Age) AS avg_age
FROM 
	social_media_data;

--- Time Spent Range
SELECT 
    MIN(Total_Time_Spent) AS min_time,
    MAX(Total_Time_Spent) AS max_time,
    AVG(Total_Time_Spent) AS avg_time
FROM social_media_data;

--- Gender Distribution of Users
SELECT 
	Gender, 
    COUNT(*) AS User_Count
FROM 
	social_media_data
GROUP BY 
	Gender;

--- Age Distribution of Users 
SELECT 
	Age, 
    COUNT(*) AS number_of_users
FROM 
	social_media_data 
GROUP BY 
	Age 
ORDER BY 
	Age;

--- Time Spent on Platform Distribution
SELECT 
	Platform, 
    AVG(Total_Time_Spent) AS avg_time_spent
FROM 
	social_media_data
GROUP BY 
	Platform
ORDER BY 
	avg_time_spent DESC;
    







