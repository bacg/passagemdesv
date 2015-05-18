class AddTypeToUser < ActiveRecord::Migration
  def change
    add_reference :users, :type, index: true
    add_foreign_key :users, :types
  end
end
