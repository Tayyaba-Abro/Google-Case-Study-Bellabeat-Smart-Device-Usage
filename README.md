# Google Case Study 2: Bellabeat Smart Device Usage

![Presentation updated](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/011443df-84a9-4c60-8908-74ff641d61f6)

## Quick Links:

### Data Source: [FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit)
### SQL Code: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)
### Tableau Public: [Bellabeat Smart Device Usage](https://public.tableau.com/views/BellaBeatSmartDeviceUsageDashboard/Dashboard2?:language=en-US&:display_count=n&:origin=viz_share_link)

## Introduction

This case study presents a data analysis project conducted as part of the Google Data Analytics Professional Certificate course, Capstone Project, focusing on BellaBeat Smart Devices Usage.

The project revolves around the marketing analyst team at Bellabeat, a high-tech manufacturer of health-focused products for women. Bellabeat, although successful as a small company, has the potential to become a larger player in the global smart device market. The team's task is to analyze smart device data to gain insight into how consumers are using their smart devices. These insights will then guide the marketing strategy for the company. The analysis and high-level recommendations will be presented to the Bellabeat executive team.

## Products
- **Bellabeat App**: The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle, and mindfulness habits. This data can help users better understand their current habits and make healthy decisions. The Bellabeat app connects to their line of smart wellness products.
- **Leaf**: Bellabeat’s classic wellness tracker can be worn as a bracelet, necklace, or clip. The Leaf tracker connects to the Bellabeat app to track activity, sleep, and stress.
- **Time**: This wellness watch combines the timeless look of a classic timepiece with smart technology to track user activity, sleep, and stress. The Time watch connects to the Bellabeat app to provide you with insights into your daily wellness.
- **Spring**: This is a water bottle that tracks daily water intake using smart technology to ensure that you are appropriately hydrated throughout the day. The Spring bottle connects to the Bellabeat app to track your hydration levels.
- **Bellabeat Membership**: Bellabeat also offers a subscription-based membership program for users. Membership gives users 24/7 access to fully personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their lifestyle and goals.

In this case study, we will focus on **TIME Product**, that represents how user utilizes time smart device for their activity and sleep. 

## Tools used in Analysis
- Data Cleaning: Microsoft Excel 
- Data Analysis: Microsft SQL Server 
- Visualization: Tableau Public

## Data Analysis Process
In order to adequately analyze bellabeat data and to answer the key business questions and make recommendations, following key steps of Data Analysis Process will be followed: Ask, Prepare, Process, Analyze, Share and Act .

### Ask Phase:
To address the business task of analyzing that how user utilizes the time smart device, the following key findings will guide the analysis:

- Proportion of Calories per Distance by Day
- Average Steps per Hour
- Total Steps & Total Distance by ID
- Maximum Sleep Duration (in hours) by Day
- Correlation of Steps with Active Minutes
- Correlation of Sleep with Active Minutes by Day

### Prepare Phase:

The data for this analysis is a public dataset available on [Kaggle](FitBit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit). It consists of 18 files containing details about daily activity, sleep, weight, calories, and intensities. The dataset is structured in a combination of long and wide format, with different files containing specific information related to different aspects of smart device usage. As the data is not from Bellabeat itself, there may be potential issues with bias or credibility. In terms of data integrity, it is worth noting that the dataset is not up to date and only contains data for the months of April and May in 2016. Therefore, the analysis may not reflect the most current trends in smart device usage. Additionally, it is important to mention that the dataset does not include information about the Spring product and the Bellabeat app, which limits the scope of the analysis to the Time smart device.

![Capture](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/9bdef8a3-95a7-47d2-b064-cf43254f199f)

### Prepare Phase: 

#### Cleaning in Excel:

The following considerations were observations and updated to clean data effectively:
- **Remove Unwanted Tables:** As 'daily_steps', 'daily_calories' and 'daily_intensities' table were also part of daily_activity file, also it was validated using MATCH function. Therefore, unwanted files that will not be part of anlysis were removed.
- **Rename File:** Proper naming to files were assgined to maintain integrity.

![removed files](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/e7af6943-7c58-4f87-8077-65158be29b7d)

- **Check Data Type:** Data type of each column, such as, TotalSteps, TotalDistance, VeryActiveMinutes, LittleActiveMinutes, FairlyActiveMinutes and SedentaryMinutes were changed to number.
- **Check duplicates:** Duplicate values were identified from two files and removed using 'Remove Duplicates'.
- **Check for Blanks:** The data set was checked for incomplete or blank values across all columns.
- **Validate Column Values:** All column values of respective files were valited using filter.
- **Sorting the Table:** The table was sorted in ascending order based on the Date.

### Process Phase:
During this phase, the key findings related to how users utilize bellabeat smart devices were examined deeply using Microsoft SQL Sever.

#### 1. Proportion of Calories per Distance by Day:

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result:

![calories distance per weekday](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/c54d2447-73e9-4ab8-ad7f-667a868a3d33)

#### 2. Average Steps per Hour 

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result: 

![steps per hour](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/2b878c84-5c11-463e-8d03-84cf5d4aee65)

#### 3. Total Steps & Total Distance by ID

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result:

![steps vs distances](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/19745eca-1d8c-44e2-a074-e5e3dee794f4)

#### 4. Maximum Sleep Duration (in hours) by Day

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result: 

![sleep per weekday](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/dc270fe6-30bb-44b0-969e-efe597e5e572)

#### 5. Correlation of Steps with Active Minutes

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result: 

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/9f80779b-0257-40b7-8106-4b6e68913f9e)


#### 6. Correlation of Sleep with Active Minutes by Day

SQL Query: [Bellabeat Case Study Complete Code](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/blob/main/Bellabeat%20Case%20Study%20-%20Complete%20Code.sql)

Result:

![sleep active minutes per day](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/aa1754d0-375b-43f3-9e4d-a55a020436f2)

### Analyze Phase: 

After processing with the valuable insights, now we will delve deep into the explanatory visualizations that will showcase users healthy daily activities and will correlate few key parameters on [Tableau Public](   ). The appealing visualizations are provided below:

#### 1. Proportion of Calories per Distance by Day:
This analyses represents the calories burned per distance by week day. It is observed that proportion of calories per distance is relatively high on Sunday than other days.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/839c537a-a16a-49b2-812e-38a3f641e2de)


#### 2. Average Steps per Hour 
This visualization identifies average steps taken per hour and it is analyzed that most average steps are taken during 6 p.m.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/60435592-a0c6-472a-843e-e00f97df07d2)


#### 3. Total Steps & Total Distance by ID

This key finding portrays that how total steps are being varied with the total distance. The result shows that maximum stes and maximum distance covered by user ID '8877689391' with distance of '409.4' and steps of '497,241'.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/9d93a9ca-36e6-4601-85aa-25c82ea75e1c)


#### 4. Maximum Sleep Duration (in hours) by Day

The sleep duaration was caterozied in days, and it is identified that maximum sleep duraton is found to be 13 'hours' on 'Monday'.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/6c6d1086-06ac-453f-aa41-4e225caaa11e)


#### 5. Correlation of Steps with Active Minutes (Very Active and Sendetary Minutes)

From the correlation of total steps, very active minutes, and sedentary minutes it is evident that as the total steps increase, the very active minutes also tend to increase, while the sedentary minutes decrease. This suggests that individuals who take more steps engage in more intense physical activity and spend less time in a sedentary state. These findings align with the recommendations of the Centers for Disease Control and Prevention (CDC), which suggests engaging in at least 30 minutes of moderate physical activity every day for optimal health. However, the data indicates that the majority of users in the dataset spend a considerable amount of time in a sedentary state, with relatively low levels of very active minutes.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/9baf23d0-9046-4e9f-b858-a39d8c6a0d4e)


#### 6. Correlation of Sleep with Each Active Minutes by day

This analysis highlights that users tend to spend a significant amount of time, approximately 13 hours on average, in sedentary behavior during the weekends. Furthermore, the data indicates that users allocate less time for sleep and have minimal engagement in activities during the weekend.

![image](https://github.com/Tayyaba-Abro/Google-Case-Study---Bellabeat-Smart-Device-Usage/assets/47588244/fe0c8aa9-ac2d-4caa-ac69-c644549c337d)


### Act Phase 

#### Key Takeaways

Based on the findings of this analysis, some key takeaways can be derived:

- Users find Sunday as a day when actively prioritize their health and engage in physical activities. It further suggests that people may intentionally select one day of the weekend to focus on maintaining an active lifestyle, while allocating the other day for more sedentary pursuits.
- The peak in average steps per hour at 5 to 6 PM, indicating that individuals are most active in evening.
- Despite the positive correlation between steps and active minutes, the majority of users in the dataset still spend a significant amount of time in a sedentary state, highlighting the need to promote more physical activity and reduce sedentary behavior.
-  The analysis of sleep and activity minutes over the week reveals that, on average, users spent approximately 6.98 hours sleeping, 13.31 hours in a sedentary state, 3.33 hours in light activity, 0.27 hours in fairly active moments, and 0.40 hours in highly active periods. This indicates that, on average, users are meeting the minimum sleep standard of 7 hours. However, despite achieving sufficient sleep, their active time remains relatively low, with a significant portion of the day spent in a sedentary state

 
#### Recommenations: 
Based on the key findings of the Bellabeat smart devices usage, here are some recommendations for the business:

- **Personalized Activity Reminders:** Develop a feature within the Bellabeat smart devices that provides personalized activity reminders to users. These reminders can be based on their specific activity patterns and can encourage them to engage in more active behaviors throughout the day.

- **Sleep Optimization Guidance:** Offer sleep optimization guidance through the Bellabeat smart devices. This could include providing recommendations on sleep duration and quality, as well as tips for improving sleep habits. The goal is to help users establish healthy sleep routines and maximize their sleep benefits.

- **Active Time Tracking:** Enhance the activity tracking capabilities of the Bellabeat smart devices by providing users with detailed insights into their active time distribution throughout the day. This can help users understand their activity patterns and motivate them to increase their active minutes by incorporating not only steps but about cycling, yoga, walking etc. 

- **Activity Challenges and Rewards:** Implement activity challenges and rewards within the Bellabeat app. This can create a sense of competition and motivation among users to achieve their activity goals. Rewards can include virtual badges, discounts on Bellabeat products, or access to exclusive content.

By implementing these recommendations, Bellabeat can enhance the user experience, increase engagement with the smart devices, and further establish itself as a leading provider of health and wellness solutions.
- Promoting awareness and encouraging a more active lifestyle can have positive impacts on overall well-being.

