class AddBkNagiosToService < ActiveRecord::Migration
  def change
    add_column :services, :bk_nagios, :boolean
  end
end
