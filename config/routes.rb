# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'review/index'
  get 'accomadtion/index'
  get 'posts/index'
  get 'session/index'
  get 'users/index'

  match '/index', to: 'home#index', via: :get

  match '/about', to: 'home#about', via: :get

  get '/review_save', to: 'accomadtion#review_save'

  match '/contact', to: 'home#contact', via: :get

  match '/boot', to: 'home#boot', via: :get

  match 'users/create', to: 'users#create', via: :post

  match 'session/create', to: 'session#create', via: :post

  match '/logout', to: 'session#logout', via: :get

  match '/pg', to: 'accomadtion#pg', via: :get

  match '/apartments',to: 'accomadtion#apartments', via: :get

  match '/hostel',to: 'accomadtion#hostel', via: :get

  match '/house',to: 'accomadtion#home', via: :get

  get 'baby_pg/:id', to: 'accomadtion#baby_pg'
  get 'baby_pg', to: 'accomadtion#baby_pg'

  match '/login', to: 'home#login', via: :get

  match '/signup', to: 'home#sign_up', via: :get

  match 'home/create', to: 'home#create', via: :post

  match '/addpg', to: 'accomadtion#addpg', via: :get

  match 'accomadtion/create', to: 'accomadtion#create', via: :post

  match 'shortlist/:pg_id', to: 'home#shortlist_items', via: :get

  match 'shortlist', to: 'home#shortlist', via: :get

  match '/admin', to: 'home#admin', via: :get

  match 'home/admin_access', to: 'home#admin_access', via: :post

  match '/location', to: 'accomadtion#pg', via: :get

  match '/pg/:gender',to: 'accomadtion#getResults',via: :get

  match '/pg/:gender/:room',to: 'accomadtion#getResults',via: :get
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
