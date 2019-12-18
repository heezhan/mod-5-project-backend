class Playlist < ApplicationRecord
    belongs_to :user
    has_many :playlist_episodes
    has_many :episodes, through: :playlist_episodes
end
