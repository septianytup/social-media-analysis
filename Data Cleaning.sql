--- Check the Number of NULL in Each Column
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

--- Check for Duplicate UserID
SELECT * FROM 
	social_media_data
WHERE UserID IN (
    SELECT 
		UserID
    FROM 
		social_media_data
    GROUP BY 
		UserID
    HAVING 
		COUNT(*) > 1
);
    
--- Verify Age Format  
SELECT * FROM 
	social_media_data 
WHERE 
	Age < 13 
    OR Age > 100;
    
--- Verify Income Format
SELECT * FROM
	social_media_data
WHERE 
	Income < 0;

--- Disable Safe Update Mode
SET SQL_SAFE_UPDATES = 0;

--- Standardize Data in the "Debt" and "Owns_Property" Columns
UPDATE social_media_data
SET Debt = CASE 
        WHEN Debt = 'YES' THEN 'Yes' 
        WHEN Debt = 'NO' THEN 'No' 
        ELSE Debt 
    END,
    Owns_Property = CASE 
        WHEN Owns_Property = 'YES' THEN 'Yes' 
        WHEN Owns_Property = 'NO' THEN 'No' 
        ELSE Owns_Property 
    END
WHERE UserID IS NOT NULL;

--- Change Data Type of the "Income" Column 
ALTER TABLE 
	social_media_data
MODIFY COLUMN 
	Income INT;

--- Add an Income_Group Column
ALTER TABLE social_media_data ADD COLUMN Income_Group VARCHAR(10);

UPDATE social_media_data
SET Income_Group = CASE
	WHEN Income < 20000 THEN 'Low'
	WHEN Income BETWEEN 20000 AND 50000 THEN 'Middle'
	ELSE 'High'
END;
    
--- Add an Age_Group Column
ALTER TABLE social_media_data ADD COLUMN Age_Group VARCHAR(10);

UPDATE social_media_data 
SET Age_Group = CASE 
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    WHEN Age BETWEEN 55 AND 64 THEN '55-64'
    ELSE 'Other'
END;

--- Add an Time_Period Column
ALTER TABLE social_media_data ADD COLUMN Time_Period VARCHAR(10);

UPDATE social_media_data 
SET Time_Period = CASE 
	WHEN HOUR(Watch_Time) BETWEEN 6 AND 11 THEN 'Morning'
	WHEN HOUR(Watch_Time) BETWEEN 12 AND 17 THEN 'Afternoon'
	WHEN HOUR(Watch_Time) BETWEEN 18 AND 23 THEN 'Evening'
	ELSE 'Midnight'
END;

--- Re-enable Safe Update Mode
SET SQL_SAFE_UPDATES = 1;

