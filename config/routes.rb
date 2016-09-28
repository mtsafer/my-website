Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#about'
  get  '/projects' => 'static_pages#projects', as: :projects
  get  '/resume'   => 'static_pages#resume',   as: :resume
  resources 'contacts', only: [:new, :create]
  get  '/contacts', to: redirect('/contacts/new')
  get  '/roguelike' => 'roguelike#index', as: :roguelike

end
