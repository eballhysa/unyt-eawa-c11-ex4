StudentRegistry::Application.routes.draw do
  resources :students
  root 'welcome#index'
end
