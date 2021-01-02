require("cronR")
# list the contents of a crontab
cron_ls()
# list the full path of where the rscript is located
path = "/Volumes/3TB/R/getUnusualOptionActivity.R"
# Create a command to execute an R-script
cmd = cron_rscript(path)
# add the command and specify the days/times to start
cron_add(command= cmd, frequency = 'daily', at="17:00", days_of_week = c(1:5),
          id = 'UnusualOptionsActivity', description = 'Unusual Option Activity')
# remove it by 'id'
cron_rm(id = "UnusualOptionsActivity")


# cron schedule for days of the week:
# 0 - Sunday
# 1 - Monday
# 2 - Tuesday
# 3 - Wednesday
# 4 - Thursday
# 5 - Friday
# 6 - Saturday
# 7 - Sunday