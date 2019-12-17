class Playlist < ApplicationRecord
    belongs_to :user
    has_many :episodes, through: :playlist_episodes
end
