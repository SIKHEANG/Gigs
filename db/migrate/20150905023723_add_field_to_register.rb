class AddFieldToRegister < ActiveRecord::Migration
  def change
    add_column :registers, :address, :string
    add_column :registers, :phone, :string
  end
end
