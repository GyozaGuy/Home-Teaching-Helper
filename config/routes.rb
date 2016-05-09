Rails.application.routes.draw do
  root to: 'district#index'
  get '/assignments' => 'assignment#index'
  get '/companionships' => 'companionship#index'
  get '/districts' => 'district#index'
end
