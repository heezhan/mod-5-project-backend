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
end

# "https://listen-api.listennotes.com/api/v2/search?q=#{query}&sort_by_date=0&type=episode&offset=0&len_min=10&len_max=30&published_before=1390190241000&published_after=0&only_in=title%2Cdescription&language=English&safe_mode=1"