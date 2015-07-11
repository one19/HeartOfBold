# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#                     guns GET    /guns(.:format)                guns#index
#                          POST   /guns(.:format)                guns#create
#                  new_gun GET    /guns/new(.:format)            guns#new
#                 edit_gun GET    /guns/:id/edit(.:format)       guns#edit
#                      gun GET    /guns/:id(.:format)            guns#show
#                          PATCH  /guns/:id(.:format)            guns#update
#                          PUT    /guns/:id(.:format)            guns#update
#                          DELETE /guns/:id(.:format)            guns#destroy
#               characters GET    /characters(.:format)          characters#index
#                          POST   /characters(.:format)          characters#create
#            new_character GET    /characters/new(.:format)      characters#new
#           edit_character GET    /characters/:id/edit(.:format) characters#edit
#                character GET    /characters/:id(.:format)      characters#show
#                          PATCH  /characters/:id(.:format)      characters#update
#                          PUT    /characters/:id(.:format)      characters#update
#                          DELETE /characters/:id(.:format)      characters#destroy
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              home#index
#

Rails.application.routes.draw do
  resources :guns
  resources :characters
  devise_for :users
  root to: "home#index"
end
