## Message < ActiveRecord::Base
##
## Version 1
##
## 02/07/2016
##
## @reference Rails auto-generated code
## @author Ruth Stephesnon x5009335
##

class Message < ActiveRecord::Base
    
## @author Ruth Stephesnon x5009335
## Added validations
    #validates that these fields can't be empty
    validates_presence_of :name, :subject, :body
    
    #Validate email so it starts with non-white-space charatcers
    #should have an @ symbol and after @ should have "."
    #then it should have more non-white-space characters
    validates_format_of :email, :with => /\A(\S+)@(\S+)\.(\S+)\z/

end
