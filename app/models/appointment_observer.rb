require 'my_logger'

class AppointmentObserver < ActiveRecord::Observer
    def after_create(record)
        # use the MyLogger instance method to retrieve the single instance/object of the class
        @logger = MyLogger.instance
        # use the logger to log/record a message about the updated car
        @logger.logInformation("____________________________________________________________________________________________________________________________________________")
        @logger.logInformation("*RentalObserver*: Appointment made on: #{record.date}. Time#{record.timeslot} No. of People:#{record.numpeople}. Price: #{record.numpeople*5}")
        @logger.logInformation("*RentalObserver*: Customer Name: #{record.name}. Customer Phone#{record.phone} Customer Email:#{record.email}")
        @logger.logInformation("--------------------------------------------------------------------------------------------------------------------------------------------")

    end
end
