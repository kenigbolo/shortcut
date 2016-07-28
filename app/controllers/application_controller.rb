class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  config.relative_url_root = ""
end
