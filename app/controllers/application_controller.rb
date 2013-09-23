class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :initialize_demand, :authenticate_user!
  before_filter :login_required, :unless => :devise_controller?

  def initialize_demand
    @demand = Demand.new
  end

  def login_required
  	return unless params[:user_id]
  	if current_user.id.to_s != params[:user_id]
  		reset_session
  		sign_out current_user
  		redirect_to :root
  	end
  end

end
