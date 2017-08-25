class AddSmallUserProfilePictureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :smallUserProfilePicture, :string
  end
end
