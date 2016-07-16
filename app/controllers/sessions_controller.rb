##
## SessionsController < Devise::SessionsController
##
## Version 1
##
## 02/06/2009
##
## @ reference Tutorial on Devise
## @ author Adriana Chis
##
##

class SessionsController < Devise::SessionsController
    #after_sign_in_path_for is called by devise
    def after_sign_in_path_for(user)
        "/signedinuserprofile" # here I provide the path for the user's profile
    end 
end 