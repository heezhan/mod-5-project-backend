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

## Podcast ##
ageless = Podcast.find_or_create_by(
    api_id: "4d3fe717742d4963a85562e9f84d8c79",
    thumbnail: "https://cdn-images-1.listennotes.com/podcasts/star-wars-7x7-star-wars-news-interviews-and-AIg3cZVKCsL.300x300.jpg",
    image: "https://cdn-images-1.listennotes.com/podcasts/star-wars-7x7-star-wars-news-interviews-and-AIg3cZVKCsL.1400x1400.jpg",
    title: "Star Wars 7x7 | Star Wars News, Interviews, and More!",
    publisher: "Star Wars Daily, by Allen Voivod",
    country: "United States",
    language: "English",
    description: "The Star Wars 7x7 Podcast is Rebel-rousing fun for everyday Jedi, between 7 and 14 minutes a day, 7 days a week. Join host Allen Voivod for Star Wars news, history, interviews, trivia, and deep dives into the Star Wars story as told in movies, books, comics, games, cartoons, and more. Subscribe now for your daily dose of Star Wars joy. It's destiny unleashed! #SW7x7",
    total_episodes: 1838
)

## Episode ##
welcome_to_ageless = Episode.find_or_create_by(
    api_id:"64f3f2d8691448ae8c914447f62e7a74",  
    podcast: ageless,
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