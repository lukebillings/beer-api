Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namesapcece :api do
    namesapcece :v1 do
      get '/beers' => 'beer#index'
      get '/beers/:id' => 'beer#show'
    end
  end
end
