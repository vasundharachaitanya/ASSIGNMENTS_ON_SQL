# ASSIGNMENTS_ON_SQL
Assignment_Friends:
        Here i have created a table friends and i have done the commands of DML and DDL.
        /*
        - create a table name friends with three columns,
        id that stores INTEGER
        name that stores TEXT
        birthday that stores DATE


        - add a record name john doe whose birthday 1996-08-30

        - view the table using select

        - Now add two of your any friends you like.

        - change the name of the first friend called 'john doe' to 'Luis Johnson'

        - add a new column called email

        - Update the email address for everyone in your table.
          Luis email is luis@gmail.com

        - remove Luis from friends

        - view complete table using select
        */
        
Assingment_Museum:
         Complete the following Questions-
          1. Select the top 10 rows in the met table.
          2. How many pieces are in the American Metropolitan Art collection?
          3. Count the number of pieces where the category includes ‘celery’.
          4. Find the title and medium of the oldest piece(s) in the collection.
          5. Find the top 10 countries with the most pieces in the collection.
          6. Find the categories which are having more than 100 pieces.
          7. Count the number of pieces where the medium contains ‘gold’ or ‘silver’ and sort in descending order.
          
 Assignment_igclone:
          QUESTIONS :
          1. Find the 5 oldest users.
          2. What day of the week do most users register on?We need to figure out when to schedule an ad campaign
          3. We want to target our inactive users with an email campaign.Find the users who have never posted a photo
          4. We're running a new contest to see who can get the most likes on a single photo.WHO WON??!!
          5. Our Investors want to know..How many times does the average user post?
          HINT - total number of photos/total number of users
          6. user ranking by postings higher to lower total numbers of users who have posted at least one time.
          7. A brand wants to know which hashtags to use in a post. What are the top 5 most commonly used hashtags?
          8. We have a small problem with bots on our site..Find users who have liked every single photo on the site (SUBQUERY)
          9. We also have a problem with celebrities. Find users who have never commented on a photo.

Assignment_churn:
        Task Questions:
                Understanding the Data
                1. Select the first 100 rows of the data in the codebytes table.
                2. Which months will you be able to calculate churn for? Check the range of months of data provided on subscription start.
                    CHURN ANALYSIS
                3. You’ll be calculating the churn rate for both segments (87 and 30) over the first 3 months of 2017 (you can’t calculate it for December,since there are no                                 subscription_end values yet). To get started, create a temporary table of months that contains two columns: first-day and last-day values containing the first day                        and last day of the month.
                4. Create a temporary table called cross_join, from table codebytes and your months. Be sure to SELECT every column.
                5. Create a temporary table, status, from the cross_join table you created. This table should contain:
                    id selected from cross_join
                    month as an alias of first_day
                    is_active_87 created using a CASE WHEN to find any users from segment 87 who existed prior to the beginning of the month. This is 1 if true and 0 otherwise.                              is_active_30 created using a CASE WHEN to find any users from segment 30 who existed prior to the beginning of the month. This is 1 if true and 0 otherwise.
                6. Add an is_canceled_87 and an is_canceled_30 column to the status temporary table. This should be 1 if the subscription is canceled during the month and 0 otherwise.
                7. Create a status_aggregate temporary table that is a SUM of the active and canceled subscriptions for each segment, for each month.
                    The resulting columns should be:
                    sum_active_87
                    sum_active_30
                    sum_canceled_87
                    Sum_canceled_30
                8. Calculate the churn rates for the two segments over the three month period. Which segment has a lower churn rate?
                
            
Assignment_lecab:
          Topics covered: JOINS, clauses and operators.

            First copy all the commands given in lecab.txt file and run in your mysql workbench, this will create whole schema and add relevant data. youcan view schema though reverse               engineer option.

    QUESTIONS :

            1. First examine all the tables, trips, riders, cars.
            2. check the pk and fk of the tables.
            3. Do cross join in riders and cars table.
            4. using left join combine trips and riders
            5. use INNER join to combine trips and cars.
            6. Do union on riders and riders2 table.
            7. What is the average cost of trip? round it in 2 decimals.
            8. find all the riders who have used lecab less than 500 times.
            9. Write a query that finds two cars that have the highest trips_completed
