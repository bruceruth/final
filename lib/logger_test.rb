## lib/logger_test.rb
##
## Version 1
##
## 02/06/2016
##
## @reference Tutorial on Devise, @author Adriana Chis
##



require_relative 'my_logger'

logger = MyLogger.instance

logger.logInformation("This is the first information")
logger.logInformation("This is the second information")