## MyLogger
##
## Version 1
##
## 14/07/2016
##
## @reference Tutorial on Design Patterns - Observer Pattern
## @author Adriana Chis
##


require 'singleton'

class MyLogger
  include Singleton
  
  def initialize
    @log = File.open("mylog.txt", "a")
  end

  def logInformation(information)
    @log.puts(information)
    @log.flush
  end

end