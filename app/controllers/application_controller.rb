class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index,:show,:home, :contact]

  def home
    render "/home"
  end

  def contact 
    render "/contact"
  end

end
