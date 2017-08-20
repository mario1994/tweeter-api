FactoryGirl.define do
  factory :tweet do
    tweetAuthor { Faker::Lorem.word }
    tweetAuthorTag { Faker::Lorem.word }
    tweetTime { Faker::Number.number(10) }
    tweetText { Faker::Lorem.sentences }
    tweetImageURL { https://res.cloudinary.com/sfp/image/upload/oth/FunimationStoreFront/1328034/Latvian/1328034_Latvian_ShowMasterKeyArt_df17787d-7178-e711-8175-020165574d09.jpg}
    tweetReply { Faker::Number.number(10) }
    tweetForward { Faker::Number.number(10) }
    tweetLove { Faker::Number.number(10) }
  end
end