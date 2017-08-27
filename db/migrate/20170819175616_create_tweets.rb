class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :tweetAuthor
      t.string :tweetAuthorTag
      t.bigint :tweetTime
      t.string :tweetText
      t.string :tweetImageURL
      t.integer :tweetReply
      t.integer :tweetForward
      t.integer :tweetLove
      t.string :smallAuthorProfilePicture

      t.timestamps
    end
  end
end
