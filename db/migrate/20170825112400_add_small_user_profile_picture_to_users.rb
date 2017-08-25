class AddSmallUserProfilePictureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :smallUserProfilePicture, :string,:default => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWJvSufpWSL8GwKt83vrdZ8le_tbA8RdwBAO1EHs-Ats-e9qGux-PZxdM"
  end
end
