class MessagesController < ApplicationController
    def create
        chat = Message.create(chat_id: params[:chat_id],admin_id: params[:admin_id],user_id: params[:user_id],text: params[:text])
        redirect_to '/tweets'
    end
end
