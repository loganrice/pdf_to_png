class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :client_address
      t.string :client_city
      t.string :client_first_name 
      t.date :initial_contact_date  
      t.time :client_contact_time  
      t.string :gender 
      t.date :retained_services_date  
      t.time :retained_services_time
      t.string :client_zip_code  
      t.string :client_state 
      t.string :client_claim_number  
      t.text :notes 

      t.timestamps
    end
  end
end
