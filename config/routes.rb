Rails.application.routes.draw do
  root "pages#index"

  get "/runner_ducks" => "pages#runner_ducks"
end
