class UsersController < ApplicationController
    def login
        user = User.find_by(username: params[:username])

        if user && (user.password_digest == params[:password])
            render json: user 
        else 
            render json: {message: "Incorrect username and/or password"}
        end 

    end 
end
