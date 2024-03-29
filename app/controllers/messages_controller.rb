class MessagesController < ApplicationController
  
  def index
    @messages = Message.all
  end
  
  def create
    @message = Message.new(params[:message])
    @message.user = current_user
    @message.save

    redirect_to messages_path
  end
  
end
