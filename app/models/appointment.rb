class Appointment < ActiveRecord::Base
    validates :timeslot, uniqueness: {scope: :date} #this will return a validation error if an oppointment exists with the same date and timeslot
    belongs_to :user
    has_one :option
    

end
