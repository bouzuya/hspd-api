Rails.application.routes.draw do
  root 'hubot_scripts#index'
  resources :hubot_scripts, defaults: { format: 'json' }, only: [:index]
end
