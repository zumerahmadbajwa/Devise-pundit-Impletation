class HomePagesPolicy < ApplicationPolicy
    
    def homepage?
    end

    def dashboard?
      user.email.match?("zumerahmad02@gmail.com")
    end

end