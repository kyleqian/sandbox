Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :teachers, only: [:index]
	resources :students, only: [:index, :show]

	post '/students/:id/ask_question' => 'students#ask'

end
