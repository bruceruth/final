## Appointment < ActiveRecord::Base
##
## Version 1
##
## 02/07/2016
##
## @reference Rails auto-generated code
## @author Ruth Stephenson, X15009335
##

class Appointment < ActiveRecord::Base
##
## @reference http://api.rubyonrails.org/classes/ActiveModel/Validations/ClassMethods.html#method-i-validate
## @author Ruth Stephenson, X1500935
##
    validates :timeslot, uniqueness: {scope: :date} #this will return a validation error if an oppointment exists with the same date and timeslot
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    
    belongs_to :user
##
## @reference Taken from Tutorial "Implementing a Search Functionality"
## @author Adriana Chis
## @author Ruth Stephenson - adapted for my own particular search.
##   
    def self.search(search_for)
        Appointment.where('name LIKE ?', "%#{search_for}%")
    end    
        
end
