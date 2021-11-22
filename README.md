## Ruby Rating App 

# Ruby Version 
  + ruby-2.6.6


# Has Four Tables 
 + User     [ Column Name are "name" and "api_key"]
 + Rate 	   [ Column Name are  "post_id" and "value" ]
 + Post     [ Column Name are "title",  "content", "ip_address" and "user_id" ]
 + Feedback [ Column Name are  "post_id", "owner_id" and "comment" ]

# CronJob
  To Generate an xml file with all feedbacks at 9:00 AM Everday

 

# Go generate DataBase 
 Run: rake db:seed