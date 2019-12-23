class UsersController < ApplicationController
    def login
        user = User.find_by(username: params[:username])

        if user && (user.password_digest == params[:password])
            render json: user.to_json(serialize)
        else 
            render json: {message: "Incorrect username and/or password"}
        end 

    end 

    private

    def serialize
        {
            :include => { :playlists => { :include => [:playlist_episodes, :episodes => { :include => [:playlist_episodes, :playlists] }] } },
            :only => [:username, :id]
        }
    end
end
