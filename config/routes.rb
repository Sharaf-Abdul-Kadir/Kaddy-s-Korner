Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users
  resources :sessions
  resources :desserts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get 'menu_list' => 'pages#menu'
  get 'about_us' => 'pages#about'
  get 'book_a_table' => 'pages#booking'
  get 'contact_us' => 'pages#contact'
  get 'home' => 'posts#index'
  get 'categories_new' => 'categories#new'
  get 'dishes_new' => 'dishes#new'
  get 'dishes_index' => 'dishes#index'
  post 'dishes_create' => 'dishes#create'
  post 'categories_create' => 'categories#create'
  get 'categories_create' => 'categories#new'
  get 'starters_list' => 'pages#starters'
  get 'maincourse_list' => 'pages#maincourse'
  get 'desserts_list' => 'pages#desserts'
  get 'desserts_menu_list' => 'pages#desserts_menu'
  get 'new_dessert' => 'desserts#new'
  post 'users' => 'users#create'
  get 'login' => 'sessions#new'
  get 'registration' => 'login#registration'
  post 'new_signup' => 'login#new_signup'
  get 'delete_dishes' => 'dishes#destroy'
  get 'delete_categories' => 'categories#destroy'
  get 'veg_starters' => 'pages#veg_starters'
  get 'n_v_starters' => 'pages#n_v_starters'
  get 'v_m' => 'pages#v_m'
  get 'n_v_m' => 'pages#n_v_m'
  get 'destroy_admin_user_session' => 'destroy_admin_user_session'
  get 'view_post/:id' => 'comments#view_post'
  get 'new_post' => 'posts#new_post'
  get 'new_user' => 'users#new_user'
  resources :posts do
    resources :comments
  end

end
