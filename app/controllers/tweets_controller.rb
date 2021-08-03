class TweetsController < ApplicationController
  
  impressionist :actions [:show]
  
  def show
    @tweet = Tweet.find(params[:id])
    impressionist(@tweet, nil, unique: [:session_hash])
  end
  
end
