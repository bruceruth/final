## AppointmentObserver < ActiveRecord::Observer
##
## Version 1
##
## 14/07/2016
##
## @reference Tutorial on Design Patterns - Observer Pattern
## @author Adriana Chis
##


require 'my_logger'

class AppointmentObserver < ActiveRecord::Observer
    def after_create(record)
        # use the MyLogger instance method to retrieve the single instance/object of the class
        @logger = MyLogger.instance

##        
## @author Ruth Stephenson X15009335
## Modified message with parameters from Appointments
##
        # use the logger to log/record a message about the updated car
        @logger.logInformation("*AppointmentObserver: }")
        @logger.logInformation(" Appointment made on: #{record.date}. Time#{record.timeslot} No. of People:#{record.numpeople}. Price: #{record.numpeople*5}")
        @logger.logInformation(" Customer Name: #{record.name}. Customer Phone#{record.phone} Customer Email:#{record.email}")
        @logger.logInformation("--------------------------------------------------------------------------------------------------------------------------------------------")

    end
end
