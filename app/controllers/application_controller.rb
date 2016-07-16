## ApplicationController < ActionController::Base
##
## Version 1
##
## 01/07/2016
##
## @reference Adriana Chis. Tutorial Devise - Section 2, 2016 
##
##

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    "/signedinuserprofile"
  end
end
