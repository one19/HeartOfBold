# == Route Map
#
#                   Prefix Verb   URI Pattern                     Controller#Action
#                   biomes GET    /biomes(.:format)               biomes#index
#                          POST   /biomes(.:format)               biomes#create
#                new_biome GET    /biomes/new(.:format)           biomes#new
#               edit_biome GET    /biomes/:id/edit(.:format)      biomes#edit
#                    biome GET    /biomes/:id(.:format)           biomes#show
#                          PATCH  /biomes/:id(.:format)           biomes#update
#                          PUT    /biomes/:id(.:format)           biomes#update
#                          DELETE /biomes/:id(.:format)           biomes#destroy
#                    rooms GET    /rooms(.:format)                rooms#index
#                          POST   /rooms(.:format)                rooms#create
#                 new_room GET    /rooms/new(.:format)            rooms#new
#                edit_room GET    /rooms/:id/edit(.:format)       rooms#edit
#                     room GET    /rooms/:id(.:format)            rooms#show
#                          PATCH  /rooms/:id(.:format)            rooms#update
#                          PUT    /rooms/:id(.:format)            rooms#update
#                          DELETE /rooms/:id(.:format)            rooms#destroy
#                   titles GET    /titles(.:format)               titles#index
#                          POST   /titles(.:format)               titles#create
#                new_title GET    /titles/new(.:format)           titles#new
#               edit_title GET    /titles/:id/edit(.:format)      titles#edit
#                    title GET    /titles/:id(.:format)           titles#show
#                          PATCH  /titles/:id(.:format)           titles#update
#                          PUT    /titles/:id(.:format)           titles#update
#                          DELETE /titles/:id(.:format)           titles#destroy
#                abilities GET    /abilities(.:format)            abilities#index
#                          POST   /abilities(.:format)            abilities#create
#              new_ability GET    /abilities/new(.:format)        abilities#new
#             edit_ability GET    /abilities/:id/edit(.:format)   abilities#edit
#                  ability GET    /abilities/:id(.:format)        abilities#show
#                          PATCH  /abilities/:id(.:format)        abilities#update
#                          PUT    /abilities/:id(.:format)        abilities#update
#                          DELETE /abilities/:id(.:format)        abilities#destroy
#              projectiles GET    /projectiles(.:format)          projectiles#index
#                          POST   /projectiles(.:format)          projectiles#create
#           new_projectile GET    /projectiles/new(.:format)      projectiles#new
#          edit_projectile GET    /projectiles/:id/edit(.:format) projectiles#edit
#               projectile GET    /projectiles/:id(.:format)      projectiles#show
#                          PATCH  /projectiles/:id(.:format)      projectiles#update
#                          PUT    /projectiles/:id(.:format)      projectiles#update
#                          DELETE /projectiles/:id(.:format)      projectiles#destroy
#                     guns GET    /guns(.:format)                 guns#index
#                          POST   /guns(.:format)                 guns#create
#                  new_gun GET    /guns/new(.:format)             guns#new
#                 edit_gun GET    /guns/:id/edit(.:format)        guns#edit
#                      gun GET    /guns/:id(.:format)             guns#show
#                          PATCH  /guns/:id(.:format)             guns#update
#                          PUT    /guns/:id(.:format)             guns#update
#                          DELETE /guns/:id(.:format)             guns#destroy
#               characters GET    /characters(.:format)           characters#index
#                          POST   /characters(.:format)           characters#create
#            new_character GET    /characters/new(.:format)       characters#new
#           edit_character GET    /characters/:id/edit(.:format)  characters#edit
#                character GET    /characters/:id(.:format)       characters#show
#                          PATCH  /characters/:id(.:format)       characters#update
#                          PUT    /characters/:id(.:format)       characters#update
#                          DELETE /characters/:id(.:format)       characters#destroy
#         new_user_session GET    /users/sign_in(.:format)        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)       devise/sessions#destroy
#            user_password POST   /users/password(.:format)       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)  devise/passwords#edit
#                          PATCH  /users/password(.:format)       devise/passwords#update
#                          PUT    /users/password(.:format)       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)         devise/registrations#cancel
#        user_registration POST   /users(.:format)                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)           devise/registrations#edit
#                          PATCH  /users(.:format)                devise/registrations#update
#                          PUT    /users(.:format)                devise/registrations#update
#                          DELETE /users(.:format)                devise/registrations#destroy
#                    about GET    /about(.:format)                pages#about
#                     root GET    /                               pages#home
#

Rails.application.routes.draw do
  get "about/" => "pages#about"
  root to: "pages#home"
  
  get "biomes/ids" => "biomes#ids"
  resources :biomes
  get "rooms/ids" => "rooms#ids"
  resources :rooms
  get "titles/ids" => "titles#ids"
  resources :titles
  get "abilities/ids" => "abilities#ids"
  resources :abilities
  get "projectiles/ids" => "projectiles#ids"
  resources :projectiles
  get "guns/ids" => "guns#ids"
  resources :guns
  get "characters/user" => "characters#user"
  get "characters/enemies" => "characters#enemies"
  get "characters/ids" => "characters#ids"
  resources :characters
  devise_for :users
end
