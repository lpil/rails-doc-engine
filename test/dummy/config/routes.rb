Rails.application.routes.draw do

  mount DocServer::Engine => "/doc_server"
end
