class HomePagesController < ApplicationController

    before_action :authenticate_user!, only: :dashboard

    def homepage
    end

    def dashboard
    end

    

end
