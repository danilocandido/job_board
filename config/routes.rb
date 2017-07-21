Rails.application.routes.draw do

	root 'jobs#premium'

	get 'jobs/premium' # http://guides.rubyonrails.org/routing.html#crud-verbs-and-actions
	delete 'comments/:id' => 'comments#destroy', as: :comment

  	resources :jobs do
  		post 'comments' => 'comments#create'
  	end

  	get 'hello/world'

  	
end
