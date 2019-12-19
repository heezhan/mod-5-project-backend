# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


## User ##
heejae = User.find_or_create_by(username: "heejae", password_digest: "password")
graham = User.find_or_create_by(username: "graham", password_digest: "password")

## Episode ##
welcome_to_ageless = Episode.find_or_create_by(
    api_id:"64f3f2d8691448ae8c914447f62e7a74",  
    thumbnail:"https://cdn-images-1.listennotes.com/podcasts/ageless-kit-keenan-C4UXObIx0Re-w9UQt6odFE8.300x300.jpg",
    image:"https://cdn-images-1.listennotes.com/podcasts/ageless-kit-keenan-C4UXObIx0Re-w9UQt6odFE8.300x300.jpg",
    podcast_title_original:"Ageless",
    title_original:"Welcome to Ageless!",
    publisher_original:"Kit Keenan",
    description_original:"Mother-Daughter podcast with Cynthia Rowley and Kit Keenan. We explore fashion, business, wellness, and motherhood through the lens of our adventures around the world.",
    audio:"https://www.listennotes.com/e/p/64f3f2d8691448ae8c914447f62e7a74/"
    )

## Playlist ##
playlist1 = Playlist.find_or_create_by(user: heejae, title: "Morning Commute Playlist")
playlist2 = Playlist.find_or_create_by(user: heejae, title: "Shower Playlist")

## PlaylistEpisode ##
playlist_episode1 = PlaylistEpisode.find_or_create_by(playlist: playlist1, episode: welcome_to_ageless)