class MessagesController < ApplicationController
  before_action :set_post

  def index
    @messages = Message.all

    respond_to do |format|
      format.html 
    end
    @messages = @post.messages
    @message = Message.new
  end

  def create
    @message = @post.messages.new(message_params)

    if @message.save
      redirect_to post_messages_path(@post), notice: 'Message was successfully created.'
    else
      render :index
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
