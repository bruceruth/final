## User < ActiveRecord::Base
##
## Version 1
##
## 02/07/2016
##
## @reference Rails auto-generated code
##

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

## @author Ruthe Stephenson x15003995
## Added the relationships between tables, profiles is dependent on user. If user is destroyed,
##their profile is automatically destroyed
##
  has_many :appointments
  has_one :profile, dependent: :destroy
end
