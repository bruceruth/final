class Message < ActiveRecord::Base
    #validates that these fields can't be empty
    validates_presence_of :name, :subject, :body
    
    #Validate email so it starts with non-white-space charatcers
    #should have an @ symbol and after @ should have "."
    #then it should have more non-white-space characters
    validates_format_of :email, :with => /\A(\S+)@(\S+)\.(\S+)\z/

end
