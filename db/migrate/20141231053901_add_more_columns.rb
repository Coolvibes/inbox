class AddMoreColumns < ActiveRecord::Migration
  def change

  	add_column :inbox_receivers, :receiver_email_id, :integer
  end
end
