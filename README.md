# Google Case Study 2: Bellabeat Smart Device Usage

![Bella Beat Cover](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/946c6007-9336-465f-a545-4f44bc7d5756)

## Quick Links:

### Data Source: [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit)
### SQL Codes: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
### Tableau Dashboard: [Bellabeat Smart Device Usage](             )

## Introduction

This case study presents a data analysis project conducted as part of the Google Data Analytics Professional Certificate course, Capstone Project, focusing on BellaBeat Smart Devices Usage.

The project revolves around the marketing analyst team at Bellabeat, a high-tech manufacturer of health-focused products for women. Bellabeat, although successful as a small company, has the potential to become a larger player in the global smart device market. The team's task is to analyze smart device data to gain insight into how consumers are using their smart devices. These insights will then guide the marketing strategy for the company. The analysis and high-level recommendations will be presented to the Bellabeat executive team.

## Products
- **Bellabeat App**: The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle, and mindfulness habits. This data can help users better understand their current habits and make healthy decisions. The Bellabeat app connects to their line of smart wellness products.
- **Leaf**: Bellabeat’s classic wellness tracker can be worn as a bracelet, necklace, or clip. The Leaf tracker connects to the Bellabeat app to track activity, sleep, and stress.
- **Time**: This wellness watch combines the timeless look of a classic timepiece with smart technology to track user activity, sleep, and stress. The Time watch connects to the Bellabeat app to provide you with insights into your daily wellness.
- **Spring**: This is a water bottle that tracks daily water intake using smart technology to ensure that you are appropriately hydrated throughout the day. The Spring bottle connects to the Bellabeat app to track your hydration levels.
- **Bellabeat Membership**: Bellabeat also offers a subscription-based membership program for users. Membership gives users 24/7 access to fully personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their lifestyle and goals.

In this case study, we will focus on **TIME Product**, that represents how user utilizes time smart device. 

## Tools used in Analysis
- Data Cleaning: Microsoft Excel 
- Data Analysis: Microsft SQL Server 
- Visualization: Tableau Public

## Data Analysis Process
In order to adequately analyze these data to answer the key business questions and make recommendations, I will follow the key steps of Data Analysis Process: Ask, Prepare, Process, Analyze, Share and Act.

### Ask Phase:
To address the business task of understanding how user utilizes the time smart device, the following key findings will guide the analysis:

- Proportion of Calories per Distance by Day
- Average Steps per Hour
- Total Steps & Total Distance by ID
- Maximum Sleep Duration (in hours) by Day
- Correlation of Very Active & Sedentary Minutes with Steps
- Correlation of Sleep with Very Active, Little Active, Fairly & Sedentary Minutes

### Prepare Phase:

The data for this analysis is a public dataset available on [Kaggle](FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit). It consists of 18 files containing details about daily activity, sleep, weight, calories, and intensities. The dataset is structured in a combination of long and wide format, with different files containing specific information related to different aspects of smart device usage. As the data is not from Bellabeat itself, there may be potential issues with bias or credibility. In terms of data integrity, it is worth noting that the dataset is not up to date and only contains data for the months of April and May in 2016. Therefore, the analysis may not reflect the most current trends in smart device usage. Additionally, it is important to mention that the dataset does not include information about the Spring product and the Bellabeat app, which limits the scope of the analysis to the Time smart device.

![Capture](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/9bdef8a3-95a7-47d2-b064-cf43254f199f)

### Prepare Phase: 

#### Cleaning in Excel:

The following considerations were observations and updated to clean data effectively:
- **Remove Unwanted Tables:** As 'daily_steps', 'daily_calories' and 'daily_intensities' table were also part of daily_activity file, also it was validated using MATCH function. Therefore, unwanted files that will not be part of anlysis were removed.
- **Rename File:** Proper naming to files were assgined to maintain integrity.
![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/a4193f0b-b448-4d95-b561-55f95a2f492f)
- **Check Data Type:** Data type of each column, such as, TotalSteps, TotalDistance, VeryActiveMinutes, LittleActiveMinutes, FairlyActiveMinutes and SedentaryMinutes were changed to number.
- **Check duplicates:** Duplicate values were identified from two files and removed using 'Remove Duplicates'.
- **Check for Blanks:** The data set was checked for incomplete or blank values across all columns.
- **Validate Column Values:** All column values of respective files were valited using filter.
- **Sorting the Table:** The table was sorted in ascending order based on the Date.

### Process Phase:
During this phase, the key findings related to how users utilize bellabeat smart devices were examined deeply using Microsoft SQL Sever.

#### 1. Proportion of Calories per Distance by Day:

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
Result: ![calories distance per weekday](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/c54d2447-73e9-4ab8-ad7f-667a868a3d33)

#### 2. Average Steps per Hour 

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
Result: ![steps per hour](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/2b878c84-5c11-463e-8d03-84cf5d4aee65)

#### 3. Total Steps & Total Distance by ID

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
Result: ![steps vs distances](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/19745eca-1d8c-44e2-a074-e5e3dee794f4)

#### 4. Maximum Sleep Duration (in hours) by Day

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
Result: ![sleep per weekday](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/dc270fe6-30bb-44b0-969e-efe597e5e572)

#### 5. Correlation of Very Active & Sedentary Minutes with Steps

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
Result: 

#### 6. Correlation of Sleep with Very Active, Little Active, Fairly & Sedentary Minutes

SQL Query: [Bellabeat Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)






  

- 

-  





- 
