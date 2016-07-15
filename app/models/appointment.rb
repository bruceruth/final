class Appointment < ActiveRecord::Base
    validates :timeslot, uniqueness: {scope: :date} #this will return a validation error if an oppointment exists with the same date and timeslot
    belongs_to :user
    has_many :options
    
    def self.search(search_for)
        #Appointment.where('name = ?', search_for)
        Appointment.where('date = ?', search_for)
    end


end
