class DeviseCreateDeviseUsers < ActiveRecord::Migration
  def self.up
    create_table(:devise_users) do |t|
      t.database_authenticatable :null => false
      #t.confirmable
      t.recoverable
      t.rememberable
      t.trackable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both

      t.timestamps
    end

    add_index :devise_users, :email,                :unique => true
#    add_index :devise_users, :confirmation_token,   :unique => true
    add_index :devise_users, :reset_password_token, :unique => true
    # add_index :devise_users, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :devise_users
  end
end
