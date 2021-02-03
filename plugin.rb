# name: Setting Copier
# version: 0.1.0

enabled_site_setting :scopier_enabled

after_initialize do
    load File.expand_path('../app/controllers/scopier_controller.rb', __FILE__)
  
    Discourse::Application.routes.append do
      get '/scopier' => 'scopier#index'
    end
end