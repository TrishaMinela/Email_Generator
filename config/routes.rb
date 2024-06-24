Rails.application.routes.draw do
  root 'emails#new'
  post 'generate_email', to: 'emails#generate'
end
