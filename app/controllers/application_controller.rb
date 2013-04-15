class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :initialize_demand, :authenticate_user!

  def initialize_demand
    @demand = Demand.new
  end

end
