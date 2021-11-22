# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
# Learn more: http://github.com/javan/whenever

# To update  whenever --update-crontab
# You can list installed cron jobs using crontab -l.

# Runs every day at 9:00 AM

every :day, at: ["9:00 AM"] do
   rake "db:daily_report:create_files"
end


# every 1.minute do
#   rake "db:daily_report:create_files"
# end

