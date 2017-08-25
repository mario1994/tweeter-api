class AddLargeUserProfilePictureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :largeUserProfilePicture, :string ,:default => "https://www.bmw.hr/content/dam/bmw/common/all-models/m-series/x6m/2014/model-card/X6-M-F86_ModelCard.png"
  end

end
