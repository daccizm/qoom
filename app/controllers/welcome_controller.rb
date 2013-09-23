class WelcomeController < ApplicationController

  skip_before_filter :authenticate_user!, :login_required

  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
