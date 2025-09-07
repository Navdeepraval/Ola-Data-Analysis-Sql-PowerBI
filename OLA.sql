Use Ola;

# 1. Retrieve all successful bookings:
-- create View Successful_Bookings As
-- SELECT *FROM bookings
-- WHERE Booking_Status = 'Success';
#THEN
select * from Successful_Bookings;

# 2. Find the average ride distance for each vehicle type:
-- create view ride_distance_for_each_vehicle as
-- Select Vehicle_Type, avg(Ride_Distance) as Avg_Distance 
-- from bookings
-- group by Vehicle_Type;
#THEN
select * from ride_distance_for_each_vehicle;

# 3. Get the total number of cancelled rides by customers:
-- create view Canceled_Rides_by_Customer as
-- select count(*)
-- from bookings
-- where booking_status = 'Canceled by Customer';
#THEN
select * from Canceled_Rides_by_Customer;

# 4. List the top 5 customers who booked the highest number of rides:
-- create view Top_5_Customers as
-- select Customer_ID, count(Booking_ID) as Total_Rides
-- from bookings
-- group by Customer_ID order by Total_Rides desc limit 5;
#THEN
select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
-- create view Canceled_Rides_by_Driver as
-- select count(*)
-- from bookings
-- where Canceled_Rides_by_Driver = 'Personal & Car related issue';
#THEN
select * from Canceled_Rides_by_Driver;

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
-- create view driver_ratings_for_Prime_Sedan as
-- select Vehicle_Type, max(Driver_Ratings) As MAX_Driver_Ratings, min(Driver_Ratings) As MIN_Driver_Ratings
-- from bookings where Vehicle_Type = 'Prime Sedan';
#THEN
select * from driver_ratings_for_Prime_Sedan;

# 7. Retrieve all rides where payment was made using UPI:
-- create view UPI_Payment as
-- select * from bookings
-- where Payment_Method = 'UPI';
#THEN
select * from UPI_Payment;

# 8. Find the average customer rating per vehicle type:
-- create view AVG_Customer_Rating as
-- select Vehicle_Type, round(avg(Customer_Rating),2) as AVG_Customer_Rating
-- from bookings
-- group by Vehicle_Type order by AVG_Customer_Rating desc ;
#THEN
select * from AVG_Customer_Rating;

# 9. Calculate the total booking value of rides completed successfully:
-- create view Total_Booking_value as
-- select sum(Booking_Value) as Total_Booking_value
-- from Bookings 
-- Where Booking_Status = 'Success';
#THEN
select * from Total_Booking_value;

# 10. List all incomplete rides along with the reason:
-- create view Incomplete_Rides_Reason as 
-- select Booking_ID,Incomplete_Rides_Reason
-- from bookings
-- where Incomplete_Rides = 'yes';
#THEN
select * from Incomplete_Rides_Reason;






