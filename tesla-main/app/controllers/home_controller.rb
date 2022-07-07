class HomeController < ApplicationController
  
    def index
   
    end
    def login
	
     render layout: "loginform"
    end

    def newpage
	
     render layout: "create"
    end
    def forgotpassword
       
      
     render layout: "createpassword"
      end
      def logout
      end
      
end
