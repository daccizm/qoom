class MailController < ApplicationController
  skip_before_filter :authenticate_user!

  def create
    begin
	  room = Room.find_by_account( params[:headers][:Subject] )
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
