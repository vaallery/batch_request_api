module BatchRequestApi
  class Railtie < Rails::Railtie
    initializer "batch_request_api.insert_middleware" do |app|
      app.config.middleware.insert_after Rack::Deflater, BatchRequestApi::Middleware
    end
  end
end
