class TweetsController < ApplicationController
	before_action :set_tweet, only: [:show, :update, :destroy]

  # GET /tweets
  def index
    @tweets = Tweet.all
    json_response(@tweets)
  end

  # POST /tweets
  def create
    @tweets = Tweet.create!(tweet_params)
    json_response(@tweets, :created)
  end

  # GET /tweets/:id
  def show
    json_response(@tweet)
  end

  # PUT /tweets/:id
  def update
    @todo.update(tweet_params)
    head :no_content
  end

  # DELETE /tweets/:id
  def destroy
    @tweet.destroy
    head :no_content
  end

  private

  def tweet_params
    # whitelist params
    params.permit(:tweetAuthor, :tweetAuthorTag, :tweetTime, :tweetText,:tweetImageURL, :tweetReply, :tweetForward, :tweetLove)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end