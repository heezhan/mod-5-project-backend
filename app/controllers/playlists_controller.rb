class PlaylistsController < ApplicationController
    def playlist
        playlist = Playlist.create(user_id: params[:user_id], title: params[:title]) 

        render json: playlist.to_json(serialize)
    end  

    def update
        playlist = Playlist.find(params[:id])
        playlist.update(title: params[:title])

        render json: playlist.to_json(serialize)
    end 

    def destroy
        playlist = Playlist.find(params[:id])
        
        playlist.destroy
        
        render json: playlist
    end 

    private

    def serialize
        {
            :include => [:playlist_episodes, :episodes]
        }
    end
end
