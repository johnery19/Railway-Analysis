# Railway-Analysis
![](image.jpg)
## Introduction
Public transportation services, such as railways, are critical for urban mobility. Ensuring timely journeys is essential for customer satisfaction and operational efficiency. Analyzing the patterns of journey delays can help in identifying trends and making informed decisions to enhance service reliability.

# Statement of the Problem
Delays in train journeys can significantly impact passenger satisfaction and operational efficiency. Understanding how journey delays vary by the day of the week can provide insights into potential patterns and factors contributing to these delays. This analysis aims to identify which days have higher or lower probabilities of delays, enabling better scheduling and resource allocation.

# Data Description
The data used for this analysis is stored in a table named dbo.railway in the Microsoft SQL Server database. The relevant columns in the dataset are:
Transaction ID, Date of Purchase, Time of Purchase, Purchase Type, Payment Method, Railcard, Ticket Class, Ticket Type, Price, Departure Station, Arrival Destination, Date of Journey
Departure Time, Arrival Time, Actual Arrival Time, Journey Status, Reason for Delay

# Aim of Analysis
The analysis aims to provide insights into the operational performance and customer behavior of the railway service by examining factors such as journey status, purchase methods, ticket classes, departure and arrival stations, and reasons for delays. The analysis aims to identify patterns and trends, enhance customer experience, improve operational efficiency, inform strategic decisions, optimize resource management, boost sales and revenue, and prioritize improvements. Weather, signal failure, technical issues, staffing, weather conditions, staff shortage, and traffic are the top three reasons for delays.

# Insight
- Station purchases have the highest average price at 27, while online purchases have a lower average price of 20.
- Most journeys are on time, indicating good overall punctuality.
- The most popular payment method is credit card (3076 transactions), followed by debit card (372), with contactless being the least popular (141).
- **Standard** class tickets are more popular than first-class tickets.
- London Kings Cross is the most popular departure station, while Bristol Temple Meads is the least popular.
- Advance ticket types are preferred by most customers and are always on time, over off-peak and Anytime ticket types.
- Weather (995 occurrences), signal failure (970), and technical issues (707) are the top three reasons for delays.
Other significant reasons include staffing (410), weather conditions (377), staff shortage (399), and traffic (314).
- Leeds has an average delay of 65 minutes (1 hour 5 minutes).
- **Birmingham New Street** is the most popular arrival station, while **Wakefield** is the least popular.
- **Manchester Piccadilly** is the **most** popular departure station, reinforcing its significance in the network.
- **Bristol Temple Meads** remains the **least** popular departure station.

  # Recommendation
  The railway service should consider offering discounts for online purchases to balance distribution and increase sales. To improve delays, invest in weather-resistant infrastructure, upgrade signal systems, and address staffing issues. Promote contactless payments through targeted promotions. Enhance customer experience for popular routes, promote Advance ticket types, and address delay hotspots. Leverage popularity for stations like Birmingham New Street and Manchester Piccadilly, and consider targeted improvements for less popular stations. Regularly collect and analyze customer feedback, examine seasonal trends, and monitor competitor strategies to stay competitive. Implementing these recommendations can improve operational efficiency, customer satisfaction, and reliability.
