class Episode < ApplicationRecord
    has_many :playlist_episodes
    has_many :playlists, through: :playlist_episodes
end
