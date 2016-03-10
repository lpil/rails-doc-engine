DocServer::Engine.routes.draw do
  get ":id", to: "docs#show", constraints: { id: /.*/ }
end
