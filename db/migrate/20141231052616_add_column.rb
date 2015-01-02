class AddColumn < ActiveRecord::Migration
  def change

  	add_column :inbox_receivers, :email_id, :integer
  end
end
