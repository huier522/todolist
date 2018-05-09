Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todolists do
    member do #新增成員路由
      patch :complete
    end
  end
  
  root "todolists#index"
end
