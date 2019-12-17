require 'unirest'

class EpisodesController < ApplicationController
    def test
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/episodes/02f0123246c944e289ee2bb90804e41b",
        headers:{
            "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb"
        }

        render json: response.body
    end 
end
