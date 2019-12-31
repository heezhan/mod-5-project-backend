require 'unirest'

class ListenNotesController < ApplicationController
    def search 
        query = params[:query]

        response = Unirest.get "https://listen-api.listennotes.com/api/v2/search?q=#{query}&sort_by_date=0&scope=episode",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb",
        }

        render json: response.body
    end 
    
    def episodedetails
        id = params[:id]

        response = Unirest.get "https://listen-api.listennotes.com/api/v2/episodes/#{id}",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb",
        }  

        render json: response.body
    end
    
    def searchpodcasts
        query = params[:query]

        response = Unirest.get "https://listen-api.listennotes.com/api/v2/search?q=#{query}&sort_by_date=0&type=podcast&only_in=title%2Cdescription&language=English&safe_mode=1",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb",
        }  

        render json: response.body
    end 

    def podcastdetails
        id = params[:id]

        response = Unirest.get "https://listen-api.listennotes.com/api/v2/podcasts/#{id}?sort=recent_first",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb",
        }  

        render json: response.body
    end 
end

