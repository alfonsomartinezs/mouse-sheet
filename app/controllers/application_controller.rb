class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index,:show,:home]

  def home
    render "/home"
  end

end
