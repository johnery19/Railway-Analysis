SELECT *
FROM dbo.railway

1. What is the average price of tickets for different purchase types (Online vs. Station)?
SELECT Purchase_Type,
AVG(Price) AS Avg_Price
FROM dbo.railway
GROUP BY Purchase_Type;

2. How does the time of purchase affect the likelihood of delay in journeys?

WITH delay_time AS (
SELECT Journey_Status,
DATEDIFF(MINUTE, Time_of_Purchase, Departure_Time)AS time_delay
FROM dbo.railway
)
SELECT *
FROM delay_time;
3. Which payment method is most commonly used for high-value ticket purchases?
SELECT Payment_method,COUNT(*) As Num
FROM dbo.railway
WHERE price > 50
GROUP BY Payment_method;

4. What is the distribution of ticket classes among different railcards?
SELECT Ticket_class, 
Railcard, COUNT(*)AS Num
FROM dbo.railway
GROUP BY Ticket_class,Railcard;

5. How does the departure station influence the average ticket price?
SELECT Departure_station,
AVG(Price) AS Avg_price
FROM dbo.railway
GROUP BY Departure_station;

6. What is the correlation between the date of purchase and the date of the journey?
SELECT 
DATEDIFF(DAY, Date_of_purchase, Date_of_journey) AS Days_of_Transaction
FROM dbo.railway;

7. What are the peak hours for ticket purchases at different stations?
SELECT Departure_station,
DATEPART(HOUR,Time_of_purchase) AS Purchase_hour
FROM dbo.railway;

8. How does the ticket type (Advance vs. other types) impact the journey status (On Time vs. Delayed)?
SELECT Ticket_Type, Journey_status,COUNT(*)
FROM dbo.railway
GROUP BY Ticket_Type, Journey_status
9. What are the most common reasons for delays, and how often do they occur?
SELECT Reason_for_delay,
COUNT(*) num_delay
FROM dbo.railway
GROUP BY Reason_for_delay;

11. How does the actual arrival time compare to the scheduled arrival time across different routes?
SELECT Departure_station,
Arrival_Destination,
AVG(DATEDIFF(MINUTE, Arrival_time, Actual_arrival_Time)) AS Avg_Time_diff
FROM dbo.railway
GROUP BY Departure_station,Arrival_Destination;
12. What are the most frequent departure and arrival stations in the dataset?
WITH departure_stat AS (
SELECT Departure_station,
COUNT(*) AS frequency_departure
FROM dbo.railway
GROUP BY Departure_station),

arrival_stat AS (
SELECT Arrival_Destination,
COUNT(*) AS frequency_arrival
FROM dbo.railway
GROUP BY Arrival_Destination
)
 SELECT departure_stat.Departure_station,
       departure_stat.frequency_departure,
       arrival_stat.Arrival_Destination,
       arrival_stat.frequency_arrival
FROM departure_stat
FULL OUTER JOIN  arrival_stat 
ON departure_stat.Departure_Station = arrival_stat.Arrival_Destination
ORDER BY departure_stat.frequency_departure DESC, arrival_stat.frequency_arrival DESC;


13. How does the price of tickets vary by ticket class (Standard vs. other classes)?
SELECT Ticket_class,
AVG(price) AS avg_price
FROM dbo.railway
GROUP BY Ticket_class;
14. What is the impact of journey distance on ticket prices?
SELECT Departure_Station, Arrival_Destination, AVG(Price) AS Average_Price 
FROM dbo.railway 
GROUP BY Departure_Station, Arrival_Destination;
15. How does the time of day affect the likelihood of a journey being delayed?
SELECT 
    DATEPART(HOUR, Departure_Time) AS Departure_Hour,
    AVG(CAST(CASE WHEN Journey_Status = 'Delayed' THEN 1 ELSE 0 END AS FLOAT)) AS Delay_Likelihood
FROM 
    dbo.railway
GROUP BY 
    DATEPART(HOUR, Departure_Time)
ORDER BY 
    Departure_Hour;

GROUP BY Departure_time
16. What is the average journey duration for different routes?
SELECT Departure_station,
Arrival_Destination,
AVG(DATEDIFF(MINUTE, Arrival_time, Actual_arrival_Time)) AS Avg_Time_diff
FROM dbo.railway
GROUP BY Departure_station,Arrival_Destination;
17. How often do customers purchase tickets using different payment methods (Contactless vs. Credit Card)?
SELECT Payment_Method,
COUNT(*) AS frequency
FROM dbo.railway
GROUP BY Payment_Method;
18. What are the most common journey statuses, and how do they vary by departure station?
SELECT Journey_status,
Departure_station,
COUNT(*) AS frequency
FROM dbo.railway
GROUP BY Journey_status, Departure_station;
19. How does the use of railcards influence the price of tickets and journey status?

SELECT Railcard, Journey_status,
AVG(Price) AS Avg_price
FROM dbo.railway
GROUP BY Railcard, Journey_status

How does the use of railcards influence the price of tickets and journey status?
SELECT Railcard, AVG(Price) AS Average_Price, AVG(CASE WHEN Journey_Status = 'Delayed' THEN 1 ELSE 0 END) AS Delay_Likelihood 
FROM dbo.railway 
GROUP BY Railcard;


21. How does the date of journey influence the frequency of delays?
SELECT Date_of_Journey, AVG(CASE WHEN Journey_Status = 'Delayed' THEN 1 ELSE 0 END) AS Delay_Likelihood 
FROM dbo.railway
GROUP BY Date_of_Journey;

22. What are the most popular routes based on the number of transactions?
WITH departure_stat AS (
SELECT Departure_station,
COUNT(*) AS frequency_departure
FROM dbo.railway
GROUP BY Departure_station),

arrival_stat AS (
SELECT Arrival_Destination,
COUNT(*) AS frequency_arrival
FROM dbo.railway
GROUP BY Arrival_Destination
)
 SELECT departure_stat.Departure_station,
       departure_stat.frequency_departure,
       arrival_stat.Arrival_Destination,
       arrival_stat.frequency_arrival
FROM departure_stat
FULL OUTER JOIN  arrival_stat 
ON departure_stat.Departure_Station = arrival_stat.Arrival_Destination
ORDER BY departure_stat.frequency_departure DESC, arrival_stat.frequency_arrival DESC;

 How does the journey status vary by the day of the week?
SELECT DATENAME(WEEKDAY, Date_of_Journey) AS Day_Week, 
AVG(CASE WHEN Journey_Status = 'Delayed' THEN 1 ELSE 0 END) AS Delay_Likelihood 
FROM dbo.railway 
GROUP BY DATENAME(WEEKDAY, Date_of_Journey);

