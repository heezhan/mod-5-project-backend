class PlaylistsController < ApplicationController
    def playlist
        playlist = Playlist.create(user_id: params[:user_id], title: params[:title]) 

        render json: playlist
    end 
end
