Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Add new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :tasks_edit
  patch 'tasks/:id', to: 'tasks#update'

  # List tasks
  get 'tasks', to: 'tasks#index'

  # Remove task
  delete 'tasks/:id', to: 'tasks#destroy'

  # Display single task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
