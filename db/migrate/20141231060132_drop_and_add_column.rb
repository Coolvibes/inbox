class DropAndAddColumn < ActiveRecord::Migration
  def change

  	add_column :inbox_receivers, :inbox_email_id, :integer
  	remove_column :inbox_receivers, :receiver_email_id
  end
end
