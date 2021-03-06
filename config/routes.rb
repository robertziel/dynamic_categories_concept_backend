Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, path: '/api' do
    mount RootApi, at: '/'
    mount GrapeSwaggerRails::Engine => '/docs'
  end
end
