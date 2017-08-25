class AddLargeUserProfilePictureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :largeUserProfilePicture, :string
  end
end
