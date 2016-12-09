Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/new'
  post 'welcome/create' =>  'welcome#create'

end
