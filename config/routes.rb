Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/search', to: "listen_notes#search"
  post '/episodedetails', to: "listen_notes#episodedetails"
  post '/searchpodcasts', to: "listen_notes#searchpodcasts"
  post '/podcastdetails', to: "listen_notes#podcastdetails"
  post '/login', to: "users#login"
  post '/signup', to: "users#signup"
  post '/episode', to: "episodes#episode"
  post '/playlist', to: "playlists#playlist"
  post '/episodes/destroy', to: "episodes#destroy"
  post '/playlists/destroy', to: "playlists#destroy"
  post '/playlists/update', to: "playlists#update"

end
