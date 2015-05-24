class RemovePictureFromClaims < ActiveRecord::Migration
  def change
    remove_column :claims, :picture 
  end
end
