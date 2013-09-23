class MailController < ApplicationController
  skip_before_filter :authenticate_user!, :login_required, :verify_authenticity_token

  def create
    begin
	  room = Cooperation.find_by_account( params[:headers][:Subject] ).room
      room.questions.new(:content => params[:plain] )
      if room.save
        render :text => "ok"
      else
        render :text => "fail to save"
      end
    rescue => e
      render :text => "some error has occurred"
    end
  end

end
