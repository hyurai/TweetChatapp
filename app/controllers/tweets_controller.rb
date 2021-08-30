class TweetsController < ApplicationController
  def index
      @tweets = Tweet.all
  end
  def create
       tweet = Tweet.create(user_id: params[:user_id],text: params[:text])
       redirect_to '/tweets'
  end
end
