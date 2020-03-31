require 'unirest'

class EpisodesController < ApplicationController
    def episode
        episode = Episode.find_or_create_by(
            api_id: params[:api_id], 
            podcast_id: params[:podcast_id], 
            thumbnail: params[:thumbnail], 
            image: params[:image], 
            podcast_title_original: params[:podcast_title_original], 
            title_original: params[:title_original], publisher_original: params[:publisher_original],description_original: params[:description_original], 
            audio: params[:audio]
        )

        playlist_episode = PlaylistEpisode.create(
            playlist_id: params[:playlist_id],
            episode_id: episode.id
        ) 

        render json: episode.to_json(serialize) 
    end 

    def destroy
        playlist_episode = PlaylistEpisode.find_by(playlist_id: params[:playlist_id], episode_id: params[:episode_id])

        playlist_episode.destroy 

        episode = Episode.find(params[:episode_id])

        if episode.playlists.length == 0
            # episode.destroy

            render json: episode
        else   
            render json: episode.to_json(serialize)
        end 
    end 

    private

    def serialize
        {
            :include => [:playlist_episodes, :playlists => { :include => :episodes }]
        }
    end
end
