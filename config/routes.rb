Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  get  '/bio' => 'static_pages#bio', as: :bio
  get  '/projects' => 'static_pages#projects', as: :projects

end
