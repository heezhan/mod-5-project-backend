Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/episode', to: "episodes#test"
  get '/podcast', to: "podcasts#test"
  post '/search', to: "listen_notes#search"
end
