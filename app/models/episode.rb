class Episode < ApplicationRecord
    belongs_to :podcast
    has_many :playlist_episodes
    has_many :playlists, through: :playlist_episodes
end
