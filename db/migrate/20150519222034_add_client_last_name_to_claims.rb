class AddClientLastNameToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :client_last_name, :string
  end
end
