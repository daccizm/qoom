class MailController < ApplicationController
  require 'mail'
  skip_before_filter :authenticate_user!, :verify_authenticity_token

  def create
    # message = Mail.new(params[:message])
    # puts "*********************************"
    # puts message.inspect
    # puts "*********************************"

    # body = ""
    # encoding = ""
    # has_plain_text = false;
    # has_html_text = false;

    # message.body.to_s.split("\n").each {|m|
 
    #   if m =~ /charset=.*/
    #     encoding = $&.gsub("charset=","")
	   #  puts encoding
	   #  puts "1 *********************************"
    #   end
    #   unless m.index("text/plain") == nil
    #     has_plain_text = true
	   #  puts "2 *********************************"
    #   end
    #   unless m.index("text/html") == nil
    #     has_html_text = true
	   #  puts "3 *********************************"
    #   end
    #   #debug
    #   puts m
 
    #   if m.index("Content-Type") == nil
    #     if m.index("Content-Transfer-Encoding") == nil
    #       if m.index(/\-\-[0-9a-z]*/) == nil
    #         body += m unless has_plain_text && has_html_text
    #  	    puts "4 *********************************"
    #       end
    #     end
    #   end
    # }
    # unless body.encoding.to_s == "UTF-8"
    #   body = body.encode("UTF-8")
    #   encoding = encoding.encode("UTF-8")
    #   puts body
    #   puts encoding
    #   puts "5 *********************************"
    # end
 
    begin
      #debug
      puts "start"
      puts params[:headers][:Subject]
      puts params[:plain]
	  room = Room.find_by_account( params[:headers][:Subject] )
      question = room.questions.new(:content => params[:plain] )
      if question.save
        puts "OK"
        render :text => "ok"
      else
        puts "NG"
        render :text => "fail to save"
      end
    rescue => e
      puts "raise"
      render :text => "some error has occurred"
    end

  end

end
