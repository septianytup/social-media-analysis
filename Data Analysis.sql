--- 1. Demographic Analysis and User Profile
--- Age & Gender Distribution
SELECT 
	Age_Group, 
    Gender, 
    COUNT(*) AS User_Count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM social_media_data), 2) AS Percentage
FROM 
	social_media_data 
GROUP BY 
	Age_Group, 
	Gender 
ORDER BY 
	Age_Group;

--- Income Distribution & Property Ownership
SELECT 
    Income_Group, 
    Owns_Property, 
    COUNT(*) AS User_Count
FROM 
    social_media_data
GROUP BY 
    Income_Group, 
    Owns_Property
ORDER BY 
    Income_Group;
    
--- Proportion of Users with Debt
SELECT 
	Debt, 
	COUNT(*) AS User_Count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM social_media_data), 2) AS Percentage
FROM 
	social_media_data 
GROUP BY 
	Debt;
    
--- 2. Media Consumption Pattern Analysis
--- Total Time Spent per User
SELECT 
	UserID, 
    ROUND((SUM(Total_Time_Spent) / 60), 2) AS Total_Usage_Time
FROM 
	social_media_data
GROUP BY 
	UserID
ORDER BY 
	Total_Usage_Time DESC
LIMIT 10;

--- Most Popular Video Categories
SELECT 
	Video_Category, 
    COUNT(*) AS Total_Views
FROM 
	social_media_data
GROUP BY 
	Video_Category
ORDER BY 
	Total_Views DESC;

--- Average Time Spent per Video
SELECT 
	Video_Category, 
    ROUND(AVG(Time_Spent_On_Video), 2) AS Avg_Watch_Time
FROM 
	social_media_data
GROUP BY 
	Video_Category
ORDER BY 
	Avg_Watch_Time DESC;

--- Peak Hours for Watching Videos
SELECT 
	Time_Period, 
    COUNT(*) AS Total_Views
FROM 
    social_media_data
GROUP BY 
    Time_Period
ORDER BY 
    Total_Views DESC;

--- 3. Highest Engagement Analysis
--- Video Categories with the Highest Engagement
SELECT 
	Video_Category, 
    ROUND(AVG(Engagement), 2) AS Avg_Engagement
FROM 
	social_media_data
GROUP BY 
	Video_Category
ORDER BY 
	Avg_Engagement DESC;

--- Relationship Between Time Spent and Engagement
SELECT 
	ROUND(AVG(Time_Spent_On_Video), 2) AS Avg_Time_Spent, 
    ROUND(AVG(Engagement), 2) AS Avg_Engagement
FROM 
	social_media_data;

--- 4. Addiction & Productivity Analysis
--- Correlation Between Time Spent and Addiction Level
SELECT 
    Addiction_Level, 
    ROUND(AVG(Total_Time_Spent)/60, 2) AS Avg_Time_Spent
FROM 
    social_media_data
GROUP BY 
    Addiction_Level
ORDER BY 
    Addiction_Level DESC;

--- Impact of Self-Control on Addiction Level
SELECT 
	Self_Control, 
    ROUND(AVG(Addiction_Level)) AS Avg_Addiction
FROM 
	social_media_data
GROUP BY 
	Self_Control
ORDER BY 
	Self_Control;

--- Relationship Between Productivity and Addiction Level
SELECT 
	Addiction_Level, 
    ROUND(AVG(Productivity_Loss), 2) AS Avg_Productivity_Loss
FROM 
	social_media_data
GROUP BY 
	Addiction_Level
ORDER BY 
	Addiction_Level DESC;

--- 5. Device & Platform Analysis
--- Most Popular Platforms
SELECT 
	Platform, 
    COUNT(*) AS User_Count
FROM 
	social_media_data
GROUP BY 
	Platform
ORDER BY 
	User_Count DESC;

--- Most Frequently Used Devices
SELECT 
	Device_Type, 
	COUNT(*) AS Usage_Count
FROM 
	social_media_data
GROUP BY 
	Device_Type
ORDER BY 
	Usage_Count DESC;

--- Most Used Operating Systems
SELECT 
	OS, 
	COUNT(*) AS OS_Usage
FROM 
	social_media_data
GROUP BY 
	OS
ORDER BY 
	OS_Usage DESC;
 