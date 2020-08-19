class ApplicationController < ActionController::API

    before_action :auth_header

    def auth_header 
        request.headers['Authorization']
    end
end
