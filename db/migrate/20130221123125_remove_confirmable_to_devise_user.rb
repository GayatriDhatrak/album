class RemoveConfirmableToDeviseUser < ActiveRecord::Migration
  def up
    remove_column :devise_users, :confirmable
  end

  def down
    add_column :devise_users, :confirmable, :string
  end
end
