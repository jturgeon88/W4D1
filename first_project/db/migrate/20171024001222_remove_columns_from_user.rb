class RemoveColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_columns(:users, :name, :email)
  end
end
