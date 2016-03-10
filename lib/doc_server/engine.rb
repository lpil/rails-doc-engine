module DocServer
  class Engine < ::Rails::Engine
    isolate_namespace DocServer

    # Serve static assets
    config.middleware.use(
      ::ActionDispatch::Static, "#{root}/public"
    )
  end
end
