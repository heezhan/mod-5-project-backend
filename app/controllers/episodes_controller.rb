require 'unirest'

class EpisodesController < ApplicationController
    def test
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/episodes/02f0123246c944e289ee2bb90804e41b",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb"
        }

        render json: response.body
    end 

    def episode
        episode = Episode.create(api_id: params[:api_id], podcast_id: params[:podcast_id], thumbnail: params[:thumbnail], image: params[:image], podcast_title_original: params[:podcast_title_original], title_original: params[:title_original], publisher_original: params[:publisher_original], description_original: params[:description_original], audio: params[:audio]) 

        render json: episode
    end 
end
