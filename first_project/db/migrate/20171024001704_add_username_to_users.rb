class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column(:users, :username, :string, uniqueness: true, presence: true)
  end
end
