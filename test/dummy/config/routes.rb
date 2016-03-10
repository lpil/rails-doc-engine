Rails.application.routes.draw do

  mount DocServer::Engine => "/docs"
end
