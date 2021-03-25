Rails.application.routes.draw do

    get "/series" => "api/v1/series#index"
    get "/series/:id" => "api/v1/series#show"

    get "series/:series_id/lessons" => "api/v1/lessons#index"
    get "series/:series_id/lessons/:id" => "api/v1/lessons#show"
end
