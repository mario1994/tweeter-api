# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
	tweet_list = [
  [ "Mario Boban", "@MBoban",1503843326,"probni text he he he","https://res.cloudinary.com/sfp/image/upload/c_fill,q_60/oth/FunimationStoreFront/1676657/English/1676657_English_ShowDetailHeaderDesktop_e6d686e9-4081-e711-8175-020165574d09.jpg",0,0,0,"http://www.publishwithprasen.com/wp-content/uploads/2014/09/front-profile-small.jpg"],
  [ "Mario Boban", "@MBoban",1503843326,"probni text he he he","https://res.cloudinary.com/sfp/image/upload/c_fill,q_60/oth/FunimationStoreFront/1676657/English/1676657_English_ShowDetailHeaderDesktop_e6d686e9-4081-e711-8175-020165574d09.jpg",0,0,0,"http://www.publishwithprasen.com/wp-content/uploads/2014/09/front-profile-small.jpg"],
  [ "Mario Boban", "@MBoban",1503843326,"probni text he he he","https://res.cloudinary.com/sfp/image/upload/c_fill,q_60/oth/FunimationStoreFront/1676657/English/1676657_English_ShowDetailHeaderDesktop_e6d686e9-4081-e711-8175-020165574d09.jpg",0,0,0,"http://www.publishwithprasen.com/wp-content/uploads/2014/09/front-profile-small.jpg"],
  [ "Mario Boban", "@MBoban",1503843326,"probni text he he he","https://res.cloudinary.com/sfp/image/upload/c_fill,q_60/oth/FunimationStoreFront/1676657/English/1676657_English_ShowDetailHeaderDesktop_e6d686e9-4081-e711-8175-020165574d09.jpg",0,0,0,"http://www.publishwithprasen.com/wp-content/uploads/2014/09/front-profile-small.jpg"]
]

tweet_list.each do |tweetAuthor,tweetAuthorTag,tweetTime,tweetText,tweetImageURL,tweetReply,tweetForward,tweetLove,smallAuthorProfilePicture|
  Tweet.create( tweetAuthor: tweetAuthor, tweetAuthorTag: tweetAuthorTag ,tweetTime: tweetTime,tweetText: tweetText, tweetImageURL: tweetImageURL,tweetReply: tweetReply,tweetForward: tweetForward,tweetLove: tweetLove,smallAuthorProfilePicture: smallAuthorProfilePicture)
end
#   Character.create(name: 'Luke', movie: movies.first)
