class AddSignupTokenToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :signup_token, :string
  end
end
