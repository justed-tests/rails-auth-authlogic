# everyone loves magic
class AddMagicToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :login_count, :integer, null: false, default: 0
    add_column :users, :failed_login_count, :integer, null: false, default: 0

    add_column :users, :last_requested_at, :datetime
    add_column :users, :current_login_at, :datetime
    add_column :users, :last_login_at, :datetime
    add_column :users, :current_login_ip, :datetime
    add_column :users, :last_login_ip, :datetime
  end
end
