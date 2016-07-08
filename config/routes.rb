Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :teachers, only: [:index, :show]
	resources :students, only: [:index, :show, :create, :destroy]

	put '/students/:id/submit' => 'students#submit'

end
