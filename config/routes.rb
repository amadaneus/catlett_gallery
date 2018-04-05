Rails.application.routes.draw do
  get 'upload' => 'images#new', :as => 'upload'

  get 'images/create'

  get 'images/destroy'

  get 'images/index'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/show'

  resources :images, :categories

  mount Ckeditor::Engine => '/ckeditor'
  root to: "images#index"
end
