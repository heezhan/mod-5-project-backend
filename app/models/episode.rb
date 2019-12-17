class Episode < ApplicationRecord
    belongs_to :podcast
    has_many :playlists, through: :playlist_episodes
end
