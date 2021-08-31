class ChatsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @chat = @user.chat
        @messages = @chat.messages
    end
end
