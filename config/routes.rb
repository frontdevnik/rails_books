Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'
  mount Api::API => '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
