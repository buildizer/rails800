class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :check_browser

private

def check_browser
  if browser.ie? || browser.safari?('<=10')
    render plain: "Your browser is not supported. Please update to a modern browser."
  end
end
end
