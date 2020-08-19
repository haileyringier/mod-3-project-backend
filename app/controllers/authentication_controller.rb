class AuthenticationController < ApplicationController
    
    skip_before_action :auth_header, only: [:login]
    
    def login 
        @user = User.find_by username: params[:username]
        
        if !@user
            render json: { error: "No user with that username"}, status: :unauthorized
        else
            if !@user.authenticate params[:password]
                render json: { error: "Bad Password"}, status: :unauthorized
            else
                payload = {
                    user_id: @user.id
                }
                secret = "Anything"
                token = JWT.encode payload, secret
                render json: { token: token}
            end
        end
    end
end
