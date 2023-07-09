
--1.  Proportion of Calories Per Distance by Day

SELECT DATENAME (WEEKDAY, ActivityDate) AS WeekDay, 
SUM(Calories) AS CaloriesPerDay,
SUM (TotalDistance) AS DistancePerDay,
ROUND ((SUM (Calories)/ SUM (TotalDistance)),2) AS CaloriesPerDistance
FROM daily_activity 
group by DATENAME (WEEKDAY, ActivityDate)
ORDER BY
  CASE DATENAME (WEEKDAY, ActivityDate)
      WHEN 'Sunday' THEN 1
      WHEN 'Monday' THEN 2
      WHEN 'Tuesday' THEN 3
      WHEN 'Wednesday' THEN 4
      WHEN 'Thursday' THEN 5
      WHEN 'Friday' THEN 6 
      WHEN 'Saturday' THEN 7
  END
  
 --2. Average Steps per Hour 

 SELECT DATEPART (HOUR,ActivityHour) AS ActiveHours, 
 AVG (StepTotal) AS AvgSteps
 FROM hourly_steps
 GROUP BY DATEPART (HOUR,ActivityHour)
 ORDER BY ActiveHours;


 --3. Total Steps & Total Distance by ID

SELECT ID, SUM(TotalSteps) AS TotalSteps, 
SUM(TotalDistance) AS TotalDistance
FROM daily_activity
GROUP BY ID;


--4. Maximum Sleep Duration (in hours) by Weekday

SELECT DATENAME (WEEKDAY, SleepDay) as WeekDay,
MAX (TotalMinutesAsleep) AS MaxAsleep,
MAX (TotalMinutesAsleep)/ 60 HourAsleep
FROM sleep_day
GROUP BY DATENAME (WEEKDAY, SleepDay)
ORDER BY
  CASE DATENAME (WEEKDAY, SleepDay)
      WHEN 'Sunday' THEN 1
      WHEN 'Monday' THEN 2
      WHEN 'Tuesday' THEN 3
      WHEN 'Wednesday' THEN 4
      WHEN 'Thursday' THEN 5
      WHEN 'Friday' THEN 6 
      WHEN 'Saturday' THEN 7
  END; 


--5. Correlation of Steps & Active Minutes

SELECT TotalSteps, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes
FROM daily_activity
WHERE TotalSteps IS NOT NULL AND TotalSteps > 0
ORDER BY TotalSteps;


-- 6. Correlation of Sleep & Active Minutes Per Day

SELECT DATENAME (WEEKDAY, sleep_day.SleepDay) AS WeekDay, 
AVG (sleep_day.TotalMinutesAsleep) AS SleepMinutes,
AVG (daily_intensities.SedentaryMinutes) AS SedentaryMinutes,
AVG (daily_intensities.LightlyActiveMinutes) AS LightlyActiveMinutes, 
AVG (daily_intensities.FairlyActiveMinutes) AS FairlyActiveMinutes, 
AVG (daily_intensities.VeryActiveMinutes) AS VeryActiveMinutes
FROM sleep_day 
FULL JOIN daily_intensities ON 
sleep_day.id = daily_intensities.id 
WHERE sleep_day.SleepDay IS NOT NULL and sleep_day.TotalMinutesAsleep IS NOT NULL
GROUP BY DATENAME (WEEKDAY, sleep_day.SleepDay)
ORDER BY
  CASE DATENAME (WEEKDAY, sleep_day.SleepDay)
      WHEN 'Sunday' THEN 1
      WHEN 'Monday' THEN 2
      WHEN 'Tuesday' THEN 3
      WHEN 'Wednesday' THEN 4
      WHEN 'Thursday' THEN 5
      WHEN 'Friday' THEN 6 
      WHEN 'Saturday' THEN 7
  END; 







