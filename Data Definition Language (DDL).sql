--- Create Database
CREATE DATABASE social_media_analysis;

--- Use Database
USE social_media_analysis;

--- Create Table
CREATE TABLE social_media_data (
    UserID INT PRIMARY KEY,
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Location VARCHAR(100),
    Income DECIMAL(10,2),
    Debt VARCHAR(50),
    Owns_Property VARCHAR(50),
    Profession VARCHAR(100),
    Demographics VARCHAR(50),
    Platform VARCHAR(50),
    Total_Time_Spent INT,  
    Number_of_Sessions INT,
    Video_ID INT,
    Video_Category VARCHAR(50),
    Video_Length INT,  
    Engagement INT,  
    Importance_Score INT,
    Time_Spent_On_Video INT,
    Number_of_Videos_Watched INT,
    Scroll_Rate INT,
    Frequency VARCHAR(50),
    Productivity_Loss INT,
    Satisfaction INT,
    Watch_Reason VARCHAR(50),
    Device_Type VARCHAR(50),
    OS VARCHAR(50),
    Watch_Time TIME,
    Self_Control INT,
    Addiction_Level INT,
    Current_Activity VARCHAR(100),
    Connection_Type VARCHAR(50)
);
