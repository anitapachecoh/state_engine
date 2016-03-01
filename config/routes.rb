DomainStatus::Engine.routes.draw do
  resources :status, path: 'status.:domain', action: 'index', :constraints => { :domain => /.+/ }
end
