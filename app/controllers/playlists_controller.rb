class PlaylistsController < ApplicationController
    def playlist
        playlist = Playlist.create(user_id: params[:user_id], title: params[:title]) 

        render json: playlist.to_json(serialize)
    end 

    private

    def serialize
        {
            :include => [:playlist_episodes, :episodes]
        }
    end
end
