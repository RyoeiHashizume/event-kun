class AddColumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_index  :users, :user_name, unique: true
    add_column :users, :company_number, :string
    add_column :users, :kanji, :boolean
    add_column :users, :gender, :boolen
  end
end
