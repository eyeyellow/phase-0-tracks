# Ideas for 8.5:
#   Gardening calendar app:
#     Log dates for gardening - prompt user
#     Options for events to log:
#       -When the last time you watered was
#       -When seeds are planted
#       -When beds are prepared
#     -> Get reminder for watering/weeding/fertilizer
#       App generates reminders (upon being prompted)
#         By taking multiples of the intervals based on
#         averages of past data
#       - Variable frequencies of plants based on zones
#         assigned (by user) on basis of how much sun
#         the plants get
#       - somehow compound past data (avg) and set frequencies
#     Somehow cool to work with weather data

# On Ruby docs: look at - strftime([format='%F']) → string
#               check out directive strings
#   and - next_day([n=1]) → date




# ideas for methods:
#
#   -user input last time that plants by type were watered
#     -type in date, followed by flag for plant type
#       *month-day-year, flag format (v = vegetables, s = succulents, p = perennials)
#         ex)07-22-2016, s
#     -saved to db
#   -prompt user: would you like to know the next time that you should water?
#     -y/n option
#     -algorithm takes previous dates and multiplies them and calculates when next
#       how to calculate:
#         -depends on plant types
#           -vegetables: water every day
#           -succulents: water once a week
#           -perennials: water every two days
#           ***Not sure how to calculate days (Julian/ordinal?)
#
#     Date should be saved to db in different format (date object confusing to work with)
#       -get user input -> cut off plant type flag, after ","




# commands to create tables: