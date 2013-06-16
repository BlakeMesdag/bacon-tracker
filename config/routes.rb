BaconTracker::Application.routes.draw do
  resources :bacons

  root to: "bacons#index"
end
