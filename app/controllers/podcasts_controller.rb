require 'unirest'

class PodcastsController < ApplicationController
    def test
        response = Unirest.get "https://listen-api.listennotes.com/api/v2/podcasts/4d3fe717742d4963a85562e9f84d8c79?next_episode_pub_date=1479154463000&sort=recent_first",
        headers:{
        "X-ListenAPI-Key" => "b45a2e37fb084a6ebc1035393a023abb",
        }

        render json: response.body
    end 
end
