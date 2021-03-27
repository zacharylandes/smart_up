Rails.application.routes.draw do

    get "/series" => "api/v1/series#index"
    get "/series/:id" => "api/v1/series#show"

    get "series/:series_id/lessons" => "api/v1/lessons#index"
    get "series/:series_id/lessons/:id" => "api/v1/lessons#show"
    post "series/:series_id/lessons/:id/end" => "api/v1/lessons#create"

    post 'start/:id' => "api/v1/series#create"
    post 'end/:id' => "api/v1/series#destroy"
end
