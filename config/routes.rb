Rails.application.routes.draw do
  resources :nikah_entries
  devise_for :users
  resources :nikah_certificates 
   # resources :pdf_download, shallow: true
 # end
  resources :brides
  resources :grooms
  root 'home#index'

  # get 'pdf_download' ,to: "nikah_certificates#pdf_download"
  
  # get 'pdf_download' ,to: "nikah_entries#pdf_download"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
